package com.lyh.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.game.protocol.gm.GmNoticeLeftHttpProtocol;
import com.game.protocol.gm.GmNoticeLeftProtocolRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmNoticeLeft;
import com.lyh.admin.properites.WeChatConfig;
import com.lyh.admin.service.OsaGmNoticeLeftService;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ShowPage;

/**
 * ClassName:NoticeboardController <br/>
 * TODO:公告栏处理 Date: 2017年10月12日 下午2:13:08 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/noticeboard")
public class NoticeboardController extends BaseController {
	@Autowired
	private OsaGmNoticeLeftService noticeLeftService;
	
	/**
	 * getNoticeboardList:(). <br/>
	 * TODO().<br/>
	 * 公告栏记录
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView getNoticeboardList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/NoticeboardList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaGmNoticeLeft> list = noticeLeftService.getNoticeLeftList();
		PageInfo<OsaGmNoticeLeft> pageInfo = new PageInfo<OsaGmNoticeLeft>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("channel", WeChatConfig.CHANNEL);
		return view;
	}
	
	/**
	 * payNoticeboardAdd:(). <br/>
	 * TODO().<br/>
	 * 公告栏增加
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/add_view")
	public ModelAndView noticeboardAdd(HttpSession session, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/NoticeboardAddView");
		List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		view.addObject("channel", WeChatConfig.CHANNEL);
		return view;
	}
	
	/**
	 * payNoticeboardAdd:(). <br/>
	 * TODO().<br/>
	 * 公告栏增加
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/add_img")
	public ModelAndView noticeboardAddImg(HttpSession session, HttpServletRequest request, @RequestParam(value = "file") MultipartFile mFile) {
		ModelAndView view = new ModelAndView("/NoticeboardAddView");
		if (this.isPost(request)) {
			String worldId = request.getParameter("worldId");
			String title = request.getParameter("title");
			
			String path = session.getServletContext().getRealPath("upload/img/");
			long startTime = System.currentTimeMillis();
			// 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
			
			// 检查form中是否有enctype="multipart/form-data"
			boolean bEnter = false;
			String content = "";
			String pathName = "";
			try {
				if (mFile != null && mFile.getSize() > 0) {
					
					File fileDir = new File(path);
					if (!fileDir.isDirectory()) {
						fileDir.mkdirs();
					}
					pathName = path + File.separator + mFile.getOriginalFilename();
					// 上传
					mFile.transferTo(new File(pathName));
					
					bEnter = true;
					
				}
				
				if (bEnter) {
					logger.error("进来了1111111" + path);
					int index = pathName.indexOf("upload");
					
					content = pathName.substring(index);
					
					logger.error("进来了.................." + content);
					OsaGameWorld gameWorld = gameWorldService.getWorldByWorldId(worldId);
					OsaGmNoticeLeft notice = new OsaGmNoticeLeft();
					notice.setAppId(gameWorld.getAppId());
					notice.setContent(File.separator +content);
					notice.setCreateTime(new Date(System.currentTimeMillis()));
					notice.setTitle(title);
					notice.setWorldId(worldId);
					String result = "";
					try {
						result = sendNoticLeft(notice);
						if (result.equals("1")) {
							result = "操作成功";
							notice.setStatus(1);
							noticeLeftService.update(notice);
						} else {
							result = "操作失败";
						}
						view.addObject("msg", result);
					} catch (Exception e) {
						logger.error("'公告上传出异常了.", e);
					}
				} else {
					view.addObject("msg", "没有内容");
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
				logger.error(e.getMessage(), e);
			} catch (IOException e) {
				e.printStackTrace();
				logger.error(e.getMessage(), e);
			}
		}
		List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		view.addObject("channel", WeChatConfig.CHANNEL);
		return view;
	}
	
	/**
	 * payNoticeboardAdd:(). <br/>
	 * TODO().<br/>
	 * 公告栏增加
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/add_text")
	public ModelAndView noticeboardAddText(HttpSession session, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/NoticeboardAddView");
		if (this.isPost(request)) {
			String worldId = request.getParameter("worldId");
			String title = request.getParameter("title");
			
			String content = request.getParameter("content");
			boolean bEnter = true;
			
			if (bEnter) {
				
				OsaGameWorld gameWorld = gameWorldService.getWorldByWorldId(worldId);
				OsaGmNoticeLeft notice = new OsaGmNoticeLeft();
				notice.setAppId(gameWorld.getAppId());
				notice.setContent(content);
				notice.setCreateTime(new Date(System.currentTimeMillis()));
				notice.setTitle(title);
				notice.setWorldId(worldId);
				String result = "";
				try {
					result = sendNoticLeft(notice);
					if (result.equals("1")) {
						result = "操作成功";
						notice.setStatus(1);
						noticeLeftService.update(notice);
					} else {
						result = "操作失败";
					}
					view.addObject("msg", result);
				} catch (Exception e) {
					logger.error("'公告上传出异常了.", e);
				}
			} else {
				view.addObject("msg", "没有内容");
			}
			
		}
		List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		view.addObject("channel", WeChatConfig.CHANNEL);
		return view;
	}
	
	/**
	 * sendNoticLeft:(). <br/>
	 * TODO().<br/>
	 * 发送公告栏
	 * 
	 * @author lyh
	 * @param noticeLeft
	 * @return
	 */
	public String sendNoticLeft(OsaGmNoticeLeft noticeLeft) {
		// TODO Auto-generated method stub
		String status = "0";
		OsaGameWorld gameWorld = gameWorldService.getWorldByWorldId(noticeLeft.getWorldId());
		noticeLeftService.insert(noticeLeft);
		if (gameWorld != null) {
			// 先入库
			// mapper.insert(noticeLeft);
			GmNoticeLeftProtocolRequest req = new GmNoticeLeftProtocolRequest();
			req.setServerId(noticeLeft.getWorldId());
			req.setNoticeTitle(noticeLeft.getTitle());
			req.setContent(noticeLeft.getContent());
			GmNoticeLeftHttpProtocol resp = (GmNoticeLeftHttpProtocol) PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
			if (resp != null) {
				status = "" + resp.getStatus();
			}
		}
		return status;
	}
	
}

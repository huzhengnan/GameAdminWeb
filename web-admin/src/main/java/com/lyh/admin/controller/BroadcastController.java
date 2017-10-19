package com.lyh.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmNotice;
import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.service.OsaGmNoticeCycleService;
import com.lyh.admin.service.OsaGmNoticeService;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.vo.bean.GmtSendNoticeBean;

/** 
 * ClassName:BroadcastController <br/> 
 * TODO:广播处理
 * Date:     2017年10月12日 下午2:03:08 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/broadcast")
public class BroadcastController extends BaseController {
	@Autowired
	private OsaGmNoticeCycleService noticeCycleService;
	@Autowired
	private OsaGmNoticeService noticeService;

	/** 
	 * getBroadcastList:(). <br/> 
	 * TODO().<br/> 
	 * 广播列表
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/list")
	public ModelAndView getBroadcastList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/BroadcastList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaGmNotice> list = noticeService.getNoticList();
		
		PageInfo<OsaGmNotice> pageInfo = new PageInfo<OsaGmNotice>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	
	/** 
	 * getBroadcastLoopList:(). <br/> 
	 * TODO().<br/> 
	 * 循环记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/loop_list")
	public ModelAndView getBroadcastLoopList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/BroadcastLoopList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaGmNoticeCycle> list = noticeService.getCycleNoticeList("-1");
		
		PageInfo<OsaGmNoticeCycle> pageInfo = new PageInfo<OsaGmNoticeCycle>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	
	
	/** 
	 * broadcastSend:(). <br/> 
	 * TODO().<br/> 
	 * 发送广播
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/send")
	public ModelAndView broadcastSend(HttpSession session, HttpServletRequest request,GmtSendNoticeBean gmtSendNoticeBean){
		ModelAndView view = new ModelAndView("/BroadcastSend");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
			OsaGameWorld gameWorld= gameWorldService.getWorldByWorldId(""+gmtSendNoticeBean.getWid());
			gmtSendNoticeBean.setAppid(gameWorld.getAppId());
			gmtSendNoticeBean.setUser(ShiroSysUser.getShiroSubject().getOsaUser().getUserName());
			String result = "";
			if (gmtSendNoticeBean.getType().equals("2")) {
				result = ""+noticeService.sendCycleNotic(gmtSendNoticeBean) ;
			} else {
				result = noticeService.sendNotic(gmtSendNoticeBean,true);
			}
			if (result.equals("1")){
				result="操作成功";
			}else{
				result="操作失败";
			}
			view.addObject("msg", result);
		}
		List<OsaGameWorld> worldList =  gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		return view;
	}
	
	
	
}
  
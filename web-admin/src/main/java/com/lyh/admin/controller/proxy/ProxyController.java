package com.lyh.admin.controller.proxy;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.properites.WeChatConfig;
import com.lyh.admin.properites.WebConfig;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:ProxyController <br/>
 * TODO:代理处理 Date: 2017年10月13日 下午3:54:05 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
public class ProxyController extends BaseController {
	
	private Object agentListService;
	
	/**
	 * getProxyMyList:(). <br/>
	 * TODO().<br/>
	 * 我的代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/proxy/my_list")
	public ModelAndView getProxyMyList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaUser> list = userService.getUsersByFatherName(sysUser.getOsaUser().getUserName());
		
		PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("name", sysUser.getOsaUser().getUserName());
		return view;
	}
	
	/**
	 * getProxySubProxy:(). <br/>
	 * TODO().<br/>
	 * 查看我的下级代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/proxy/see_sub_proxy")
	public ModelAndView getProxySubProxy(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser sysUser =ShiroSysUser.getShiroSubject();
		String id = request.getParameter("id");
		
		OsaUser user = userService.findById(Long.parseLong(id));
		if (user != null) {
			List<OsaUser> list = userService.getUsersByFatherName(user.getUserName());
			
			PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
			String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
			view.addObject("list", list);
			view.addObject("pages", pages);
		}
		return view;
	}
	
	/**
	 * getProxyDel:(). <br/>
	 * TODO().<br/>
	 * 删除代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/proxy/proxy_del")
	public ModelAndView getProxyDel(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		
		if (isPost(request)) {
			String id = request.getParameter("id");
			OsaUser oUser = userService.findById(Long.parseLong(id));
			if (oUser != null) {
				oUser.setStatus((byte) 0);
				userService.update(oUser);
			}
		}
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaUser> list = userService.getUsersByFatherName(sysUser.getOsaUser().getUserName());
		
		PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("name", sysUser.getOsaUser().getUserName());
		return view;
	}
	
	/**
	 * proxyAdd:(). <br/>
	 * TODO().<br/>
	 * 添加代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/proxy/add")
	public ModelAndView proxyAdd(HttpSession session, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/ProxyAdd");
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		if (isPost(request)) {
			String proxyId = request.getParameter("proxyId");
			String proxyLevel = request.getParameter("proxyLevel");
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String realName = request.getParameter("realName");
			String phone = request.getParameter("phone");
			String bank = request.getParameter("bank");
			String playerId = request.getParameter("playerId");
			String inviteCode = request.getParameter("inviteCode");
			if (!ToolUtils.isStringNull(realName) && !ToolUtils.isStringNull(name) && !ToolUtils.isStringNull(password) && !ToolUtils.isStringNull(inviteCode) && !ToolUtils.isStringNull(proxyId) && !ToolUtils.isStringNull(phone)) {
				String msg = "";
				if (userService.findUserByUserName(name) != null) {// 名称没有被占用
					msg = "代理名称已存在";// 代理名称已存在
				} else if (!ToolUtils.isPhoneLegal(phone)) {
					msg = "电话号码不合法";// 电话号码不合法
				} else if (userService.getUserByPhone(Long.parseLong(phone)) != null) {
					msg = "电话号码已存在,请另外填写";// 电话号码已存在,请另外填写
				} else if (userService.getUsersByInviteCode(inviteCode) != null) {
					msg = "邀请码已存在";// 微信号已存在,请另外填写
				} else if (!ToolUtils.isNumAndLetter(name,4,8) || name.length() > 8) {
					msg = "用户名只能是字母和数字";
				} else if (realName.length() > 8) {
					msg = "真实姓名过长";
				} else if (password.length() > 6 ||ToolUtils.isContainChinese(password)) {
					msg = "密码过长或不能包含中文";
				}
				
				else {
					OsaUser oUser = new OsaUser();
					oUser.setId(Long.parseLong(proxyId));
					oUser.setProxyLevel(Integer.parseInt(proxyLevel));
					oUser.setUserName(name);
					oUser.setIsProxy(1);
					oUser.setBindPlayerId(playerId == null ? 0 : Long.parseLong(playerId));
					oUser.setBank(bank);
					oUser.setFatherName(sysUser.getOsaUser().getUserName());
					oUser.setCreateTime(new Date(System.currentTimeMillis()));
					oUser.setMobile(Long.parseLong(phone));
					oUser.setInviteCode(inviteCode);
					oUser.setPassword(password);
					oUser.setRealName(realName);
					oUser.setStatus((byte)1);
					oUser.setRemainMoney("0");
					oUser.setEmail("1548@126.com");
					oUser.setTemplate("schoolpainting");
					if (Integer.parseInt(proxyLevel) == 1) {
						oUser.setUserGroup(2);
					} else {
						oUser.setUserGroup(3);
					}
					userService.insert(oUser);
					msg = "创建代理" + name + "成功!";
				}
				view.addObject("msg", msg);
			} else {
				view.addObject("msg", "参数不能为空");
			}
		}
		
		long proxyId = IdGenerateUtils.makeId();
		long inviteCode = proxyId % 100000;
		if (inviteCode < 10000) {
			inviteCode += 10000;
		}
		
		view.addObject("proxyId", proxyId);
		view.addObject("inviteCode", inviteCode);
		view.addObject("channel", WebConfig.CHANNEL);
		view.addObject("level", sysUser.getOsaUser().getProxyLevel());
		return view;
	}
	
}

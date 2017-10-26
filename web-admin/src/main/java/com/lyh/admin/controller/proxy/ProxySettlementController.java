package com.lyh.admin.controller.proxy;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaProxyRechargeFetch;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:SettlementController <br/>
 * TODO:代理结算 Date: 2017年10月13日 下午3:58:06 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/proxy")
public class ProxySettlementController extends BaseController {
	
	/**
	 * getProxySettlementConfigList:(). <br/>
	 * TODO().<br/>
	 * 分成比例配置列表
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/settlement_config_list")
	public ModelAndView getProxySettlementConfigList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxySettlementConfigList");
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		List<OsaProxyConfig> list = proxyConfigService.getProxyConfigList();
		PageInfo<OsaProxyConfig> pageInfo = new PageInfo<OsaProxyConfig>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		
		return view;
	}
	
	/**
	 * settlementConfigAdd:(). <br/>
	 * TODO().<br/>
	 * 分成比例配置修改
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping("/settlement_config_add")
	public String settlementConfigAdd(HttpSession session, HttpServletRequest request, Model model) {
		// ModelAndView view = new ModelAndView("/ProxySettlementConfigAdd");
		String id = request.getParameter("id");
		OsaProxyConfig proxyConfig = proxyConfigService.findById(Long.parseLong(id));
		String view = "/ProxySettlementConfigAdd";
		if (this.isPost(request)) {
			
			String oneLevel = request.getParameter("oneLevel");
			String twoLevel = request.getParameter("twoLevel");
			String threeLevel = request.getParameter("threeLevel");
			String noneLevel = request.getParameter("noneLevel");
			proxyConfig.setNoneLevel(noneLevel);
			proxyConfig.setOneLevel(oneLevel);
			proxyConfig.setTwoLevel(twoLevel);
			proxyConfig.setThreeLevel(threeLevel);
			proxyConfigService.update(proxyConfig);
			view = "redirect:/proxy/settlement_config_list";
			// view.addObject("msg", result);
		} else {
			model.addAttribute("proxyConfig", proxyConfig);
		}
		// List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		// view.addObject("proxyConfig", proxyConfig);
		
		// view.addObject("fatherUser", fatherUser);
		// view.addObject("myUser", user);
		return view;
	}
	
	/**
	 * getProxySettlementList:(). <br/>
	 * TODO().<br/>
	 * 我的结算列表
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/my_settlement_list")
	public ModelAndView getProxySettlementList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage, String startDate, String endDate) {
		ModelAndView view = new ModelAndView("/ProxySettlementList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
//		List<OsaProxyRecharge> list = proxyRechargeService.getSettlementListByFetch(sysUser.getOsaUser().getUserName(), 0);
//		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
//		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
//		view.addObject("list", list);
//		view.addObject("pages", pages);
		
		List<OsaProxyRechargeFetch> list = null;
		
		list = proxyRechargeFetchService.getProxyRechargeFetchList(sysUser.getOsaUser().getUserName(),1);
		PageInfo<OsaProxyRechargeFetch> pageInfo = new PageInfo<OsaProxyRechargeFetch>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	/**
	 * getProxySettlementRequest:(). <br/>
	 * TODO().<br/>
	 * 结算请求
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/settlement_request")
	public ModelAndView getProxySettlementRequest(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyFetchMoneyView");
		
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		if (this.isPost(request)) {
			String money = request.getParameter("money");
			double mm = Double.parseDouble(money);
			double mmr = sysUser.getOsaUser().getRemainFetchMoney();
			if (mmr >= mm && mm > 0) {
				
				OsaProxyRechargeFetch pObj = new OsaProxyRechargeFetch();
				pObj.setCreateTime(new Date(System.currentTimeMillis()));
				pObj.setName(sysUser.getOsaUser().getUserName());
				pObj.setMoney(Double.parseDouble(money));
				pObj.setStatus(0);
				proxyRechargeFetchService.insert(pObj);
				view.addObject("msg", "申请结算成功");
				view.addObject("remainMoney", sysUser.getOsaUser().getRemainFetchMoney());
			} else {
				view.addObject("remainMoney", sysUser.getOsaUser().getRemainFetchMoney());
				view.addObject("msg", "余额不足!");
			}
		} else {
			view.addObject("remainMoney", sysUser.getOsaUser().getRemainFetchMoney());
		}
		
		return view;
	}
	
	/**
	 * getProxySettlementApplyList:(). <br/>
	 * TODO().<br/>
	 * 结算批付列表
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/settlement_apply_list")
	public ModelAndView getProxySettlementApplyList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxySettlementApplyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		List<OsaProxyRechargeFetch> list = null;
		
		list = proxyRechargeFetchService.getProxyRechargeFetchList(null,0);
		PageInfo<OsaProxyRechargeFetch> pageInfo = new PageInfo<OsaProxyRechargeFetch>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		
		return view;
	}
	
	/**
	 * getProxySettlementPay:(). <br/>
	 * TODO().<br/>
	 * 批付结算请求
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/settlement_pay")
	public ModelAndView getProxySettlementPay(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxySettlementApplyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		String id = request.getParameter("id");
		if (!ToolUtils.isStringNull(id)) {
			OsaProxyRechargeFetch fetchRecharge = proxyRechargeFetchService.findById(Long.parseLong(id));
			if (fetchRecharge != null && fetchRecharge.getStatus() == 0) {
				fetchRecharge.setStatus(1);
				proxyRechargeFetchService.update(fetchRecharge);
				OsaUser oUser = userService.findUserByUserName(fetchRecharge.getName());
				if (oUser!=null && oUser.getRemainFetchMoney()  >=fetchRecharge.getMoney()){
					oUser.setRemainFetchMoney(oUser.getRemainFetchMoney() -fetchRecharge.getMoney() );
					userService.update(oUser);
					view.addObject("msg", "结算成功");
				}else{
					view.addObject("msg", "结算失败,余额不足!");
				}
//				List<Long> ids = JSON.parseArray(fetchRecharge.getIds(), Long.class);
//				for (long rechargeId : ids) {
//					OsaProxyRecharge rechargeRecord = proxyRechargeService.findById(rechargeId);
//					if (rechargeRecord != null) {
//						rechargeRecord.setIsFetch(2);
//						proxyRechargeService.update(rechargeRecord);
//					}
//				}
				
			}
		}
		List<OsaProxyRechargeFetch> list = null;
		
		list = proxyRechargeFetchService.getProxyRechargeFetchList(null,0);
		PageInfo<OsaProxyRechargeFetch> pageInfo = new PageInfo<OsaProxyRechargeFetch>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		
		return view;
	}
	
	/**
	 * getProxySettlementSee:(). <br/>
	 * TODO().<br/>
	 * 批付申请查看详情
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/settlement_see")
	public ModelAndView getProxySettlementSee(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxySettlementSee");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		String id = request.getParameter("id");
		List<OsaProxyRecharge> list = null;
		if (!ToolUtils.isStringNull(id)) {
			OsaProxyRechargeFetch fetchRecharge = proxyRechargeFetchService.findById(Long.parseLong(id));
			if (fetchRecharge != null) {
				List<Long> ids = JSON.parseArray(fetchRecharge.getIds(), Long.class);
				list = proxyRechargeService.getProxyRechargeByIds(ids);
			}
			
		}
		
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("id", id);
		return view;
	}
	
}

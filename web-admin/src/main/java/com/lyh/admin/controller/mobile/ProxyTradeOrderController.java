package com.lyh.admin.controller.mobile;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:ProxyTradeOrderController <br/>
 * TODO:我的玩家交易记录 Date: 2017年10月24日 下午3:45:06 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/mobile")
public class ProxyTradeOrderController extends BaseController {
	@RequestMapping("/order_list")
	public ModelAndView mobileLogin(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage, String startDate, String endDate) {
		ModelAndView view = new ModelAndView("/mobile/ProxyOrder");
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaProxyRecharge> list = proxyRechargeService.getPlayerRechargeList(sysUser.getOsaUser().getUserName(), -1);
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		
		return view;
	}
}

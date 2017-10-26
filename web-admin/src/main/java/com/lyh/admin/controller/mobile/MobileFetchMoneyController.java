package com.lyh.admin.controller.mobile;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaProxyRechargeFetch;

/** 
 * ClassName:MobileFetchMoneyController <br/> 
 * TODO:移动提现
 * Date:     2017年10月26日 上午10:23:38 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/mobile")
public class MobileFetchMoneyController extends BaseController {
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
		ModelAndView view = new ModelAndView("/mobile/MobileFetchMoneyView");
		
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
	
	
}
  
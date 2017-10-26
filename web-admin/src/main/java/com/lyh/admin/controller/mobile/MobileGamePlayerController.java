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
 * TODO:移动玩家列表 Date: 2017年10月24日 下午3:45:06 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/mobile")
public class MobileGamePlayerController extends BaseController {
	@RequestMapping("/player_list")
	public ModelAndView getProxyPlayerList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage,String startDate,String endDate,String playerId) {
		ModelAndView view = new ModelAndView("/mobile/MobileGamePlayerList");
		
//		if (isPost(request)){
//			String id = request.getParameter("id");
//			OsaUser oUser = userService.findById(Long.parseLong(id));
//			if (oUser != null){
//				oUser.setStatus((byte)0);
//				userService.update(oUser);
//			}
//		}
		
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		Date dStartDate  = null;
		Date dEndDate = null;
		long dPlayerId = 0;
		if (!ToolUtils.isStringNull(startDate)  ){
			
			 dStartDate = ToolUtils.getStartDateOneDay(startDate);
			if (ToolUtils.isStringNull(endDate)){
				endDate = ToolUtils.getDateStringFromat(new Date(System.currentTimeMillis()));
			}
			
			dEndDate = ToolUtils.getEndDateOneDay(endDate);
			
		}else if (!ToolUtils.isStringNull(playerId) &&  ToolUtils.isNum(playerId)){
			dPlayerId = Long.parseLong(playerId);
		}
		
		List<OsaGamePlayer> list = gamePlayerService.getGamePlayersByInviteCode(sysUser.getOsaUser().getInviteCode(),dStartDate,dEndDate,dPlayerId);
		
		PageInfo<OsaGamePlayer> pageInfo = new PageInfo<OsaGamePlayer>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
}

package com.lyh.admin.controller;

import java.util.ArrayList;
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
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:GamePlayerController <br/>
 * TODO:游戏玩家 Date: 2017年10月11日 上午10:36:46 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
public class GamePlayerController extends BaseController {
	
	@Autowired
	private OsaGamePlayerService gamePlayerService;
	
	/**
	 * getGamePlayers:(). <br/>
	 * TODO().<br/>
	 * 游戏玩家
	 * 
	 * @author lyh
	 * @return
	 */
	@RequestMapping("/game_play")
	public ModelAndView getGamePlayers(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/GamePlayer");
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaGamePlayer> list = gamePlayerService.getGamePlayerList(0, null);
		PageInfo<OsaGamePlayer> pageInfo = new PageInfo<OsaGamePlayer>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	/**
	 * playerSearch:(). <br/>
	 * TODO().<br/>
	 * 玩家查询
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param model
	 */
	@RequestMapping("/player_search")
	public ModelAndView playerSearch(HttpSession session, HttpServletRequest request) {
		String playerId = request.getParameter("playerId");
		String openId = request.getParameter("openId");
		ModelAndView view = new ModelAndView("/GamePlayer");
		OsaGamePlayer gamePlayer = null;
		if (!ToolUtils.isStringNull(playerId)) {
			gamePlayer = gamePlayerService.findById(Long.parseLong(playerId));
		} 
		if (!ToolUtils.isStringNull(openId)) {
			if (gamePlayer == null){
				gamePlayer = gamePlayerService.getGamePlayerByOpenId(openId);
			}
		}
		
		if (gamePlayer != null){
			List<OsaGamePlayer> list = new ArrayList<OsaGamePlayer>();
			list.add(gamePlayer);
			view.addObject("list", list);
		}else{

			List<OsaGamePlayer> list = gamePlayerService.getGamePlayerList(0, null);
			PageInfo<OsaGamePlayer> pageInfo = new PageInfo<OsaGamePlayer>(list);
			String pages = ShowPage.showPager(this.getRequestUrl(request), 1, ShowPage.PAGE_SIZE, pageInfo.getTotal());
			view.addObject("list", list);
			view.addObject("pages", pages);
		}
		return view;
	}
}

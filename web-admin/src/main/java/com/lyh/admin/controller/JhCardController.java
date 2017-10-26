package com.lyh.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.game.protocol.gm.GmJHPlayerHttpProtocol;
import com.game.protocol.gm.GmJHPlayerProtocolRequest;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ToolUtils;

/** 
 * ClassName:JhCardController <br/> 
 * TODO:
 * Date:     2017年10月12日 下午2:48:38 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/jh")
public class JhCardController extends BaseController {

	
	
	@RequestMapping("/card_look")
	public ModelAndView jhCardLook(HttpSession session, HttpServletRequest request){
		ModelAndView view = new ModelAndView("/JhCardLook");
		if (this.isPost(request)){
			String worldId = request.getParameter("worldId");
			String playerId = request.getParameter("playerId");
			String gameType = request.getParameter("type");
			OsaGameWorld gameWorld= gameWorldService.getWorldByWorldId(worldId);
			// 发给后端
			String result = "1";
			if (!ToolUtils.isStringNull(playerId)) {
				long player_id= Long.parseLong(playerId);
				
				GmJHPlayerProtocolRequest req = new GmJHPlayerProtocolRequest();
				req.setPlayerId(playerId);
				req.setGameType(Integer.parseInt(gameType));
				if (gameWorld != null) {
					//logger.error("来了没有没有朋");
					GmJHPlayerHttpProtocol resp = (GmJHPlayerHttpProtocol) PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
					if (resp != null) {
						result = resp.result;
					}
					//logger.error("来了没有" + resp.result);
				}
				//logger.error("查看玩家QQQQ");

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
  
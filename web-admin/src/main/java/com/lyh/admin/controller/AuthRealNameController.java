package com.lyh.admin.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.protocol.gm.GmAuthCardIdHttpProtocol;
import com.game.protocol.gm.GmAuthCardIdProtocolRequest;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ToolUtils;

/** 
 * ClassName:AuthRealNameController <br/> 
 * TODO:实名认证
 * Date:     2017年10月13日 下午4:02:26 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class AuthRealNameController extends BaseController {
	@Autowired
	private OsaGamePlayerService gamePlayerService;

	/**
	 * authName:(). <br/>
	 * TODO().<br/>
	 * 实名认证
	 * 
	 * @author lyh
	 * @return
	 */
	@RequestMapping(value = "/auth/real/name", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> authName(HttpSession session, HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		String playerId = request.getParameter("playerId");
		String realName = request.getParameter("realName");
		String cardId = request.getParameter("cardId");
		if (ToolUtils.isStringNull(playerId) || ToolUtils.isStringNull(realName) || ToolUtils.isStringNull(cardId)) {
			map.put("result", "-1");// 发送参数不能为空
			return map;
		}
		
		OsaGamePlayer  player = gamePlayerService.findById(Long.parseLong(playerId));
	
		if (player == null) {
			map.put("result", "-2");// 没有此账号
			return map;
		}
		boolean checkCard = false;
		try {
			checkCard = vId(cardId);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "-3");// 身份证号有问题
			return map;
		}
		
		// 判断身份证号
		if (checkCard) {
			// 连接服务端
			List<OsaGameWorld> gameWorldList= gameWorldService.getWorldList(1);
			OsaGameWorld worldServer = gameWorldList.get(0);
			if (worldServer != null) {
				GmAuthCardIdProtocolRequest req = new GmAuthCardIdProtocolRequest();
				req.setPlayerId(playerId);
				req.setServerId(worldServer.getWorldId());
				GmAuthCardIdHttpProtocol resp = (GmAuthCardIdHttpProtocol) PlatformToServerConnection.sendPlatformToServer(worldServer.getIp(), worldServer.getServerUrl(), req);
				if (resp != null) {
					if (resp.getStatus() == 1) {
						player.setRealName(realName);
						player.setCardId(cardId);
						gamePlayerService.update(player);
		
					}
					map.put("result", "" + resp.getStatus());
				} else {
					map.put("result", "-5");// 连接异常
					return map;
				}
			} else {
				map.put("result", "-4");// 没有找到服务器
				return map;
			}
			
		} else {
			map.put("result", "-3");// 身份证号有问题
			return map;
		}
		
		return map;
		
	}
	
	public static boolean vIDNumByRegex(String idNum) {
		
		String curYear = "" + Calendar.getInstance().get(Calendar.YEAR);
		int y3 = Integer.valueOf(curYear.substring(2, 3));
		int y4 = Integer.valueOf(curYear.substring(3, 4));
		// 43 0103 1973 0 9 30 051 9
		return idNum.matches("^(1[1-5]|2[1-3]|3[1-7]|4[1-6]|5[0-4]|6[1-5]|71|8[1-2])\\d{4}(19\\d{2}|20([0-" + (y3 - 1) + "][0-9]|" + y3 + "[0-" + y4 + "]))(((0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])))\\d{3}([0-9]|x|X)$");
		// 44 1825 1988 0 7 1 3 003 4
	}
	
	private static int ID_LENGTH = 17;
	
	public static boolean vIDNumByCode(String idNum) {
		
		// 系数列表
		int[] ratioArr = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 };
		
		// 校验码列表
		char[] checkCodeList = { '1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2' };
		
		// 获取身份证号字符数组
		char[] cIds = idNum.toCharArray();
		
		// 获取最后一位（身份证校验码）
		char oCode = cIds[ID_LENGTH];
		int[] iIds = new int[ID_LENGTH];
		int idSum = 0;// 身份证号第1-17位与系数之积的和
		int residue = 0;// 余数(用加出来和除以11，看余数是多少？)
		
		for (int i = 0; i < ID_LENGTH; i++) {
			iIds[i] = cIds[i] - '0';
			idSum += iIds[i] * ratioArr[i];
		}
		
		residue = idSum % 11;// 取得余数
		
		return Character.toUpperCase(oCode) == checkCodeList[residue];
	}
	
	public static boolean vId(String idNum) {
		return vIDNumByCode(idNum) && vIDNumByRegex(idNum);
	}
}
  
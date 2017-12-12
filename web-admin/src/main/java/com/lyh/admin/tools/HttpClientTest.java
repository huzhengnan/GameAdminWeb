package com.lyh.admin.tools;

import java.io.UnsupportedEncodingException;
import java.util.SortedMap;
import java.util.TreeMap;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.game.protocol.gm.GmJHPlayerProtocolRequest;
import com.lyh.admin.properites.WeChatConfig;
import com.lyh.admin.tools.pay.webchat.CommonUtil;
import com.lyh.admin.tools.pay.webchat.PayCommonUtil;
import com.lyh.common.ConvertMapUtils;



/** 
 * ClassName:HttpClientTest <br/> 
 * Function: TODO (). <br/> 
 * Reason:   TODO (). <br/> 
 * Date:     2017年7月25日 下午3:15:31 <br/> 
 * @author   lyh 
 * @version   
 * @see       
 */
public class HttpClientTest {


	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	@Test
	public void test() {
//		<xml>
//		  <appid><![CDATA[wx2421b1c4370ec43b]]></appid>
//		  <attach><![CDATA[支付测试]]></attach>
//		  <bank_type><![CDATA[CFT]]></bank_type>
//		  <fee_type><![CDATA[CNY]]></fee_type>
//		  <is_subscribe><![CDATA[Y]]></is_subscribe>
//		  <mch_id><![CDATA[10000100]]></mch_id>
//		  <nonce_str><![CDATA[5d2b6c2a8db53831f7eda20af46e531c]]></nonce_str>
//		  <openid><![CDATA[oUpF8uMEb4qRXf22hE3X68TekukE]]></openid>
//		  <out_trade_no><![CDATA[1409811653]]></out_trade_no>
//		  <result_code><![CDATA[SUCCESS]]></result_code>
//		  <return_code><![CDATA[SUCCESS]]></return_code>
//		  <sign><![CDATA[B552ED6B279343CB493C5DD0D78AB241]]></sign>
//		  <sub_mch_id><![CDATA[10000100]]></sub_mch_id>
//		  <time_end><![CDATA[20140903131540]]></time_end>
//		  <total_fee>1</total_fee>
//		  <trade_type><![CDATA[JSAPI]]></trade_type>
//		  <transaction_id><![CDATA[1004400740201409030005092168]]></transaction_id>
//		</xml>
		String nonceStr = CommonUtil.getNonceStr();
		String attach = "321654|1001";
		SortedMap<String, String> signParams = new TreeMap<String, String>();
		signParams.put("appid", WeChatConfig.APP_ID);// app_id
		signParams.put("mch_id", WeChatConfig.MCH_ID);// 微信商户账号
		signParams.put("nonce_str", nonceStr);// 32位不重复的编号
		signParams.put("bank_type", "CFT");// 回调页面
		signParams.put("fee_type", "CNY");// 回调页面
		signParams.put("out_trade_no", "11111111111");// 订单编号
		signParams.put("result_code", "SUCCESS");// 请求的实际ip地址
		signParams.put("total_fee", "" +40000);// 支付金额 单位为分
		signParams.put("trade_type", "APP");// 付款类型为APP
		signParams.put("attach", attach);
		signParams.put("openid"," oUpF8uMEb4qRXf22hE3X68TekukE");
		signParams.put("transaction_id"," 1004400740201409030005092168");
		signParams.put("time_end"," 20140903131540"
			+ "");
		String sign = PayCommonUtil.createSign("UTF-8", signParams);// 生成签名
		signParams.put("sign", sign);
		signParams.remove("key");// 调用统一下单无需key（商户应用密钥）
		String requestXml = PayCommonUtil.getRequestXml(signParams);// 生成Xml格式的字符串
		logger.error("requestXml:::" + requestXml);
		String result;
		try {
			result = HttpClient.send("https://api.mch.weixin.qq.com/pay/unifiedorder",  true,requestXml.getBytes("utf-8"));
			logger.error("ssss::"+result);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	
	}
	
	@Test
	public void testAuth(){
		try {
			String playerId = "1000220";
			String realName = "321321";
			String cardId = "32131233";
			String requestMsg = "playerId="+playerId+"&realName="+realName+"&cardId="+cardId;
			GmJHPlayerProtocolRequest req = new GmJHPlayerProtocolRequest();
			req.setPlayerId(""+100050);
			req.setGameType(0);
			//39.108.11.36
			String jsonString = ConvertMapUtils.objToString(req);
			byte[]	data = jsonString.getBytes("UTF-8");
			String result = HttpClient.send("http://120.77.232.37:3102/platform",  true,data);
			logger.error("ssss::"+result);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
	}
	
	
	@Test
	public void testUpFile(){
		for (int i = 0; i < 100; i++){
		String txt = "房间类玩法和 MMORPG 有很大的不同在于其在线广播单元的不确定性和广播数量很小而且需要匹配一台房间服务器让少数人进入一个服务器"+
"这一类游戏最重要的是其“游戏大厅”的承载量，每个“游戏房间”受逻辑所限，需要维持和广播的玩家数据是有限的，但是“游戏大厅”需要维持相当高的在线用户数，所以一般来说，这种游戏还是需要做“分服”的"+
"而“游戏大厅”里面最有挑战性的任务，就是“自动匹配”玩家进入一个“游戏房间”，这需要对所有在线玩家做搜索和过滤，以及为了更好的体验，会对玩家进行分地区匹配，以方便获得更快速的同步。"+
"一般的方式是玩家先登录“大厅服务器”，然后选择组队游戏的功能，服务器会通知参与的所有游戏客户端，新开一条连接到房间服务器上，这样所有参与的用户就能在房间服务器里进行游戏交互了。"+
"通信方式说到通信方式，一般会有 http 和 socket 两种方式，但 http 底层也是采用 socket，只是每次通信完成以后都会断开"+
"这种方式对于需要频繁交互的双方来说，显得效率太低了，所以一般实时要求高的游戏都是采用 socket 方式来通信"+
"可是 sokect 通信，又分为两种：TCP vs UDP，具体是采用那种 socket 类型，需要具体来看游戏游戏类型"+
"以下是两种类型的优劣"+ "房间类玩法和 MMORPG 有很大的不同在于其在线广播单元的不确定性和广播数量很小而且需要匹配一台房间服务器让少数人进入一个服务器"+
"这一类游戏最重要的是其“游戏大厅”的承载量，每个“游戏房间”受逻辑所限，需要维持和广播的玩家数据是有限的，但是“游戏大厅”需要维持相当高的在线用户数，所以一般来说，这种游戏还是需要做“分服”的"
;
		String requestMsg = "openId="+"ewfee1"+"&playerId="+"sweedeww"+"&data="+txt+"&name="+"在办fder在"+"&descs="+"在e仍枯仍脸在在工人厅厅要左仍在魂牵梦萦阿斯蒂芬你用枯顶替基本w人在在角厅厅办在";
		
		String result = null;
		try {
			result = HttpClient.send("http://192.168.0.189:8090/bug/upload_file",  true,requestMsg.getBytes("UTF-8"));
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		logger.error("ssss::"+result);
		}
	}
}
  
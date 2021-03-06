/** 
 * Project Name:DragonBallWorldServerHappy 
 * File Name:ServerGameConfig.java 
 * Package Name:com.sj.engine.config 
 * Date:2014-2-19上午10:56:06 
 * Copyright (c) 2014, chenzhou1025@126.com All Rights Reserved. 
 * 
 */

package com.lyh.admin.properites;

import java.util.Properties;

/**
 * ClassName:ServerGameConfig <br/>
 * Function: TODO (游戏的配置文件). <br/>
 * Reason: TODO (). <br/>
 * Date: 2014-2-19 上午10:56:06 <br/>
 * 
 * @author lyh
 * @version
 * @see
 */

public class AlipayConfig extends ServerProperties {
	private static final String BUNDLE_NAME = "_alipay.properties";
	
	private static final String BUNDLE_PATH = "/config/";
	
	public static  String ALIPAY_APPID = "2017092608944439"; // appid
	
	public static String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCLt/I/CUHQixU/Ei0h7N+Odhy96Eb3w9gYLa/+Gt4f2rcvVbtDAiEY22wrn+UkK/n8f5NtX/lo76uC/CLFAlwWmf8VxuXvQu+9AE7FIAvNRxxcAp++aYROdqQ8XNtx5mHh3FcU4aeDWuQ0dfio2VilebS98q/gGehPJGjLQqXgT0YYR67/8egzTGQ3+L/lKDg+uHY5muhELgFVic5+1ugH2cWMHmL5XzA4SpHVkgLlSdXwYjoFX8ki/n/aHmoFn6vzGzGlaS88cjU1Hz7cmfobnTXA08h+Np9Oho1AfdZPSCJx9GTeMockFEXMtM8/Xuhnsv4V4RyKb2vnh2rWiPZDAgMBAAECggEAE1CmqJg7BP11PnbgzmPUs/kYGBjYVsA4S39laReFxZmS4XRUovrUYH9VAOLl5o49zO5GD0TJUfxwFXeNxvaAjI9VeEk62EzEn7g/K3k2qHZAMWgbdVNY+w/jvISJwcE7nuG7GCPp6HrUOXxll9IUMywUFH5MWgq61tYNtqvMCqo2ic0JVzwD7uOmucpLL8xt0HLoqCItC5ANvPhvQXNQe/J1kAvB3xy6vIBrvwUuiVvDn4htTEX9AiXXQkZ8pktNB2uOrAwheyKrjQ1db0X4Hs+aQgAisgRObY/ALQp5Ahkf0YN/ZZKMNRi8va/ILkcr/CKHz2vw1WtvJdOJXQgu4QKBgQDGDT7+AbY/Xt77uf7ztbD7puskBgH0KuliCYPPXH/N5qrhQyZ/kmBbkEk2Vnq7tuq15sI6w+2+P/vJtl6RryfE4RAXSfE/K8t1Nk3a7na1O94phChr6W3axXsMvbjt3wU253jH7wCOi9RMXFmnyj+r6dbWmHuv1dfgQ9dzCZr2NQKBgQC0mVfyFmHFrpNzpAlBGz7KwLJG7RpyL0bYkkNcxyuIdlH/57rp/Vt1V45Kq+9zE2gjrJrGRYjWU52D1y7AlKIUbephPBTiosmZPGPpnrLTtvPMyPpYkIR9DRvXZ3SaUpa63bAkwmH0ww81f9Nb9KG3JH/tkPTYYQ843rklVU5plwKBgQC2l129Bs0ELa48vCTugVMzH5foNVW1y54xUX5hPfFiXkiqt6MVuFj38dVdsGslByXrIF1vmlVksk6rkGQtwiNTIwAXyIcPa4v/e1pZ/sIYoqJW+k3d927dZHXmsD9/pr6C+PLkuVd1FDtdT0MlK5R6JXN5k0ltOiT10PYgS/m/BQKBgQCd3sIjLG+Rh7b7yrQQRsnQITx2hcOtdyheHxVln/GtG4k4w5AABWqSm9QV8FCj7p4FOVge5B/nAzbZThxfWk6Iv0C4ePXk29qQ6lqImSLHsdFS/YjiLIq0aeYhmR0z3ehHN41HxOguNukvoirX4nQPDYgK2sE9+TJ+Syvbt8OQxwKBgF1++DpEWkaMGg2mMaVeAMqx2LMNSOmGB6khRr692ZvpP7JZHjxWvJ03WGW8SvOhBKAjZL07Zp7Ak17YP9mbC/14VvdLwfF4XXJSXpEXp5jUfN6ST9FDCLc6LF6rDnpmv5DnryPtAGwj/EoscJxnvO8duuihZylNKYIvnivxWw49"; // app支付私钥
	
	public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi7fyPwlB0IsVPxItIezfjnYcvehG98PYGC2v/hreH9q3L1W7QwIhGNtsK5/lJCv5/H+TbV/5aO+rgvwixQJcFpn/Fcbl70LvvQBOxSALzUccXAKfvmmETnakPFzbceZh4dxXFOGng1rkNHX4qNlYpXm0vfKv4BnoTyRoy0Kl4E9GGEeu//HoM0xkN/i/5Sg4Prh2OZroRC4BVYnOftboB9nFjB5i+V8wOEqR1ZIC5UnV8GI6BV/JIv5/2h5qBZ+r8xsxpWkvPHI1NR8+3Jn6G501wNPIfjafToaNQH3WT0gicfRk3jKHJBRFzLTPP17oZ7L+FeEcim9r54dq1oj2QwIDAQAB"; // 支付宝公钥
	
	public static void loadConfig(String path, String name) {
		Properties GAME_BUNDLE = loadProperties(path + BUNDLE_PATH + name + BUNDLE_NAME);
		if (GAME_BUNDLE != null) {
			ALIPAY_APPID = GAME_BUNDLE.getProperty("app_id");
			APP_PRIVATE_KEY = GAME_BUNDLE.getProperty("app_private_key");
			ALIPAY_PUBLIC_KEY = GAME_BUNDLE.getProperty("app_public_key");
			// KEY = GAME_BUNDLE.getProperty("key");
			// NOTIFY_URL = GAME_BUNDLE.getProperty("notify_url");
			// CHANNEL = Integer.parseInt(GAME_BUNDLE.getProperty("channel"));
		}
	}
	
}

package com.lyh.admin.tools.pay.alipay;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.decorator.Decorator;

import com.alipay.api.AlipayConstants;


/** 
 * ClassName:AlipayUtil <br/> 
 * Function: TODO (). <br/> 
 * Reason:   TODO (). <br/> 
 * Date:     2017年8月3日 下午5:13:50 <br/> 
 * @author   lyh 
 * @version   
 * @see       
 */
@Decorator
public class AlipayUtil {
	public static final String ALIPAY_APPID = "2017092608944439"; // appid

	    public static String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCLt/I/CUHQixU/Ei0h7N+Odhy96Eb3w9gYLa/+Gt4f2rcvVbtDAiEY22wrn+UkK/n8f5NtX/lo76uC/CLFAlwWmf8VxuXvQu+9AE7FIAvNRxxcAp++aYROdqQ8XNtx5mHh3FcU4aeDWuQ0dfio2VilebS98q/gGehPJGjLQqXgT0YYR67/8egzTGQ3+L/lKDg+uHY5muhELgFVic5+1ugH2cWMHmL5XzA4SpHVkgLlSdXwYjoFX8ki/n/aHmoFn6vzGzGlaS88cjU1Hz7cmfobnTXA08h+Np9Oho1AfdZPSCJx9GTeMockFEXMtM8/Xuhnsv4V4RyKb2vnh2rWiPZDAgMBAAECggEAE1CmqJg7BP11PnbgzmPUs/kYGBjYVsA4S39laReFxZmS4XRUovrUYH9VAOLl5o49zO5GD0TJUfxwFXeNxvaAjI9VeEk62EzEn7g/K3k2qHZAMWgbdVNY+w/jvISJwcE7nuG7GCPp6HrUOXxll9IUMywUFH5MWgq61tYNtqvMCqo2ic0JVzwD7uOmucpLL8xt0HLoqCItC5ANvPhvQXNQe/J1kAvB3xy6vIBrvwUuiVvDn4htTEX9AiXXQkZ8pktNB2uOrAwheyKrjQ1db0X4Hs+aQgAisgRObY/ALQp5Ahkf0YN/ZZKMNRi8va/ILkcr/CKHz2vw1WtvJdOJXQgu4QKBgQDGDT7+AbY/Xt77uf7ztbD7puskBgH0KuliCYPPXH/N5qrhQyZ/kmBbkEk2Vnq7tuq15sI6w+2+P/vJtl6RryfE4RAXSfE/K8t1Nk3a7na1O94phChr6W3axXsMvbjt3wU253jH7wCOi9RMXFmnyj+r6dbWmHuv1dfgQ9dzCZr2NQKBgQC0mVfyFmHFrpNzpAlBGz7KwLJG7RpyL0bYkkNcxyuIdlH/57rp/Vt1V45Kq+9zE2gjrJrGRYjWU52D1y7AlKIUbephPBTiosmZPGPpnrLTtvPMyPpYkIR9DRvXZ3SaUpa63bAkwmH0ww81f9Nb9KG3JH/tkPTYYQ843rklVU5plwKBgQC2l129Bs0ELa48vCTugVMzH5foNVW1y54xUX5hPfFiXkiqt6MVuFj38dVdsGslByXrIF1vmlVksk6rkGQtwiNTIwAXyIcPa4v/e1pZ/sIYoqJW+k3d927dZHXmsD9/pr6C+PLkuVd1FDtdT0MlK5R6JXN5k0ltOiT10PYgS/m/BQKBgQCd3sIjLG+Rh7b7yrQQRsnQITx2hcOtdyheHxVln/GtG4k4w5AABWqSm9QV8FCj7p4FOVge5B/nAzbZThxfWk6Iv0C4ePXk29qQ6lqImSLHsdFS/YjiLIq0aeYhmR0z3ehHN41HxOguNukvoirX4nQPDYgK2sE9+TJ+Syvbt8OQxwKBgF1++DpEWkaMGg2mMaVeAMqx2LMNSOmGB6khRr692ZvpP7JZHjxWvJ03WGW8SvOhBKAjZL07Zp7Ak17YP9mbC/14VvdLwfF4XXJSXpEXp5jUfN6ST9FDCLc6LF6rDnpmv5DnryPtAGwj/EoscJxnvO8duuihZylNKYIvnivxWw49"; // app支付私钥

	    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi7fyPwlB0IsVPxItIezfjnYcvehG98PYGC2v/hreH9q3L1W7QwIhGNtsK5/lJCv5/H+TbV/5aO+rgvwixQJcFpn/Fcbl70LvvQBOxSALzUccXAKfvmmETnakPFzbceZh4dxXFOGng1rkNHX4qNlYpXm0vfKv4BnoTyRoy0Kl4E9GGEeu//HoM0xkN/i/5Sg4Prh2OZroRC4BVYnOftboB9nFjB5i+V8wOEqR1ZIC5UnV8GI6BV/JIv5/2h5qBZ+r8xsxpWkvPHI1NR8+3Jn6G501wNPIfjafToaNQH3WT0gicfRk3jKHJBRFzLTPP17oZ7L+FeEcim9r54dq1oj2QwIDAQAB"; // 支付宝公钥
	    

//	    static {
//	        try {
//	            Resource resource = new ClassPathResource("alipay_private_key_pkcs8.pem");
//	            APP_PRIVATE_KEY = FileUtil.readInputStream2String(resource.getInputStream());
//	            resource = new ClassPathResource("alipay_public_key.pem");
//	            ALIPAY_PUBLIC_KEY = FileUtil.readInputStream2String(resource.getInputStream());
//	        } catch (Exception e) {
//	            e.printStackTrace();
//	        }
//	    }

	    
	    
	    /**
	     * 返回签名编码拼接url
	     * 
	     * @param params
	     * @param isEncode
	     * @return
	     */
	    public static String getSignEncodeUrl(Map<String, String> map, boolean isEncode) {
	        String sign = map.get("sign");
	        String encodedSign = "";
	        if (!map.isEmpty()) {
	            map.remove("sign");
	            List<String> keys = new ArrayList<String>(map.keySet());
	            // key排序
	            Collections.sort(keys);

	            StringBuilder authInfo = new StringBuilder();

	            boolean first = true;// 是否第一个
	            for (String key: keys) {
	                if (first) {
	                    first = false;
	                } else {
	                    authInfo.append("&");
	                }
	                authInfo.append(key).append("=");
	                if (isEncode) {
	                    try {
	                        authInfo.append(URLEncoder.encode(map.get(key), AlipayConstants.CHARSET_UTF8));
	                    } catch (UnsupportedEncodingException e) {
	                        e.printStackTrace();
	                    }
	                } else {
	                    authInfo.append(map.get(key));
	                }
	            }

	            try {
	                encodedSign = authInfo.toString() + "&sign=" + URLEncoder.encode(sign, AlipayConstants.CHARSET_UTF8);
	            } catch (UnsupportedEncodingException e) {
	                e.printStackTrace();
	            }
	        }

	        return encodedSign.replaceAll("\\+", "%20");
	    }

	
}
  
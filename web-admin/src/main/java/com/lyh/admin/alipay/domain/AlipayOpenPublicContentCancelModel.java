package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 生活号素材内容撤回接口
 *
 * @author auto create
 * @since 1.0, 2017-07-14 11:38:07
 */
public class AlipayOpenPublicContentCancelModel extends AlipayObject {

	private static final long serialVersionUID = 3197532454783845445L;

	/**
	 * message_id 是发布接口调用之后拿到的返回值，用来撤回已经发布的对应内容
	 */
	@ApiField("message_id")
	private String messageId;

	public String getMessageId() {
		return this.messageId;
	}
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}

}

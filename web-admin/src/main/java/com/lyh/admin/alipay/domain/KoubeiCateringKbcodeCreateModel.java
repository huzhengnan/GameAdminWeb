package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 口碑码创建接口
 *
 * @author auto create
 * @since 1.0, 2017-05-12 14:05:12
 */
public class KoubeiCateringKbcodeCreateModel extends AlipayObject {

	private static final long serialVersionUID = 8294338416113282743L;

	/**
	 * 口碑码绑定的门店或者桌号信息列表
	 */
	@ApiListField("bind_info_list")
	@ApiField("kb_code_bind_info_v_o")
	private List<KbCodeBindInfoVO> bindInfoList;

	/**
	 * 请求流水ID，用于幂等控制
	 */
	@ApiField("request_id")
	private String requestId;

	/**
	 * 物料模板（可以不填，系统会根据码类型默认一个模板）
	 */
	@ApiField("stuff_template")
	private String stuffTemplate;

	/**
	 * 生成码的类型（桌码：TABLE_PASTER，门店码：DOOR_PASTER）
	 */
	@ApiField("stuff_type")
	private String stuffType;

	public List<KbCodeBindInfoVO> getBindInfoList() {
		return this.bindInfoList;
	}
	public void setBindInfoList(List<KbCodeBindInfoVO> bindInfoList) {
		this.bindInfoList = bindInfoList;
	}

	public String getRequestId() {
		return this.requestId;
	}
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getStuffTemplate() {
		return this.stuffTemplate;
	}
	public void setStuffTemplate(String stuffTemplate) {
		this.stuffTemplate = stuffTemplate;
	}

	public String getStuffType() {
		return this.stuffType;
	}
	public void setStuffType(String stuffType) {
		this.stuffType = stuffType;
	}

}

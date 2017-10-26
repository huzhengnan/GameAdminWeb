package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.BeaconDeviceInfo;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: alipay.mobile.beacon.device.query response.
 * 
 * @author auto create
 * @since 1.0, 2017-02-28 11:12:47
 */
public class AlipayMobileBeaconDeviceQueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 7665582217841246265L;

	/** 
	 * 蓝牙设备信息
	 */
	@ApiField("beacon_device_info")
	private BeaconDeviceInfo beaconDeviceInfo;

	/** 
	 * 操作返回码，200为成功
	 */
	@ApiField("code")
	private String code;

	/** 
	 * 请求处理结果
	 */
	@ApiField("msg")
	private String msg;

	public void setBeaconDeviceInfo(BeaconDeviceInfo beaconDeviceInfo) {
		this.beaconDeviceInfo = beaconDeviceInfo;
	}
	public BeaconDeviceInfo getBeaconDeviceInfo( ) {
		return this.beaconDeviceInfo;
	}

	public void setCode(String code) {
		this.code = code;
	}
	public String getCode( ) {
		return this.code;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getMsg( ) {
		return this.msg;
	}

}
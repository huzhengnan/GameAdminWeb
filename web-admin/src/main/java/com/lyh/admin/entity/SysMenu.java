package com.lyh.admin.entity;

import java.io.Serializable;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.lyh.admin.model.OsaMenuUrl;


/** 
 * ClassName:SysMenu <br/> 
 * TODO:
 * Date:     2017年10月5日 下午7:39:32 <br/> 
 * @author   lyh 
 * @version    
 */
public class SysMenu implements Serializable{

	/****/  
	private static final long serialVersionUID = -2027674314726016245L;
	
	private OsaMenuUrl menuUrl;
	/**父菜单URl**/  
	private String fatherMenuUrl;
	/**父菜单名称**/  
	private String fatherMenuName;
	
	/**模块id**/  
	private long moduleId;
	/**模块名**/  
	private String moduleName;
	/**模块地址**/  
	private String moduleUrl;

    
	public OsaMenuUrl getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(OsaMenuUrl menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getFatherMenuUrl() {
		return fatherMenuUrl;
	}

	public void setFatherMenuUrl(String fatherMenuUrl) {
		this.fatherMenuUrl = fatherMenuUrl;
	}

	public String getFatherMenuName() {
		return fatherMenuName;
	}

	public void setFatherMenuName(String fatherMenuName) {
		this.fatherMenuName = fatherMenuName;
	}

	public long getModuleId() {
		return moduleId;
	}

	public void setModuleId(long moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getModuleUrl() {
		return moduleUrl;
	}

	public void setModuleUrl(String moduleUrl) {
		this.moduleUrl = moduleUrl;
	}
	
}
  
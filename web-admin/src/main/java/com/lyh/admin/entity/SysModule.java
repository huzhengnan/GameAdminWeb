package com.lyh.admin.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.lyh.admin.model.OsaModule;

/**
 * ClassName:SysModule <br/>
 * TODO: Date: 2017年10月5日 下午7:39:03 <br/>
 * 
 * @author lyh
 * @version
 */
public class SysModule implements Serializable {
	
	/****/
	private static final long serialVersionUID = -8242224859568539996L;
	
	List<SysMenu> menuList = new ArrayList<SysMenu>();
	private OsaModule module;
	
	public List<SysMenu> getMenuList() {
		return menuList;
	}
	
	public void addMenu(SysMenu menu) {
		menuList.add(menu);
	}
	
	public OsaModule getModule() {
		return module;
	}
	
	public void setModule(OsaModule module) {
		this.module = module;
	}
}

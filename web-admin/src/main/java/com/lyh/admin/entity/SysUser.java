package com.lyh.admin.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.lyh.admin.model.OsaUser;



/** 
 * ClassName:SysUser <br/> 
 * TODO:
 * Date:     2017年10月5日 下午6:44:05 <br/> 
 * @author   lyh 
 * @version    
 */
public class SysUser implements Serializable{
	/****/  
	private static final long serialVersionUID = -563736617887370377L;
	
	private OsaUser osaUser;
	
	/**可显示的左菜单**/  
	private List<SysModule> menuLists= new ArrayList<SysModule>();

	/**Long=module权限全部的module**/  
	private Map<Long,SysModule> mapModule = new HashMap<Long,SysModule>();
	
	/**menuMap=url,url权限全部的URL**/  
	private Map<String,SysMenu> menuMap = new HashMap<String, SysMenu>();
	
	/**推广人数**/  
	private int playerNum;
	
	public OsaUser getOsaUser() {
		return osaUser;
	}

	public void setOsaUser(OsaUser osaUser) {
		this.osaUser = osaUser;
	}

	public List<SysModule> getMenuLists() {
		return menuLists;
	}

	public void setMenuLists(List<SysModule> menuLists) {
		this.menuLists = menuLists;
	}

	public Map<Long, SysModule> getMapModule() {
		return mapModule;
	}

	public void setMapModule(Map<Long, SysModule> mapModule) {
		this.mapModule = mapModule;
	}

	public Map<String, SysMenu> getMenuMap() {
		return menuMap;
	}

	public void setMenuMap(Map<String, SysMenu> menuMap) {
		this.menuMap = menuMap;
	}

	public int getPlayerNum() {
		return playerNum;
	}

	public void setPlayerNum(int playerNum) {
		this.playerNum = playerNum;
	}




	
}
  
package com.lyh.admin.shiro;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.lyh.admin.entity.SysMenu;
import com.lyh.admin.entity.SysModule;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.exception.MyWebException;
import com.lyh.admin.model.OsaMenuUrl;
import com.lyh.admin.model.OsaModule;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.model.OsaUserGroup;
import com.lyh.admin.service.OsaMenuUrlService;
import com.lyh.admin.service.OsaModuleService;
import com.lyh.admin.service.OsaUserGroupService;
import com.lyh.admin.service.OsaUserService;
import com.lyh.admin.tools.ToolUtils;

/**
 * 
 * <p>
 * Title: CustomRealm
 * </p>
 * <p>
 * Description:自定义realm
 * </p>
 * <p>
 * Company: www.itcast.com
 * </p>
 * 
 * @author 传智.燕青
 * @date 2015-3-23下午4:54:47
 * @version 1.0
 */
public class MyRealm extends AuthorizingRealm {
	private static Logger logger = LoggerFactory.getLogger(MyRealm.class);
	// 注入service
	@Autowired
	private OsaUserService sysService;
	
	@Autowired
	private OsaUserGroupService userGroupService;
	
	@Autowired
	private OsaModuleService moduleService;
	
	@Autowired
	private OsaMenuUrlService menuService;
	
	// 设置realm的名称
	@Override
	public void setName(String name) {
		super.setName("myRealm");
	}
	
	// 用于认证
	// 没有连接数据库的方法
	/* @Override protected AuthenticationInfo doGetAuthenticationInfo( AuthenticationToken token) throws AuthenticationException {
	 * 
	 * // token是用户输入的用户名和密码 // 第一步从token中取出用户名 String userCode = (String) token.getPrincipal();
	 * 
	 * // 第二步：根据用户输入的userCode从数据库查询 // ....
	 * 
	 * 
	 * // 如果查询不到返回null //数据库中用户账号是zhangsansan if(!userCode.equals("zhangsansan")){// return null; }
	 * 
	 * 
	 * // 模拟从数据库查询到密码 String password = "111111";
	 * 
	 * // 如果查询到返回认证信息AuthenticationInfo
	 * 
	 * //activeUser就是用户身份信息 ActiveUser activeUser = new ActiveUser();
	 * 
	 * activeUser.setUserid("zhangsan"); activeUser.setUsercode("zhangsan"); activeUser.setUsername("张三"); //..
	 * 
	 * //根据用户id取出菜单 //通过service取出菜单 List<SysPermission> menus = null; try { menus = sysService.findMenuListByUserId("zhangsan"); } catch (Exception e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } //将用户菜单 设置到activeUser activeUser.setMenus(menus);
	 * 
	 * 
	 * //将activeUser设置simpleAuthenticationInfo SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo( activeUser, password, this.getName());
	 * 
	 * return simpleAuthenticationInfo; } */
	
	// realm的认证方法，从数据库查询用户信息
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		// token是用户输入的用户名和密码
		// 第一步从token中取出用户名
		UsernamePasswordToken userCode = (UsernamePasswordToken) token;
		
		// 第二步：根据用户输入的userCode从数据库查询
		OsaUser user = null;
		try {
			user = sysService.findUserByUserName(userCode.getUsername());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			logger.error("用户::",e1);
			throw  new AuthenticationException("null");
		}
		
		// 如果查询不到返回null
		if (user == null) {//
			throw  new AuthenticationException("user");
		}
		// 从数据库查询到密码
		String password = user.getPassword();
		String uPassword = "";
			for ( char c :userCode.getPassword()){
				uPassword+=c;
			}
		if (!uPassword.equals(password)){
			throw new AuthenticationException("password");
		}
		
		// 盐
		String salt = "" + 1;
		
		// 如果查询到返回认证信息AuthenticationInfo
		
		// activeUser就是用户身份信息
		// ActiveUser activeUser = new ActiveUser();
		//
		// activeUser.setUserid(sysUser.getId());
		// activeUser.setUsercode(sysUser.getUsercode());
		// activeUser.setUsername(sysUser.getUsername());
		// ..
		SysUser sysUser = new SysUser();
		sysUser.setOsaUser(user);
		
		// 根据用户id取出菜单
		
		try {
			// 通过service取出菜单
			OsaUserGroup userGroup = userGroupService.findById(user.getUserGroup());
			int menuIds[] = ToolUtils.splitStringToInt(userGroup.getGroupRole(), ",");
			for (int i = 0; i < menuIds.length; i++) {
				OsaMenuUrl menuUrl = menuService.findById(menuIds[i]);
				if (menuUrl != null && menuUrl.getOnline() == 1) {
					SysMenu sysMenu = new SysMenu();
					sysMenu.setMenuUrl(menuUrl);
					if (menuUrl.getFatherMenu() > 0) {
						OsaMenuUrl fatherMenuUrl = menuService.findById(menuUrl.getFatherMenu());
						sysMenu.setFatherMenuName(fatherMenuUrl.getMenuName());
						sysMenu.setFatherMenuUrl(fatherMenuUrl.getMenuUrl());
					}
					// module
					SysModule sysModule = sysUser.getMapModule().get(menuUrl.getModuleId());
					if (sysModule == null) {
						OsaModule osaModule = moduleService.findById(menuUrl.getModuleId());
						sysModule = new SysModule();
						sysModule.setModule(osaModule);
						sysUser.getMenuLists().add(sysModule);
						sysUser.getMapModule().put(menuUrl.getModuleId(), sysModule);
					}
					
					sysMenu.setModuleId(sysModule.getModule().getModuleId());
					sysMenu.setModuleName(sysModule.getModule().getModuleName());
					sysMenu.setModuleUrl(sysModule.getModule().getModuleUrl());
					if (menuUrl.getIsShow() == 1) {
						sysModule.addMenu(sysMenu);
					}
					sysUser.getMenuMap().put(menuUrl.getMenuUrl(), sysMenu);
					
				} else {
					logger.error("没有找到菜单:" + menuIds[i]);
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error("realm::", e);
			throw new AuthenticationException("未知错误!");
		}
		// 将用户菜单 设置到activeUser
		
		// 将activeUser设置simpleAuthenticationInfo
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(sysUser, password, ByteSource.Util.bytes(salt), this.getName());

		return simpleAuthenticationInfo;
	}
	
	// 用于授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		
		// 从 principals获取主身份信息
		// 将getPrimaryPrincipal方法返回值转为真实身份类型（在上边的doGetAuthenticationInfo认证通过填充到SimpleAuthenticationInfo中身份类型），
		SysUser activeUser = (SysUser) principals.getPrimaryPrincipal();
		
		// 根据身份信息获取权限信息
		// 从数据库获取到权限数据
		
		// 单独定一个集合对象
		List<String> permissions = new ArrayList<String>();
		if (activeUser != null) {
			
			for (Map.Entry<String, SysMenu> entry : activeUser.getMenuMap().entrySet()) {
				permissions.add(entry.getKey());
			}
			
		}
		
		/* List<String> permissions = new ArrayList<String>(); permissions.add("user:create");//用户的创建 permissions.add("item:query");//商品查询权限 permissions.add("item:add");//商品添加权限
		 * permissions.add("item:edit");//商品修改权限 */ // ....
		
		// 查到权限数据，返回授权信息(要包括 上边的permissions)
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		// 将上边查询到授权信息填充到simpleAuthorizationInfo对象中
		simpleAuthorizationInfo.addStringPermissions(permissions);
		
		return simpleAuthorizationInfo;
	}
	
	// 清除缓存
	public void clearCached() {
		PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
		super.clearCache(principals);
	}
	
}

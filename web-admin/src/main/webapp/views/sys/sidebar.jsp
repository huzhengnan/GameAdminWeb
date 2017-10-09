<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${sidebarStatus == 'yes' }">
		<div id="sidebar-nav" class="sidebar-nav">
	</c:when>
	<c:otherwise>
		<div id="sidebar-nav" class="sidebar-nav-hide">
	</c:otherwise>
</c:choose>

<c:forEach items="sidebar" var="module">
	<c:if test="${fn:length($module.menu_list) gt 0}">
		<a href="#sidebar_menu_${module.module_id}>" class="nav-header collapsed" data-toggle="collapse"> <i class="${module.module_icon}"></i> ${module.module_name} <i class="icon-chevron-up"></i>
		</a>

		<c:choose>
			<c:when test="${ $module.module_id eq current_module_id}">

				<ul id="sidebar_menu_${module.module_id}" class="nav nav-list collapse in">
			</c:when>
			<c:otherwise>
				<ul id="sidebar_menu_${module.module_id}" class="nav nav-list collapse">
			</c:otherwise>
			<c:forEach items="${ module.menu_list}" var="menu_list">
				<li><a href="${ctxPage}/${menu_list.menu_url}">${menu_list.menu_name}</a></li>
			</c:forEach>
			</ul>
		</c:choose>
	</c:if>
</c:forEach>

<a target="_blank" href="www.baidu.com" class="nav-header"><i class="icon-question-sign"></i>帮助</a>
</div>
<!--- 以上为左侧菜单栏 sidebar --->

<c:choose>
	<c:when test="${sidebarStatus == 'yes' }">
		<div id="content" class="content">
	</c:when>
	<c:otherwise>
		<div id="content" class="content-fullscreen">
	</c:otherwise>

</c:choose>

<div class="header">
	<div class="stats">
		<p class="stat">
			<!--span class="number"></span-->
		</p>
	</div>

	<h1 class="page-title">${content_header.menu_name}</h1>
</div>

<ul class="breadcrumb">
	<li><a href="${ctxPage}/${content_header.module_url}"> ${content_header.module_name} </a> <span class="divider">/</span></li>
	<c:if test="${content_header.father_menu !=null }">
		<li><a href="${ctxPage }/${content_header.father_menu_url}"> ${content_header.father_menu_name} </a> <span class="divider">/</span></li>
	</c:if>
	<li class="active">${content_header.menu_name}</li>
</ul>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="bb-alert alert alert-info" style="display: none;">
			<span>操作成功</span>
		</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>

<%-- 
<form class="form_search" action="${ctxPage}/player_search" method="post" style="margin-bottom:0px">
	<div style="float:left;margin-right:5px">
		<label>角色查询</label>
		<input type="number" name="playerId" value="" placeholder="输入角色ID">
	</div>
	<div style="float:left;margin-right:5px">
		<label>查询账号</label>
		<input type="text" name="openId" value="" placeholder="输入账号名">
	</div>
	<div class="btn-toolbar" style="padding-top:25px;padding-bottom:0px;margin-bottom:0px">
		<button type="submit" class="btn btn-primary">检索</button>
	</div>
	<div style="clear:both;"></div>
</form>
--%>

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">${page_title}</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>


					<th style="width :150px">单号</th>
					<th style="width :150px">账号</th>
					<th style="width :100px">单价</th>
					<th style="width :100px">金额</th>
					<th style="width :80">时间</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td>${item.billno}</td>
						<td>${item.openId}</td>
						<td>${item.money}</td>
						<td>${item.gold}</td>
			
						<td>${item.addtime }</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--- START 分页模板 --->
		${pages}
		<p>
			充值总额:
			<span style="color: red;">${totalPay}</span>
			;

		</p>

		<!--- END --->
	</div>
</div>

<%@include file="sys/footer.jsp"%>
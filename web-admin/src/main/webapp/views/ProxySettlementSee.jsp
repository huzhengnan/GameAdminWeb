<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="sys/header.jsp"%>
<%@include file="sys/navibar.jsp"%>
<%@include file="sys/sidebar.jsp"%>

<div class="btn-toolbar" style="margin-bottom:2px;">
	<a href="${ctxPage}/proxy/settlement_pay?id=${id}" class="btn btn-primary">
		<i class="icon-plus"></i>
		结算
	</a>
</div>

<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">${page_title}</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
		<th style="width: 50px">序</th>
					<th style="width: 150px">交易号</th>
					<th style="width: 80px">充值者名称</th>
					<th style="width: 80px">充值金额</th>
					<th style="width: 80px">提成金额</th>
					<th style="width: 80px">是否是代理</th>
					<th style="width: 200px">充值时间</th>
				
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td style="text-align: center">
							<input type="checkbox" name="ids" value="${item.id}" id="act${item.id}" />
						</td>

						<td>${item.traderOrder}</td>
						<td>${item.name}</td>
						<td>${item.money}</td>
						<td>${item.fetchMoney}</td>
						<td>
						<c:choose>
							<c:when test="${item.isProxy eq '1'}">代理</c:when>
							<c:otherwise>玩家</c:otherwise>
						</c:choose>
						
						</td>
						<td>
							<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
			
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--- START 分页模板 --->
		${pages}
		<!--- END --->
	</div>
</div>
<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}
	</script>
	
	
<%@include file="sys/footer.jsp"%>
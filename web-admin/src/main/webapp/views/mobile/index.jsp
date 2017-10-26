<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctxPage" value="${pageContext.request.contextPath}" />
<%@include file="mobile_header.jsp"%>
<%@include file="mobile_navibar.jsp"%>

<%@include file="mobile_sidebar.jsp"%>


<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">代理推广</a>
	<div id="page-stats" class="block-body collapse in">
		<table class="table table-striped table-bordered table-condensed">

			<tr>
				<td >
					<button onclick="myInfo();">
						<h3 style="color: green;">我的推广</h3>
					</button>
				</td>

				<td>
					<button onclick="queryTrader();">
						<h3 style="color: red;">订单查询</h3>
					</button>
				</td>
			</tr>

		</table>

	</div>
</div>



<script type="text/javascript">
	var msg = "${msg}";
	if (msg != null && msg != "") {
		alert(msg);
	}
	
	function queryTrader(){
		window.location.href="${ctxPage}/mobile/order_list"
	}
	
	function myInfo(){
		window.location.href="${ctxPage}/mobile/my_info"
	}
</script>
<%@include file="mobile_footer.jsp"%>
<%@include file="simple_header.jsp" %>
  <body class="simple_body">

    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                </ul>
                <a class="brand" href="${ctxPage }/index"><span class="first"></span> <span class="second">${sessionScope.company}</span></a>
        </div>
    </div>
<div>

<div class="container-fluid">	
        <div class="row-fluid">
			<div class="http-error">
			<!--  
				<c:choose>
				<c:when test="${type == 'success' }">
					<h1>Yep!</h1>
				</c:when>
				<c:when test="${type == 'error' }">
						<h1>Oops!</h1>
				</c:when>
				<c:otherwise>
				<h1>O~!</h1>
				</c:otherwise>
				</c:choose>
			-->
				<p class="info">${msg}</p>
				<h2>返回 <a href="${ctxPage }/${forward_url}">${forward_title}</a></h2>
			</div>
	<div>
	<%@include file="footer.jsp" %>




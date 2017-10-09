<%@include file="simple_header.jsp"%><!--静态包含-->
  <body> 
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                </ul>
                <a class="brand" href="${ctxPage }/index"><span class="first"></span> <span class="second"><{$smarty.const.COMPANY_NAME}></span></a>
        </div>
    </div>
<div>
<div class="container-fluid">	   
<div class="row-fluid">
    <div class="http-error">
		<p></p>
        <h1>Oops!</h1>
        <p class="info">${msg}</p>
        <p><h3><a href="${ctxPage }/${forward_url}">${forward_title}</a></h3></p>
    </div>

<%@include file="footer.jsp" %>

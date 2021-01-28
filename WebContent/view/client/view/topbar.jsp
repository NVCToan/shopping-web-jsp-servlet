
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file ="/common/taglib.jsp" %>
<c:url value="/view/client/static" var="url"></c:url>
<c:set var="current" value="${param.ddlLanguage}" scope="session"/>
<c:if test="${not empty current }">
	<fmt:setLocale value="${current}" scope = "session"/>
</c:if>

	<fmt:setBundle basename="message" scope = "session" />
	
<div class="topbar-v3">
	<div class="search-open">
		<div class="container">
			<input type="text" class="form-control" placeholder="Search">
			<div class="search-close">
				<i class="icon-close"></i>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<!-- Topbar Navigation -->
				<ul class="left-topbar">
					<li>
						<c:url value="${requestScope['javax.servlet.forward.query_string']}" var="currentURL"/>
					<form action="#" method="POST">
						<select name="ddlLanguage">
							<option value="en_US" >
								Enlish
							</option>
							<option value="vi_VN" >
								VietNamese
							</option>
						</select>
					
					<input type="submit" value="<fmt:message key="button_submit"/>"/>
					</form>
					<b style="color:white"><fmt:message key="hello"/></b>
					</li>
						
				</ul>
				<!--/end left-topbar-->
			</div>
			<c:choose>
				<c:when test="${sessionScope.account == null}">
					<div class="col-sm-6">
						<ul class="list-inline right-topbar pull-right">
							<li><a href="<c:url value="/view/client/view/login.jsp"/>"><fmt:message key="login"/></a>
								| <a href="<c:url value="/register"/>"><fmt:message key="register"/></a></li>
							<li><i class="search fa fa-search search-button"></i></li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-sm-6">
						<ul class="list-inline right-topbar pull-right">
							<li><a href="<c:url value="/member/myaccount"/>"><fmt:message key="myaccount"/></a> | <a
								href="<c:url value="/logout"/>"><fmt:message key="logout"/></a></li>
							<li><i class="search fa fa-search search-button"></i></li>
						</ul>
					</div>
				</c:otherwise>
			</c:choose>



		</div>
	</div>
	<!--/container-->
</div>

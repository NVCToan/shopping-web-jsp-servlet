<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file ="/common/taglib.jsp" %>
<c:url value="/view/client/static" var="urlImage"></c:url>
<c:url value="/" var="homeURL"></c:url>
<div class="navbar navbar-default mega-menu" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href='<c:out value="${homeURL}/home"></c:out>'>
				<img id="logo-header" src="${urlImage}/img/logo.png" alt="Logo">
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-responsive-collapse">
			<!-- Shopping Cart -->
			<jsp:include page="/view/client/view/cart.jsp"></jsp:include>
			<!-- End Shopping Cart -->
			
			<!-- Nav Menu -->
			<ul class="nav navbar-nav">
				<!-- Pages -->
				<li class="dropdown active"><a href="javascript:void(0);"
					class="dropdown-toggle" data-hover="dropdown"
					data-toggle="dropdown"> <fmt:message key="pages"/> </a>
					<ul class="dropdown-menu">
						
					
						
						<li><a href="${homeURL}">Index</a></li>
						<li><a href="<c:url value="/product/list" />"> <fmt:message key="product_page"/></a></li>
						<li><a href="<c:url value="/filterGrid" />"><fmt:message key="filter_grid_page"/></a></li>
						<li><a href="<c:url value="/member/cart" />"><fmt:message key="cart"/></a></li>
						<li><a href="<c:url value="/member/cart"/>"><fmt:message key="checkout"/></a></li>
						<li><a href="<c:url value="/login"/> "><fmt:message key="login"/></a></li>
						<li class="active"><a
							href="<c:url value="/register"/>"><fmt:message key="register"/></a></li>
					</ul></li>
				<!-- End Pages -->

				<!-- Promotion -->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-hover="dropdown"
					data-toggle="dropdown"> <fmt:message key="promotion"/> </a>
					<ul class="dropdown-menu">
						<li class="dropdown-submenu"><a href="javascript:void(0);">Jeans</a>
							<ul class="dropdown-menu">
								<li><a href="#">Skinny Jeans</a></li>
								<li><a href="#">Bootcut Jeans</a></li>
								<li><a href="#">Straight Cut Jeans</a></li>
							</ul></li>
						<li class="dropdown-submenu"><a href="javascript:void(0);">Shoes</a>
							<ul class="dropdown-menu">
								<li><a href="#">Sandals</a></li>
								<li><a href="#">Heels</a></li>
							</ul></li>
					</ul></li>
				<!-- End Promotion -->

				<!-- Gifts -->
				<li class="dropdown mega-menu-fullwidth"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-hover="dropdown" data-toggle="dropdown"> <fmt:message key="gifts"/>  </a>
					<ul class="dropdown-menu">
						<li>
							<div class="mega-menu-content">
								<div class="container">
									<div class="row">
										<div class="col-md-3 col-sm-12 col-xs-12 md-margin-bottom-30">
											<h3 class="mega-menu-heading">Pellentes que nec diam
												lectus</h3>
											<p>Proin pulvinar libero quis auctor pharet ra. Aenean
												fermentum met us orci, sedf eugiat augue pulvina r vitae.
												Nulla dolor nisl, molestie nec aliquam vitae, gravida sodals
												dolor...</p>
											<button type="button" class="btn-u btn-u-dark"><fmt:message key="readmore"/> </button>
										</div>
										<%--  <div class="col-md-3 col-sm-4 col-xs-4 md-margin-bottom-30">
                                                    <a href="#"><img class="product-offers img-responsive" src="${urlImage}/img/blog/01.jpg" alt=""></a>
                                                </div>
                                                <div class="col-md-3 col-sm-4 col-xs-4 sm-margin-bottom-30">
                                                    <a href="#"><img class="product-offers img-responsive" src="${urlImage}/img/blog/02.jpg" alt=""></a>
                                                </div>
                                                <div class="col-md-3 col-sm-4 col-xs-4">
                                                    <a href="#"><img class="product-offers img-responsive" src="${urlImage}/img/blog/03.jpg" alt=""></a>
                                                </div> --%>
									</div>
									<!--/end row-->
								</div>
								<!--/end container-->
							</div> <!--/end mega menu content-->
						</li>
					</ul> <!--/end dropdown-menu--></li>
				<!-- End Gifts -->
				<!-- Clothes -->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-hover="dropdown"
					data-toggle="dropdown" data-delay="1000"><fmt:message key="clothes"/> </a>
					<ul class="dropdown-menu">
						<li><a
							href="<c:url value="/product/category?cate_id=1"/>"><fmt:message key="men"/></a></li>
						<li><a
							href="<c:url value="/product/category?cate_id=2"/>"><fmt:message key="women"/></a></li>
						<li><a
							href="<c:url value="/product/category?cate_id=3"/>"><fmt:message key="children"/></a></li>
					</ul></li>
				<!-- End Clothes -->

				<!-- Main Demo -->
				<li><a href="#"><fmt:message key="maindemo"/> </a></li>
				<!-- Main Demo -->
			</ul>
			<!-- End Nav Menu -->
		</div>
	</div>
</div>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head lang="en">
		<meta charset="utf-8" />
		<title>蜡艺香薰</title>
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
		<link rel="stylesheet" type="text/css" href="css/proList.css"/>
	</head>
	<body>
		<!------------------------------head------------------------------>
		<%@ include file="topbar.jsp"%>

		<c:if test="${empty jgoodsList&& empty msg}">
			<c:redirect url="goods?method=findXX"></c:redirect>
		</c:if>
		<!-----------------banner------------------------------->
		<div class="banner">
			<a href="#"><img src="img/temp/perfume_Banner.jpg"/></a>
		</div>	
		<!-----------------address------------------------------->
		<div class="address">
			<div class="wrapper clearfix">
				<a href="index.jsp">首页</a>
				<span>/</span>
				<a href="perfume.jsp" class="on">蜡艺香薰</a>
			</div>
		</div>
		<!-----------------paintCon------------------------------->
		<div class="paintCon">
			<section class="wrapper">
				<h3><img src="img/temp/perfumeTit01.jpg"></h3>
				<img src="img/temp/xxB01.jpg" />
				<div class="paintList">
					<c:forEach items="${requestScope.jgoodsList}" end="5" var="o">
						<a href="goods?method=showInfo&g_id=${o.g_id}">
							<dl>
								<dt><img style="width: 374px;height: 374px" src="${o.g_url}"></dt>
								<dd>${o.g_name}</dd>
								<dd>￥${o.g_price}</dd>
							</dl>
						</a>
					</c:forEach>
<%--					<a href="proDetail.jsp">--%>
<%--						<dl>--%>
<%--							<dt><img src="img/temp/xx01.jpg"></dt>--%>
<%--							<dd>新中式客厅山水装饰画墙壁挂画 </dd>--%>
<%--							<dd>￥299.90</dd>--%>
<%--						</dl>--%>
<%--					</a>--%>

				</div>
			</section>
			<section class="wrapper">
				<h3><img src="img/temp/perfumeTit02.jpg"></h3>
				<img src="img/temp/xxB02.jpg" />
				<div class="paintList">
					<c:forEach items="${requestScope.fgoodsList}" end="5" var="o">
						<a href="goods?method=showInfo&g_id=${o.g_id}">
							<dl>
								<dt><img style="width: 374px;height: 374px" src="${o.g_url}"></dt>
								<dd>${o.g_name}</dd>
								<dd>￥${o.g_price}</dd>
							</dl>
						</a>
					</c:forEach>
				</div>
			</section>
		</div>
		<!--返回顶部-->
		<div class="gotop">
			<a href="cart.jsp">
			<dl>
				<dt><img src="img/gt1.png"/></dt>
				<dd>去购<br />物车</dd>
			</dl>
			</a>
			<a href="#" class="dh">
			<dl>
				<dt><img src="img/gt2.png"/></dt>
				<dd>联系<br />客服</dd>
			</dl>
			</a>
			<a href="mygxin.jsp">
			<dl>
				<dt><img src="img/gt3.png"/></dt>
				<dd>个人<br />中心</dd>
			</dl>
			</a>
			<a href="#" class="toptop" style="display: none;">
			<dl>
				<dt><img src="img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>
		<div class="msk"></div>
		<!--footer-->
		<div class="footer">
			<div class="top">
				<div class="wrapper">
					<div class="clearfix">
						<a href="#2" class="fl"><img src="img/foot1.png"/></a>
						<span class="fl">7天无理由退货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="img/foot2.png"/></a>
						<span class="fl">15天免费换货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="img/foot3.png"/></a>
						<span class="fl">满599包邮</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="img/foot4.png"/></a>
						<span class="fl">手机特色服务</span>
					</div>
				</div>
			</div>
			<p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br />
			违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
		</div>
		<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
		<!--<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>-->
	</body>
</html>

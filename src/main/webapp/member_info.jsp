<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="syl" uri="http://syl.login-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>修改个人资料</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_form.css" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js" ></script>
</head>
<body>
	 <jsp:include page="/head.jsp"></jsp:include>
		<!-- Header Menu -->
		<div class="shop_hd_menu">
			<!-- 所有商品菜单 -->
                  <syl:loginTag/>
			<div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category"><!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
				<div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a></h2><i></i></div>
				<div id="shop_hd_menu_all_category_hd" class="shop_hd_menu_all_category_hd">
					<ul class="shop_hd_menu_all_category_hd_menu clearfix">
						<!-- 单个菜单项 -->
						<li id="cat_1" class="">
							<h3><a href="" title="男女服装">男女服装</a></h3>
							<div id="cat_1_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt>女装</dt>

									<dd>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=连衣裙">连衣裙</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=半身裙">半身裙</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=牛仔裤">牛仔裤</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=打底衫">打底衫</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢大衣">毛呢大衣</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">毛呢短裤</a>
									</dd>


								</dl>

								<dl class="clearfix">
									<dt>男装</dt>
									<dd>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=男装">风衣</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">长裤</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">短裤</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">短袖</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">长袖</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">羽绒服</a>
										<a href="${pageContext.request.contextPath}/client/product/findProductByCategory.do?cname=毛呢短裤">保暖裤</a>
									</dd>
								</dl>
							</div>
						</li>
						<!-- 单个菜单项 End -->
						<li id="cat_2" class="">
							<h3><a href="" title="鞋包配饰">鞋包配饰</a></h3>
							<div id="cat_2_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="鞋子" href="">鞋子</a></dt>
									<dd>
										<a href="">暂无商品</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt><a href="包包" href="">包包</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>
							</div>
						</li>

						<li id="cat_3" class="">
							<h3><a href="" title="食品饮料">食品饮料</a></h3>
							<div id="cat_3_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="食品饮料" href="">食品饮料</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>
							</div>
						</li>

						<li id="cat_4" class="">
							<h3><a href="" title="电子产品">电子产品</a></h3>
							<div id="cat_4_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="电子产品" href="">电子产品</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>
							</div>
						</li>

						<li id="cat_5" class="">
							<h3><a href="" title="厨房家电">厨房家电</a></h3>
							<div id="cat_5_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="厨房家电" href="">厨房家电</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>

							</div>
						</li>

						<li id="cat_6" class="">
							<h3><a href="" title="图书文具">图书文具</a></h3>
							<div id="cat_6_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="图书文具" href="">图书文具</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>

							</div>
						</li>
						<li id="cat_7" class="">
							<h3><a href="" title="家居装修">家居装修</a></h3>
							<div id="cat_7_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="家居装修" href="">家居装修</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>
							</div>
						</li>
						<li id="cat_8" class="">
							<h3><a href="" title="美容美妆">美容美妆</a></h3>
							<div id="cat_8_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="美容" href="">美容</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt><a href="美妆" href="">美妆</a></dt>
									<dd>
										<a href="">暂无</a>
									</dd>
								</dl>
							</div>
						</li>
						<li class="more"><a href="">查看更多分类</a></li>
					</ul>
				</div>
			</div>
			<!-- 所有商品菜单 END -->

			<!-- 普通导航菜单 -->
			<ul class="shop_hd_menu_nav">
				<li class="current_link"><a href=""><span>首页</span></a></li>
				<li class="link"><a href=""><span>团购</span></a></li>
				<li class="link"><a href=""><span>品牌</span></a></li>
				<li class="link"><a href=""><span>优惠卷</span></a></li>
				<li class="link"><a href=""><span>积分中心</span></a></li>
				<li class="link"><a href=""><span>运动专场</span></a></li>
				<li class="link"><a href=""><span>微商城</span></a></li>
			</ul>
			<!-- 普通导航菜单 End -->
		</div>
		<!-- Header Menu End -->

	</div>
	 <div class="clear"></div>
	 <!-- 面包屑 注意首页没有 -->
	 <div class="shop_hd_breadcrumb">
		 <strong>当前位置：</strong>
		 <span>
			<a href="${pageContext.request.contextPath}/index_in.jsp">首页</a>&nbsp;›&nbsp;
			<a href="${pageContext.request.contextPath}/myhome.jsp">我的商城</a>&nbsp;›&nbsp;
			<a href="${pageContext.request.contextPath}/client/order/myOrder.do">已买到商品</a>
		</span>
	 </div>
	 <div class="clear"></div>
	 <!-- 面包屑 End -->

	 <!-- Header End -->

	 <!-- 我的个人中心 -->
	 <div class="shop_member_bd clearfix">
		 <!-- 左边导航 -->
		 <div class="shop_member_bd_left clearfix">

			 <div class="shop_member_bd_left_pic">
				 <a href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/avatar.png"/></a>
			 </div>
			 <div class="clear"></div>

			 <dl>
				 <dt>我的交易</dt>
				 <dd><span><a href="${pageContext.request.contextPath}/client/order/myOrder.do">已购买商品</a></span></dd>
				 <dd><span><a href="${pageContext.request.contextPath}/client/collect/myFavorite.do">我的收藏</a></span></dd>
				 <%--            <dd><span><a href="">评价管理</a></span></dd>--%>
			 </dl>

			 <dl>
				 <dt>我的账户</dt>
				 <dd><span><a href="${pageContext.request.contextPath }/member_info.jsp">个人资料</a></span></dd>
				 <dd><span><a href="${pageContext.request.contextPath }/password_eidt.jsp">密码修改</a></span></dd>
				 <dd><span><a href="${pageContext.request.contextPath }/client/address/findAddress.do">收货地址</a></span></dd>
			 </dl>

		 </div>
		 <!-- 左边导航 End -->
		
		<!-- 右边购物列表 -->
		<div class="shop_member_bd_right clearfix">
			
			<div class="shop_meber_bd_good_lists clearfix">
				<div class="title"><h3>基本信息</h3></div>
				<div class="clear"></div>
				<div class="shop_home_form">
					<form action="${pageContext.request.contextPath}/client/user/updateUser.do" class="shop_form"
						  method="post">
						<ul>
							<li><label>用户名称：</label>${login_user.username}</li>
							<li><label>电子邮件：</label>${login_user.email }</li>
							<li><label>真实姓名：</label><input type="text" class="truename form-text"
														   value="${login_user.name }" name="name"/></li>
							<li><label>性别:</label>

								<input type="radio" id="-1" class="mr5" name="sex"
									   <c:if test="${login_user.sex==-1}">checked</c:if> value="-1"/>保密
								<input type="radio" id="0" class="ml10 mr5" name="sex"
									   <c:if test="${login_user.sex==0}">checked</c:if> value="0"/>男
								<input type="radio" id="1" class="ml10 mr5" name="sex"
									   <c:if test="${login_user.sex==1}">checked</c:if> value="1"/>女
							</li>
							<li class="bn"><label>&nbsp;</label><input type="submit" class="form-submit" value="保存修改"/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
		<!-- 右边购物列表 End -->

	</div>
	<!-- 我的个人中心 End -->

	<!-- Footer - wll - 2013/3/24 -->
	<div class="clear"></div>
	<div class="shop_footer">
            <div class="shop_footer_link">
                <p>
                    <a href="">首页</a>|
                    <a href="">招聘英才</a>|
                    <a href="">广告合作</a>|
                    <a href="">关于ShopCZ</a>|
                    <a href="">关于我们</a>
                </p>
            </div>
            <div class="shop_footer_copy">
               <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
            </div>
        </div>
	<!-- Footer End -->
</body>
</html>
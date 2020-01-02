<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="syl" uri="http://syl.login-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>购物车页面</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_gouwuche.css" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.goodnums.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_gouwuche.js" ></script>
	<script>
		function changeProductNum(count, totalCount, id) {
			count = parseInt(count);
			totalCount = parseInt(totalCount);
			//如果数量为0，判断是否要删除商品
			if (count == 0) {
				var flag = window.confirm("确认删除商品吗?");

				if (!flag) {
					count = 1;
				} else
					count = 0;

			}

			if (count > totalCount) {
				alert("已达到商品最大购买量");
				count = totalCount;
			}
			if (count < 0) {
				alert("件数不能为负!");
				count = 0;
			}

			location.href = "${pageContext.request.contextPath}/client/order/changeCart.do?id="
					+ id + "&count=" + count;
		}

	</script>
</head>
<body>
	 <jsp:include page="/head.jsp"></jsp:include>
	 <syl:loginTag/>
		<!-- Header Menu -->
		<div class="shop_hd_menu">
			<!-- 所有商品菜单 -->
                        
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
				<li class="current_link"><a href="${pageContext.request.contextPath }"><span>首页</span></a></li>
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
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">我的商城</a>&nbsp;›&nbsp;
			<a href="">我的购物车</a>
		</span>
	</div>
	<div class="clear"></div>
	<!-- 面包屑 End -->

	<!-- Header End -->
	 <c:set var="total" value="0"/>
	<!-- 购物车 Body -->
	<div class="shop_gwc_bd clearfix">
		<!-- 在具体实现的时候，根据情况选择其中一种情况 -->
		<!-- 购物车为空 -->
			<div class="empty_cart mb10" <c:if test="${cart!=null}">style="display: none"  </c:if>>

				<div class="message">
					<p>购物车内暂时没有商品，您可以<a href="${pageContext.request.contextPath }">去首页</a>挑选喜欢的商品</p>
				</div>

				<c:if test="${!empty cart.map }">

			</c:if>
			</div>
		<!-- 购物车为空 end-->
		
		<!-- 购物车有商品 -->
		<div class="shop_gwc_bd_contents clearfix">
			<!-- 购物流程导航 -->
			<div class="shop_gwc_bd_contents_lc clearfix">
				<ul>
					<li class="step_a hover_a">确认购物清单</li>
					<li class="step_b">确认收货人资料及送货方式</li>
					<li class="step_c">购买完成</li>
				</ul>
			</div>
			<!-- 购物流程导航 End -->

			<!-- 购物车列表 -->
			<table>
				<thead>
					<tr>
						<th colspan="2"><span>商品</span></th>
						<th><span>单价(元)</span></th>
						<th><span>数量</span></th>
						<th><span>小计</span></th>
						<th><span>操作</span></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${cart}" var="entry">
				
				

						<tr>
						<td   class="gwc_list_pic"><a href=""><img style="width: 60px;height: 60px" src="${entry.key.pimage }" /></a></td>
						<td class="gwc_list_title"><a href="">${entry.key.pname } </a></td>
						<td class="gwc_list_danjia"><span>￥<strong id="danjia_001">${entry.key.price }</strong></span></td>
						<td class="gwc_list_shuliang"><span><a class="good_num_jian this_good_nums" did="danjia_001" xid="xiaoji_001" ty="-" valId="goods_001" onclick="changeProductNum('${entry.value-1}','${entry.key.pnumber}','${entry.key.pid}')" href="javascript:void(0);">-</a><input type="text" readonly value="${entry.value }" id="goods_001" class="good_nums" /><a href="javascript:void(0);" did="danjia_001" xid="xiaoji_001" ty="+" class="good_num_jia this_good_nums" valId="goods_001" onclick="changeProductNum('${entry.value+1}','${entry.key.pnumber}','${entry.key.pid}')">+</a></span></td>
						<td class="gwc_list_xiaoji"><span>￥<strong id="xiaoji_001" class="good_xiaojis">${entry.key.price*entry.value }</strong></span></td>
						<td  class="gwc_list_caozuo"><a style="margin: 0px" href="${pageContext.request.contextPath}/client/collect/addFavorite.do?pid=${entry.key.pid}">收藏</a><a style="margin-left: 5px"  href="${pageContext.request.contextPath }/client/order/changeCart.do?pid=${entry.key.pid}&count=0"  class="shop_good_delete">删除</a></td>
					</tr>
					<c:set value="${total+entry.key.price*entry.value}" var="total"/>
					</c:forEach>

					

					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div class="gwc_foot_zongjia">商品总价(不含运费)<span>￥<strong id="good_zongjia">${total }</strong></span></div>
							<div class="clear"></div>
							<div class="gwc_foot_links">
								<a href="${pageContext.request.contextPath }/client/product/showIndex.do" class="go">继续购物</a>
								<a <c:if test="${total==0}">style="display: none" </c:if>href="${pageContext.request.contextPath }/client/order/confirmCart.do" class="op">确认并填写订单</a>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
			<!-- 购物车列表 End -->
		</div>
		<!-- 购物车有商品 end -->

	</div>
	<!-- 购物车 Body End -->

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
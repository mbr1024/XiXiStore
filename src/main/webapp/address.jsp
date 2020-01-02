<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="syl" uri="http://syl.login-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>管理收货地址</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_manager.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_shdz_835.css" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js"></script>
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
<syl:loginTag/>
<!-- TopHeader Center -->
<div class="shop_hd_header">
    <div class="shop_hd_header_logo"><h1 class="logo"><a href="/"><img src="${pageContext.request.contextPath}/images/logo.png" alt="ShopCZ"/></a><span>ShopCZ</span>
    </h1></div>
    <div class="shop_hd_header_search">
        <ul class="shop_hd_header_search_tab">
            <li id="search" class="current">商品</li>
            <li id="shop_search">店铺</li>
        </ul>
        <div class="clear"></div>
        <div class="search_form">
            <form method="post" action="${pageContext.request.contextPath}/client/product/findProductByName.do">
                <div class="search_formstyle">
                    <input type="text" class="search_form_text" name="search_content" value="搜索其实很简单！"/>
                    <input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索"/>
                </div>
            </form>
        </div>
        <div class="clear"></div>
        <div class="search_tag">
            <a href="">李宁</a>
            <a href="">耐克</a>
            <a href="">Kappa</a>
            <a href="">双肩包</a>
            <a href="">手提包</a>
        </div>

    </div>
</div>
<div class="clear"></div>
<!-- TopHeader Center End -->

<!-- Header Menu -->
<div class="shop_hd_menu">
    <!-- 所有商品菜单 -->

    <div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category">
        <!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
        <div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a></h2>
            <i></i></div>
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
            <div class="title"><h3>管理收货地址<a style="float:right;" href="javasrcipt:void(0);"
                                            id="new_add_shdz_btn">新增收货地址</a></h3></div>
            <div class="clear"></div>
            <!-- 收货人地址 Title End -->
            <div class="shop_bd_shdz clearfix">
                <div class="shop_bd_shdz_lists clearfix">
                    <ul>
                        <c:forEach items="${addressList}" var="address">


                            <li><label><span><input type="radio"
                                                    name="shdz"/></span></label><em>${address.province}</em><em>${address.city }市</em><em>${address.area}区</em><em>${address.address }</em><em>${address.name }(收)</em><em>${address.telephone }</em><span
                                    class="admin_shdz_btn"><a
                                    href="${pageContext.request.contextPath}/client/address/modifyAddress.do?did=${address.did}&type=select">编辑</a><a
                                    href="${pageContext.request.contextPath}/client/address/deleteAddress.do?did=${address.did}">删除</a></span>
                            </li>


                        </c:forEach>


                    </ul>
                </div>
                <!-- 新增收货地址 -->
                <div id="new_add_shdz_contents" style="display:none;" class="shop_bd_shdz_new clearfix">
                    <div class="title">新增收货地址</div>
                    <div class="shdz_new_form">
                        <form action="${pageContext.request.contextPath}/client/address/addAddress.do" method="post">
                            <ul>
                                <li><label ><span>*</span>收货人姓名：</label><input type="text" name="name" class="name"/></li>
                                <li><label ><span>*</span>所在地址：</label>
                                    <select name="province">
                                        <option value="">北京</option>
                                    </select>
                                    <select name="city">
                                        <option value="">北京</option>
                                    </select>
                                    <select name="area">
                                        <option value="">昌平</option>
                                    </select>
                                </li>
                                <li><label ><span>*</span>详细地址：</label><input type="text" class="xiangxi" name="address"/></li>
                                <li><label ><span></span>邮政编码：</label><input type="text" class="youbian" name="code"/></li>
                                <li><label ><span></span>电话：</label><input type="text" class="dianhua" name="phone"/></li>
                                <li><label ><span></span>手机号：</label><input type="text" class="shouji" name="telephone"/></li>
                                <li><label >&nbsp;</label><input type="submit" value="增加收货地址"/></li>
                            </ul>
                        </form>
                    </div>
                </div>
                <!-- 新增收货地址 End -->
            </div>
            <div class="clear"></div>
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
<script type="text/javascript">
    jQuery(function () {
        jQuery("#new_add_shdz_btn").toggle(function () {
            jQuery("#new_add_shdz_contents").show(500);
        }, function () {
            jQuery("#new_add_shdz_contents").hide(500);
        });
    });
</script>
</body>
</html>
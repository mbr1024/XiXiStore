<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>商品详细页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_list.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_goods.css" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_goods.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>

<!-- TopHeader Center -->
<div class="shop_hd_header">
    <div class="shop_hd_header_logo"><h1 class="logo"><a href="${pageContext.request.contextPath}/index_in.jsp"><img
            src="${pageContext.request.contextPath}/images/logo.png" alt="ShopCZ"/></a><span>ShopCZ</span></h1></div>
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

</div>
<div class="clear"></div>
<!-- 面包屑 注意首页没有 -->
<div class="shop_hd_breadcrumb">
    <strong>当前位置：</strong>
    <span>
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">商品分类</a>&nbsp;›&nbsp;
			<a href="">男装女装</a>&nbsp;›&nbsp;
			<a href="">男装</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->

<!-- Goods Body -->
<div class="shop_goods_bd clear">

    <!-- 商品展示 -->
    <div class="shop_goods_show">
        <div class="shop_goods_show_left">
            <!-- 京东商品展示 -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_goodPic.css" type="text/css"/>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_goodPic_base.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/lib.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/163css.js"></script>
            <div id="preview">
                <div class=jqzoom id="spec-n1" onClick="window.open('/')"><IMG height="350"
                                                                               src="${pageContext.request.contextPath}/${product.pimage }"
                                                                               jqimg="${pageContext.request.contextPath}/${product.pimage }"
                                                                               width="350">
                </div>
                <div id="spec-n5">
                    <div class=control id="spec-left">
                        <img src="${pageContext.request.contextPath}/images/left.gif"/>
                    </div>
                    <div id="spec-list">
                        <ul class="list-h">
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                            <li><img src="${pageContext.request.contextPath}/${product.pimage }"></li>
                        </ul>
                    </div>
                    <div class=control id="spec-right">
                        <img src="${pageContext.request.contextPath}/images/right.gif"/>
                    </div>

                </div>
            </div>

            <SCRIPT type=text/javascript>
                $(function () {
                    $(".jqzoom").jqueryzoom({
                        xzoom: 400,
                        yzoom: 400,
                        offset: 10,
                        position: "right",
                        preload: 1,
                        lens: 1
                    });
                    $("#spec-list").jdMarquee({
                        deriction: "left",
                        width: 350,
                        height: 56,
                        step: 2,
                        speed: 4,
                        delay: 10,
                        control: true,
                        _front: "#spec-right",
                        _back: "#spec-left"
                    });
                    $("#spec-list img").bind("mouseover", function () {
                        var src = $(this).attr("src");
                        $("#spec-n1 img").eq(0).attr({
                            src: src.replace("\/n5\/", "\/n1\/"),
                            jqimg: src.replace("\/n5\/", "\/n0\/")
                        });
                        $(this).css({
                            "border": "2px solid #ff6600",
                            "padding": "1px"
                        });
                    }).bind("mouseout", function () {
                        $(this).css({
                            "border": "1px solid #ccc",
                            "padding": "2px"
                        });
                    });
                })
            </SCRIPT>
            <!-- 京东商品展示 End -->

        </div>
        <div class="shop_goods_show_right">
            <ul>
                <li>
                    <strong style="font-size:14px; font-weight:bold;">${product.pname }</strong>
                </li>
                <br/>
                <br/>
                <br/>
                <br/>
                <li>
                    <label>价格：</label>
                    <span><strong>${product.price }</strong>元</span>
                </li>
                <li>
                    <label>运费：</label>
                    <span>卖家承担运费</span>
                </li>
                <li>
                    <label>累计售出：</label>
                    <span>${product.succ_count }件</span>
                </li>
                <li>
                    <label>评价：</label>
                    <span>0条评论</span>
                </li>
                <li class="goods_num">
                    <label>购买数量：</label>
                    <span><a class="good_num_jian" id="good_num_jian" href="javascript:void(0);"></a><input type="text"
                                                                                                            name="num"
                                                                                                            value="1"
                                                                                                            id="good_nums"
                                                                                                            class="good_nums"/><a
                            href="javascript:void(0);" id="good_num_jia"
                            class="good_num_jia"></a>(当前库存${product.pnumber }件)</span>
                </li>
                <li style="padding:20px 0;">
                    <label>&nbsp;</label>
                    <span><a href="javascript:void(0)" onclick="addCart()"
                             class="goods_sub goods_sub_gou">加入购物车</a></span>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        function addCart() {
            var buynum = $("#good_nums").val();
            window.location.href = "${pageContext.request.contextPath}/client/order/addCart.do?pid=${product.pid}&buynum=" + buynum;
        }

    </script>
    <!-- 商品展示 End -->

    <div class="clear mt15"></div>
    <!-- Goods Left -->
    <div class="shop_bd_list_left clearfix">

        <!-- 热卖推荐商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">热卖推荐商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">

                    <c:forEach items="${hotProducts}" var="hotProduct" varStatus="vs">
                        <c:if test="${vs.count<=3}">
                            <li class="clearfix">
                                <div class="goods_name"><a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${hotProduct.pid}">${hotProduct.pname}</a></div>
                                <div class="goods_pic"><span class="goods_price">¥ ${hotProduct.price} </span><a href=""><img
                                        src="${pageContext.request.contextPath}/${hotProduct.pimage}"/></a>
                                </div>
                                <div class="goods_xiaoliang">
                                    <span class="goods_xiaoliang_link"><a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${hotProduct.pid}">去看看</a></span>
                                    <span class="goods_xiaoliang_nums">已销售<strong>${hotProduct.succ_count}</strong>笔</span>
                                </div>
                            </li>
                        </c:if>
                    </c:forEach>


                </ul>
            </div>
        </div>
        <!-- 热卖推荐商品 -->
        <div class="clear"></div>

        <!-- 浏览过的商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">浏览过的商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">
<%--                    <c:if test="${not empty productRecord}">--%>
                    <li class="clearfix">
                        <div class="goods_name"><a href="${pageContext.request.contextPath}/client/product/findProductById.do?id=${productRecord.pid}">${productRecord.pname}</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ ${productRecord.price} </span><a href=""><img
                                src="${pageContext.request.contextPath}/${productRecord.pimage}"/></a>
                        </div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="${pageContext.request.contextPath}/client/product/findProductById.do?id=${productRecord.pid}">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>${productRecord.succ_count}</strong>笔</span>
                        </div>
                    </li>
<%--                    </c:if>--%>


                </ul>
            </div>
        </div>
        <!-- 浏览过的商品 -->

    </div>
    <!-- Goods Left End -->

    <!-- 商品详情 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_goods_tab.js"></script>
    <div class="shop_goods_bd_xiangqing clearfix">
        <div class="shop_goods_bd_xiangqing_tab">
            <ul>
                <li id="xiangqing_tab_1" onmouseover="shop_goods_easytabs('1', '1');"
                    onfocus="shop_goods_easytabs('1', '1');" onclick="return false;"><a href=""><span>商品详情</span></a>
                </li>
                <li id="xiangqing_tab_2" onmouseover="shop_goods_easytabs('1', '2');"
                    onfocus="shop_goods_easytabs('1', '2');" onclick="return false;"><a href=""><span>商品评论</span></a>
                </li>
                <li id="xiangqing_tab_3" onmouseover="shop_goods_easytabs('1', '3');"
                    onfocus="shop_goods_easytabs('1', '3');" onclick="return false;"><a href=""><span>商品咨询</span></a>
                </li>
            </ul>
        </div>
        <div class="shop_goods_bd_xiangqing_content clearfix">
            <div id="xiangqing_content_1" class="xiangqing_contents clearfix">
                <p>${product.pdesc}</p>
            </div>
            <div id="xiangqing_content_2" class="xiangqing_contents clearfix">
                <p>商品评论----22222</p>
            </div>

            <div id="xiangqing_content_3" class="xiangqing_contents clearfix">
                <p>商品自诩---3333</p>
            </div>
        </div>
    </div>
    <!-- 商品详情 End -->

</div>
<!-- Goods Body End -->

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
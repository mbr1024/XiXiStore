<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="syl" uri="http://syl.pager-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>商品列表页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_list.css" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_list.js"></script>
</head>
<body>
<!-- Header  -wll-2013/03/24 -->

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
			<a href="${pageContext.request.contextPath }/index_in.jsp">首页</a>&nbsp;›&nbsp;
			<a href="javascript:void(0)">商品分类</a>&nbsp;›&nbsp;
			<a href="javascript:void(0)">具体分类(category)</a>

		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->


<!-- List Body 2013/03/27 -->
<%--傻逼条件框--%>
<div class="shop_bd clearfix">
    <div class="shop_bd_list_left clearfix">
        <!-- 左边商品分类 -->

        <!-- 左边商品分类 End -->

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
            <div class="title">浏览过的商品(3条即可)</div>
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

    <div class="shop_bd_list_right clearfix">
        <!-- 条件筛选框 -->
        <div class="module_filter" style="display: none">
            <div class="module_filter_line">
                <dl>
                    <dt>尺码：</dt>
                    <dd>
                        <span><a href="">XXS</a></span>
                        <span><a href="">XS</a></span>
                        <span><a href="">S</a></span>
                        <span><a href="">M</a></span>
                        <span><a href="">L</a></span>
                        <span><a href="">XL</a></span>
                        <span><a href="">XXL</a></span>
                        <span><a href="">XXXL</a></span>
                        <span><a href="">加大XXXL</a></span>
                        <span><a href="">均码</a></span>
                    </dd>
                </dl>

                <dl>
                    <dt>品牌：</dt>
                    <dd>
                        <span><a href="">彪马</a></span>
                        <span><a href="">安踏</a></span>
                        <span><a href="">阿迪达斯</a></span>
                        <span><a href="">李宁</a></span>
                        <span><a href="">匡威</a></span>
                        <span><a href="">耐克</a></span>
                        <span><a href="">卡帕</a></span>
                        <span><a href="">鸿星尔克</a></span>
                        <span><a href="">沃特</a></span>
                        <span><a href="">垃圾</a></span>
                    </dd>
                </dl>

                <dl>
                    <dt>款式：</dt>
                    <dd>
                        <span><a href="">长袖</a></span>
                        <span><a href="">短袖</a></span>
                        <span><a href="">无袖</a></span>
                        <span><a href="">两件套</a></span>
                        <span><a href="">宽松</a></span>

                    </dd>
                </dl>

                <dl>
                    <dt>材质：</dt>
                    <dd>
                        <span><a href="">纯棉</a></span>
                        <span><a href="">真丝</a></span>
                        <span><a href="">聚酯</a></span>
                        <span><a href="">棉+氨纶</a></span>
                        <span><a href="">卡莱</a></span>
                        <span><a href="">人造棉</a></span>
                        <span><a href="">其它</a></span>
                    </dd>
                </dl>


            </div>
            <div class="bottom"></div>
        </div>
        <!-- 条件筛选框 -->

        <!-- 显示菜单 -->
        <div class="sort-bar">
            <div class="bar-l">
                <!-- 查看方式S -->
                <div class="switch"><span class="selected"><a title="以方格显示" ecvalue="squares" nc_type="display_mode"
                                                              class="pm" href="javascript:void(0)">大图</a></span><span
                        style="border-left:none;"><a title="以列表显示" ecvalue="list" nc_type="display_mode" class="lm"
                                                     href="javascript:void(0)">列表</a></span></div>
                <!-- 查看方式E -->
                <!-- 排序方式S -->
                <ul class="array">
                    <li selected><a title="默认排序" class="nobg" href="${pageContext.request.contextPath }/client/product/findProductByCategory.do?cname=${category}">默认</a></li>
                    <li><a title="点击按销量从高到低排序"
                           href="${pageContext.request.contextPath }/client/product/findProductByCategory.do?cname=${category}&sales=1">销量</a></li>
                    <li><a title="点击按人气从高到低排序"
                           href="${pageContext.request.contextPath }/client/product/findProductByCategory.do?cname=${category}&click=1">人气</a></li>
                    <li><a title="点击按价格从高到低排序"
                           href="${pageContext.request.contextPath }/client/product/findProductByCategory.do?cname=${category}&price=1">价格</a></li>
                </ul>
                <!-- 排序方式E -->
                <!-- 价格段S -->
                <form action="${pageContext.request.contextPath }/client/product/findProductByCategory.do?cname=${category}" method="post">

                    <div class="prices"><em>¥</em>
                        <input type="text" value="${condition.min}" class="w30" name="min">
                        <em>-</em>
                        <input type="text" value="${condition.max}" class="w30" name="max">
                        <input type="submit" value="确认" id="search_by_price">
                    </div>
                </form>
                <!-- 价格段E -->
            </div>
        </div>
        <div class="clear"></div>
        <!-- 显示菜单 End -->

        <!-- 商品列表 -->
        <div class="shop_bd_list_content clearfix">
            <ul>
                <c:forEach items="${products }" var="product">

                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/client/product/findProductById.do?id=${product.pid}"><img
                                        src="${pageContext.request.contextPath}/${product.pimage}"/></a></dt>
                            <dd class="title"><a
                                    href="${pageContext.request.contextPath}/client/product/findProductById.do?id=${product.pid}">${product.pname }</a>
                            </dd>
                            <dd class="content">
                                <span class="goods_jiage">￥<strong>${product.price }</strong></span>
                                <span class="goods_chengjiao">最近成交${product.succ_count }笔</span>
                            </dd>
                        </dl>
                    </li>
                </c:forEach>


            </ul>
            <div><syl:pager
                    pageIndex="${requestScope.pageModel.pageIndex}"
                    pageSize="${requestScope.pageModel.pageSize}"
                    recordCount="${requestScope.pageModel.recordCount}"
                    style="digg"
                    submitUrl="${pageContext.request.contextPath}/client/product/findProductByCategory.do?pageIndex={0}&cname=${category}&min=${condition.min}&max=${condition.max}&sales=${condition.sales}&click=${condition.click}&price=${condition.price}"/>
            </div>
            </td>
        </div>
        <div class="clear"></div>
<%--        <div class="pagination">--%>
<%--            <ul>--%>
<%--                <li><span>首页</span></li>--%>
<%--                <li><span>上一页</span></li>--%>
<%--                <li><span class="currentpage">1</span></li>--%>
<%--                <li><span>下一页</span></li>--%>
<%--                <li><span>末页</span></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
        <!-- 商品列表 End -->


    </div>
</div>
<!-- List Body End -->

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
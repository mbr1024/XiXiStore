<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">


<head>

    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>ShopCMJ-首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shop_home.css" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/shop_home_tab.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/topNav.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/focus.js"></script>
    <script type="text/javascript">
        $(function () {
            $.post(
                "${pageContext.request.contextPath}/", "", function (data) {
                    var content = "";
                    $.each(data, function (i, n) {
                        content += "<a href='${pageContext.request.contextPath}/'+" < /a>";
                    });
                    $("#cid").html(content)

                }, "json"
            )
        })
    </script>
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
        <div class="search_form" style="position:relative">
            <form method="post" action="${pageContext.request.contextPath}/client/product/findProductByName.do">
                <div class="search_formstyle">
                    <input type="text" id="search_id" onkeyup="searchs($(this).val())" class="search_form_text"
                           name="search_content"/>

                    <input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索"/>
                </div>
            </form>

        </div>
        <script type="text/javascript">


            function searchs(val) {
                $("#showDiv").html("");
                $.post(
                    "${pageContext.request.contextPath}/productServlet?method=tipProduct", {"message": val}, function (data) {
                        $.each(data, function (i, n) {
                            $("#showDiv").css("display", "block")
                            $("#showDiv").append("<div  style='cursor: pointer; margin-top:5px;' onclick='fun_click(this)' onmouseover='fun_over(this)'  onmouseout='fun_out(this) '>" + n.substr(0, 30) + "</div>");
                        });

                    }, "json"
                );

            }

            function fun_over(obj) {
                $(obj).css("background", "#199805")
            }

            function fun_out(obj) {
                $(obj).css("background", "#FFFFFF")
            }

            function fun_click(obj) {
                $("#search_id").val($(obj).html());
                $("#showDiv").css("display", "none")
            }
        </script>
    </div>
</div>
</div>

<div id="showDiv"
     style=" mfloat:left;left:610px;top:95px;display:none; position:absolute;z-index:1000;background:#fff; width:404px;border:1px solid #ccc;">

</div>

<div class="clear"></div>
<!-- TopHeader Center End -->

<!-- Header Menu -->
<div class="shop_hd_menu">
    <!-- 所有商品菜单 -->

    <div class="shop_hd_menu_all_category shop_hd_menu_hover">
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
<!-- Header End -->


<!-- Body -wll-2013/03/24 -->
<div class="shop_bd clearfix">
    <!-- 第一块区域  -->
    <div class="shop_bd_top clearfix">
        <div class="shop_bd_top_left"></div>
        <div class="shop_bd_top_center">
            <!-- 图片切换  begin  -->
            <div class="xifan_sub_box">
                <div id="p-select" class="sub_nav">
                    <div class="sub_no" id="xifan_bd1lfsj">
                        <ul></ul>
                    </div>
                </div>
                <div id="xifan_bd1lfimg">
                    <div>
                        <dl class=""></dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/e2dfe57add8fff66ed0964b1effd39b9.jpg"
                                    alt="2011城市主题公园亲子游"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">2011城市主题公园亲子游</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/e50b5d398e3b890f08e14defbc71a94d.jpg"
                                    alt="潜入城市周边清幽之地"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">潜入城市周边清幽之地</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/196b173f15685a2019ab3396cd1851a4.jpg"
                                    alt="盘点中国最美雪山"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">盘点中国最美雪山</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/e81345cbc3d8a7e11f9a0e09df68221d.jpg"
                                    alt="2011西安世园会攻略"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">2011西安世园会攻略</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/65662b58848da87812ba371c7ff6c1ad.jpg"
                                    alt="五月乐享懒人天堂塞班岛"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">五月乐享懒人天堂塞班岛</a></h2></dd>
                        </dl>

                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/e50b5d398e3b890f08e14defbc71a94d.jpg"
                                    alt="潜入城市周边清幽之地"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">潜入城市周边清幽之地</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/196b173f15685a2019ab3396cd1851a4.jpg"
                                    alt="盘点中国最美雪山"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">盘点中国最美雪山</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/e81345cbc3d8a7e11f9a0e09df68221d.jpg"
                                    alt="2011西安世园会攻略"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">2011西安世园会攻略</a></h2></dd>
                        </dl>
                        <dl class="">
                            <dt><a href="http://www.zztuku.com" title="" target="_blank"><img
                                    src="${pageContext.request.contextPath }/images/65662b58848da87812ba371c7ff6c1ad.jpg"
                                    alt="五月乐享懒人天堂塞班岛"></a></dt>
                            <dd><h2><a href="http://www.zztuku.com" target="_blank">五月乐享懒人天堂塞班岛</a></h2></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <script type="text/javascript">movec();</script>
            <!-- 图片切换  end -->
            <div class="clear"></div>
            <div class="shop_bd_top_center_hot"><img
                    src="${pageContext.request.contextPath }/images/index.guanggao.png"/></div>
        </div>

        <!-- 右侧 -->
        <div class="shop_bd_top_right clearfix">
            <div class="shop_bd_top_right_quickLink">
                <a href="${pageContext.request.contextPath }/login.jsp" class="login" title="会员登录"><i></i>会员登录</a>
                <a href="${pageContext.request.contextPath }/register.jsp" class="register" title="免费注册"><i></i>免费注册</a>
                <a href="" class="join" title="商家开店"><i></i>帮助中心</a>
            </div>

            <div class="shop_bd_top_right-style1 nc-home-news">
                <ul class="tabs-nav">
                    <li><a href="javascript:void(0);" class="hover">商城广告</a></li>
                    <li><a href="javascript:void(0);">关于我们</a></li>
                </ul>
                <div class="clear"></div>
                <div class="tabs-panel">
                    <ul class="list-style01">
                        <li><a title="如何申请开店" href="article-15.html">如何申请开店</a><span>(2011-01-11)</span></li>
                        <li><a title="商城商品推荐" href="article-14.html">商城商品推荐</a><span>(2011-01-11)</span></li>
                        <li><a title="如何发货" href="article-13.html">如何发货</a><span>(2011-01-11)</span></li>
                        <li><a title="查看售出商品" href="article-12.html">查看售出商品</a><span>(2011-01-11)</span></li>
                        <li><a title="如何管理店铺" href="article-11.html">如何管理店铺</a><span>(2011-01-11)</span></li>
                        <li><a title="如何申请开店" href="article-15.html">如何申请开店</a><span>(2011-01-11)</span></li>
                        <li><a title="商城商品推荐" href="article-14.html">商城商品推荐</a><span>(2011-01-11)</span></li>
                        <li><a title="如何发货" href="article-13.html">如何发货</a><span>(2011-01-11)</span></li>
                        <li><a title="查看售出商品" href="article-12.html">查看售出商品</a><span>(2011-01-11)</span></li>
                        <li><a title="如何管理店铺" href="article-11.html">如何管理店铺</a><span>(2011-01-11)</span></li>


                    </ul>
                </div>
            </div>


        </div>
        <!-- 右侧 End -->
    </div>
    <div class="clear"></div>
    <!-- 第一块区域 End -->

    <div class="clear"></div>
    <!-- 第二块区域 End -->

    <!-- 第三块区域 男女服饰 -->
    <div class="shop_bd_home_block clearfix">

        <!-- 左边 -->
        <div class="shop_bd_home_block_left">
            <div class="shop_bd_home_block_left_logo block_nvzhuang_logo"></div>
            <div class="shop_hd_home_block_left_class clearfix">
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
            <div class="shop_bd_home_block_left_pic">
                <a href=""><img
                        src="${pageContext.request.contextPath }/images/web-1-13_53bfbfc958cb55a435545033bd075bf3.png"/></a>
            </div>
        </div>
        <!-- 左边 End -->

        <!-- 中间 -->
        <div class="shop_bd_home_block_center">
            <ul class="tabs-nav">
                <li><a href="javascript:void(0);">推荐商品</a></li>
            </ul>
            <div class="tabs-panel">
                <ul>
                    <%--                            <li>--%>
                    <%--                                <dl>--%>
                    <%--                                    <dt><a href=""><img src="${pageContext.request.contextPath }/images/04fb225ea46bd1346f330400eedb7ef2.jpg_small.jpg" /></a></dt>--%>
                    <%--                                    <dd><a href="">正品都市时尚女装假两件优雅针织衫</a></dd>--%>
                    <%--                                    <dd>商城价：<em>182.00</em>元</dd>--%>
                    <%--                                </dl>--%>
                    <%--                            </li>--%>
                    <c:forEach items="${showIndex}" var="p" varStatus="vs">
                        <li>
                            <dl>
                                <dt>
                                    <a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${p.pid}"><img
                                            src="${pageContext.request.contextPath }/${p.pimage}"/></a>
                                </dt>
                                <dd>
                                    <a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${p.pid}">${p.pname}</a>
                                </dd>
                                <dd>商城价：<em>${p.price}</em>元</dd>
                            </dl>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!-- 中间 End -->

        <!-- 右边商品排行 -->
        <div class="shop_bd_home_block_right">
            <div class="title"><h3>商品排行</h3></div>
            <ol class="saletop-list">
                <%--1-3--%>
                   <%-- ${hotProducts}--%>
                <c:forEach items="${hotProducts}" var="hotProduct" varStatus="vs">
                    <c:if test="${vs.count<=3}">
                        <li class="top clearfix">
                            <dl>
                                <dt class="goods-name">
                                    <a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${hotProduct.pid}">${hotProduct.pname}</a>
                                </dt>
                                <dd class="nokey">${vs.count}</dd>
                                <dd class="goods-pic">
                                    <a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${hotProduct.pid}"><span class="thumb size60"><img
                                            src="${pageContext.request.contextPath }/${hotProduct.pimage}"/></span></a>
                                </dd>
                                <dd class="goods-price"><em>${hotProduct.price}</em></dd>
                            </dl>
                        </li>

                    </c:if>
                    <c:if test="${vs.count>3}">
                    <%--3-以后--%>
                    <li class="normal">
                        <i>${vs.count}</i>
                        <a href="${pageContext.request.contextPath }/client/product/findProductById.do?id=${hotProduct.pid}">${hotProduct.pname}</a>
                    </li>
                    </c:if>
                </c:forEach>
            </ol>
            <div class="saletop-list_adv_pic"><a href=""><img
                    src="images/web-3-38_ff9bd2d724f7138cec1b1937000f4feb.jpg"/></a></div>
        </div>
        <!-- 右边商品排行 -->

        <!-- 品牌展示 -->
        <div class="shop_bd_home_block_bottom">
            <ul class="">
                <li><a href=""><img src="${pageContext.request.contextPath}/images/354b80528d2fbeefbab33c563532517e.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/1d2dfbead590510046a6522551db8139.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/26247430b09daa1b441b46008bfb6e6e.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/a0ac8c6d2d3dc1470d5876923182a8e2.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/9c5dee77a6ecdafd9e152fed8c6a4e90.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/b175883eba95e793affb1b1ebbbf85a5.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/6e61a1c953e5bc8c5f1ffdac36862245.gif"/></a></li>
                <li><a href=""><img src="${pageContext.request.contextPath}/images/209abd835cd2ce2208f2dc42ba10efb4.gif"/></a></li>
            </ul>
        </div>
        <!-- 品牌展示 End -->

    </div>
    <div clas="clear"></div>
    <!-- 第三块区域 End -->

    <!-- 第五块区域 End -->

    <div class="faq">
        <dl>
            <dt>帮助中心</dt>
            <dd><a href=""><span>积分兑换说明</span></a></dd>
            <dd><a href=""><span>积分明细</span></a></dd>
            <dd><a href=""><span>查看已购买商</span></a></dd>
            <dd><a href=""><span>我要买</span></a></dd>
            <dd><a href=""><span>忘记密码</span></a></dd>
        </dl>

        <dl>
            <dt>店主之家</dt>
            <dd><a href=""><span>如何申请开店</span></a></dd>
            <dd><a href=""><span>商城商品推荐</span></a></dd>
            <dd><a href=""><span>如何发货</span></a></dd>
            <dd><a href=""><span>查看已售商品</span></a></dd>
            <dd><a href=""><span>如何管理店铺</span></a></dd>
        </dl>

        <dl>
            <dt>支付方式</dt>
            <dd><a href=""><span>公司转账</span></a></dd>
            <dd><a href=""><span>邮局汇款</span></a></dd>
            <dd><a href=""><span>分期付款</span></a></dd>
            <dd><a href=""><span>在线支付</span></a></dd>
            <dd><a href=""><span>如何注册支付</span></a></dd>
        </dl>

        <dl>
            <dt>售后服务</dt>
            <dd><a href=""><span>退款申请</span></a></dd>
            <dd><a href=""><span>返修/退换货</span></a></dd>
            <dd><a href=""><span>退换货流程</span></a></dd>
            <dd><a href=""><span>退换货政策</span></a></dd>
            <dd><a href=""><span>联系卖家</span></a></dd>
        </dl>

        <dl>
            <dt>客服中心</dt>
            <dd><a href=""><span>修改收货地址</span></a></dd>
            <dd><a href=""><span>商品发布</span></a></dd>
            <dd><a href=""><span>会员修改个人</span></a></dd>
            <dd><a href=""><span>会员修改密码</span></a></dd>

        </dl>

        <dl>
            <dt>关于我们</dt>
            <dd><a href=""><span>合作及洽谈</span></a></dd>
            <dd><a href=""><span>招聘英才</span></a></dd>
            <dd><a href=""><span>联系我们</span></a></dd>
            <dd><a href=""><span>关于Shop</span></a></dd>
        </dl>


    </div>
    <div class="clear"></div>
</div>
<!-- Body End -->

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

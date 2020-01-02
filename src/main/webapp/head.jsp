<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Header -wll-2013/03/24 -->
<div class="shop_hd">
    <!-- Header TopNav -->
    <div class="shop_hd_topNav">
        <div class="shop_hd_topNav_all">
            <!-- Header TopNav Left -->
            <div class="shop_hd_topNav_all_left">
                <p>您好，欢迎来到<b><a href="${pageContext.request.contextPath }/index_in.jsp">夕夕商城</a></b>
                    <c:if test="${empty login_user }">
                        [<a href="${pageContext.request.contextPath }/login.jsp">登录</a>][<a href="${pageContext.request.contextPath }/register.jsp">注册</a>]
                    </c:if>

                    <c:if test="${!empty login_user }">
                        [<a href="${pageContext.request.contextPath}/myhome.jsp">欢迎你,<span style="color:#199805">${login_user.username }</span></a>][<a href="${pageContext.request.contextPath }/client/user/logout.do">退出</a>]
                    </c:if>
                </p>
            </div>
            <!-- Header TopNav Left End -->

            <!-- Header TopNav Right -->
            <div class="shop_hd_topNav_all_right">
                <ul class="topNav_quick_menu">

                    <li>
                        <div class="topNav_menu">
                               <a href="${pageContext.request.contextPath }/myhome.jsp"
                                                           class="topNavHover">我的商城<i></i></a>
                                <div class="topNav_menu_bd" style="display:none;" >
                                        <ul>
                                            <li><a title="已买到的商品" target="_top" href="${pageContext.request.contextPath}/client/order/myOrder.do">已买到的商品</a></li>
                                            <li><a title="个人主页" target="_top"
                                                   href="${pageContext.request.contextPath}/myhome.jsp">个人主页</a>
                                            </li>
                                            <li><a title="我的好友" target="_top" href="#">我的评价</a></li>
                                        </ul>
                                </div>
                            </div>
                    <li>
                        <div class="topNav_menu">
                            <a href="${pageContext.request.contextPath}/client/order/myOrder.do"
                               class="topNavHover">我的订单<i></i></a>

                        </div>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="${pageContext.request.contextPath }/flow.jsp" class="topNavHover">购物车<i></i></a>

                        </div>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="${pageContext.request.contextPath}/client/collect/myFavorite.do"
                               class="topNavHover">我的收藏<i></i></a>

                        </div>
                    </li>

                    <li>
                        <div class="topNav_menu">
                            <a href="#">站内消息</a>
                        </div>
                    </li>

                </ul>
            </div>
            <!-- Header TopNav Right End -->
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Header TopNav End -->
</div>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="syl" uri="http://syl.login-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>电子书城</title>


</head>

<body class="main">

<syl:loginTag/>
	<div id="divcontent">
		<table width="850px" border="0" cellspacing="0">
			<tr>
				<td style="padding:30px; text-align:center"><table width="60%"
						border="0" cellspacing="0" style="margin-top:70px">
						<tr>
							<td style="width:98px">
							</td>
							<td style="padding-top:30px">
								<font style="font-weight:bold; color:#FF0000">支付成功</font><br /><br /> 
								<a href="${pageContext.request.contextPath }/index_in.jsp">
									<span id="second">5</span>秒后自动为您转跳回首页
								</a>
							</td>
						</tr>
					</table>
					<h1>&nbsp;</h1>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>

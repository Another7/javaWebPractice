<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- base href="<%=basePath%>"> -->

<title>Another My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<p><%=basePath %><br>${pageContext.servletContext.contextPath}/web/registe.jsp</p>

	<form action="${pageContext.servletContext.contextPath}/web/LoginServlet" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" />
				</td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<a href="${pageContext.servletContext.contextPath}/web/registe.jsp">注册</a>
				<input type="submit" value="登录"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

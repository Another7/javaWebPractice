<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	System.out.println(request.getContextPath());
	System.out.println(request.getScheme());
	System.out.println(request.getServerName());
	System.out.println(request.getServerPort());
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

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
	<p>Hello
		<%System.out.println(request.getContextPath());
		System.out.println(request.getScheme());
		System.out.println(request.getServerName());
		System.out.println(request.getServerPort()); %>
		<%=request.getContextPath() %><br>
		<%=request.getScheme() %><br>
		<%=request.getServerName() %><br>
		<%=request.getServerPort() %><br>
	</p><br>
	<form action="${pageContext.servletContext.contextPath}/manage/LoginServlet" method="post">
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
				<td colspan="2" align="right"><input type="submit" value="提交"/></td>
			</tr>
		</table>
	</form>
	<p>HelloWorld</p>
</body>
</html>

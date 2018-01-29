<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="cn.edu.zzti.entity.UserDO"%>
<%
	Object o = session.getAttribute("user");
	if (o != null) {
		UserDO user = (UserDO) o;
%>
前端商城欢迎您,<%=user.getUsername()%>
<%
	} else {
%>
<a href="login.jsp">请登录</a>
<%
	}
%>

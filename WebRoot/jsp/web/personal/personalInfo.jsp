<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="cn.edu.zzti.entity.PersonalInfoDO" %>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>个人基本信息展示</title>
</head>
<body>
<table>
    <tr ><td colspan="2" align="right">
    	<jsp:include page="/common/jsp/web/top.jsp"/>
    </td></tr>
    <tr  valign="top">
    <td width="20%">
    	<%@include file="/common/jsp/web/left.jspf" %>
    </td>
    <td align="center">
    	<%
    	Object o= request.getAttribute("personalInfo");
    	if(o!=null){
    	%>
    	<jsp:useBean id="personalInfo" class="cn.edu.zzti.entity.PersonalInfoDO" scope="request"></jsp:useBean>
        	<br> 年龄：<jsp:getProperty property="age" name="personalInfo" />
        	<br> 性别：<jsp:getProperty property="gender" name="personalInfo"/>
        	<br> 家庭住址：<jsp:getProperty property="address" name="personalInfo"/>
        	<br> 联系方式：<jsp:getProperty property="tel" name="personalInfo"/>
        	<br> email：<jsp:getProperty property="email" name="personalInfo"/>
        	<br> 毕业院校：<jsp:getProperty property="graduateSchool" name="personalInfo"/>
        	<br> 最高学历：<jsp:getProperty property="highestEducation" name="personalInfo"/>
        	<br> 专业方向：<jsp:getProperty property="major" name="personalInfo"/>
        	<%
    	}else{
        	%>
        	您还没有完善信息，<a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/web/personal/personalPage1.jsp">请完善信息</a>
        	<%
    	}
        	%>
    </td>
    <tr>
    </table>
</body>
</html>

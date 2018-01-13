<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="cn.edu.zzti.util.PathConstence" %>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>完善个人信息1</title>
  </head>
  <body>
   <table>
      <tr ><td colspan="2" align="right">
      	<jsp:include page="/common/jsp/web/top.jsp"/>
      </td></tr>
      <tr  valign="top">
      <td width="20%">
      	<%@include file="/common/web/left.jspf" %>
      </td>
      <td align="center">
      	<form action="<%=pageContext.getServletContext().getContextPath() %>/web/PersonalInfoProcess" method="post">
            	年龄：<input type='text' name='age' /><br>
            	性别：<input type='radio' name='gender' checked='checked' value='女'/>女
            	<input type='radio' name='gender' value='男'/>男<br>
            	家庭住址：<input type='text' name='address'/><br>
            	联系方式：<input type='text' name='tel'/><br>
            	email：<input type='text' name='email'/><br>
            	<input type='hidden' name='requestType' value='next'>
            	<input type='submit' value='下一步'>
            </form>
      </td>
      <tr>
      </table>
  </body>
</html>

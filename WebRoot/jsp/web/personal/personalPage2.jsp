<%@ page language='java' import='java.util.*' pageEncoding='utf-8'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href='<%=basePath%>'>
    <title>完善个人信息2</title>
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
        	 <form action="<%=pageContext.getServletContext().getContextPath() %>/web/PersonalInfoProcess" method="post">
                	最高学历：
                	<select name='highestEducation'>
                		<option value='学士'>学士</option>
                		<option value='硕士'>硕士</option>
                		<option value='博士'>博士</option>
                		<option value='其他'>其他</option>
                	</select><br>
                	毕业院校：<select name='graduateSchool'>
                		<option value='北京大学'>北京大学</option>
                		<option value='清华大学'>清华大学</option>
                		<option value='其他院校'>其他院校</option>
                	</select><br>
                	所学专业：<input type='text' name='major'/><br>
                	<input type='hidden' name='requestType' value='save'>
                	<input type='submit' value='保存'>
                </form>
        </td>
        <tr>
        </table>
  </body>
</html>

<%-- 
    Document   : AuthorityLAction
    Created on : Dec 26, 2019, 4:03:49 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
try{
   
  if(uname.equals("FogNode")&& pwd.equals("FogNode")){
      %>
      <script type="text/javascript">
          window.alert("Login Access Success....!!");
          window.location="FogNode_Home.jsp";
      </script>
      
      <%
  }else{
    %>
      <script type="text/javascript">
          window.alert("Login Access Failed....!!");
          window.location="FogNode.jsp";
      </script>
      
      <%  
  }
    
    
}catch(Exception e){
 out.println(e);   
}






%>
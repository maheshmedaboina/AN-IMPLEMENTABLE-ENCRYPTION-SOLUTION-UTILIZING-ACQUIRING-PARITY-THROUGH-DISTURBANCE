<%-- 
    Document   : BlockUser
    Created on : Aug 1, 2019, 12:47:47 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String uname=(String)session.getAttribute("uname");
String block=request.getParameter("f");
try{
    String query="insert into block values(null,'"+uname+"','"+block+"')";
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
       %>
       <script type="text/javascript">
           window.alert("User Blocked Successfully");
           window.location="VMessage.jsp";
           </script>
    <%}
else{
%>
       <script type="text/javascript">
           window.alert("User Blocked Failed");
           window.location="VMessage.jsp";
           </script>
    <%
}
}catch(Exception e){
   out.println(e);
}
%>
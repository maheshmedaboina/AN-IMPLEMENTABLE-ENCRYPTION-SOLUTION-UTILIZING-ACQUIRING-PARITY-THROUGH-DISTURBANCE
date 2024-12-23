<%-- 
    Document   : KeyGen
    Created on : Jul 27, 2019, 6:21:33 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");

try
{
String query="update message set status='request' where id='"+id+"'";
int i=Queries.getExecuteUpdate(query);
if(i>0){
    %>
        <script type="text/javascript">
       window.alert("Request Sent Successfully");
       window.location="VMessage.jsp";
   </script>
  <% 
}else{
 %>
        <script type="text/javascript">
       window.alert("Request Sent Failed");
       window.location="VMessage.jsp";
   </script>
  <% 
}
}catch(Exception e){
   out.println(e); 
}
%>
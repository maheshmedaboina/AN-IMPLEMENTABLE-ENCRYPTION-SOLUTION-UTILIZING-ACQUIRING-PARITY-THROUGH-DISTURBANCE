<%-- 
    Document   : AddWordAction
    Created on : Jul 29, 2019, 10:28:42 AM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String word=request.getParameter("word");
try{
    String query="insert into word values(null,'"+word+"')";
        int i=Queries.getExecuteUpdate(query);
        if(i>0){
           %>
           <script type="text/javascript">
               window.alert("Word Added successfully");
               window.location="AWords.jsp";
               </script>
           <%
        }else{
 %>
           <script type="text/javascript">
               window.alert("Word Adding Failed");
               window.location="AWords.jsp";
               </script>
           <%
}
}catch(Exception e){
    out.println(e);
}


%>
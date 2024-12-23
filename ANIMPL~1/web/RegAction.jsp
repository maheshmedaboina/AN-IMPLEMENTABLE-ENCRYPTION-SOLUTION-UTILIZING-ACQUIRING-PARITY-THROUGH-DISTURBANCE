<%-- 
    Document   : RegAction
    Created on : Jul 26, 2019, 5:25:44 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String Address=request.getParameter("address");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
try{
    String qu="select count(*) from register where username='"+uname+"'";
    int c=0;
    ResultSet r=Queries.getExecuteQuery(qu);
    while(r.next()){
       c=r.getInt(1);
    }
    if(c==0){
    String query="insert into register values(null,'"+name+"','"+email+"','"+mobile+"','"+Address+"','"+uname+"','"+pwd+"','waiting','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
   %>
   <script type="text/javascript">
       window.alert("registration successfully");
       window.location="Regster.jsp";
   </script>
   <%
                
    }else{
%>
   <script type="text/javascript">
       window.alert("registration failed");
       window.location="Regster.jsp";
   </script>
   <%
}
}else{
%>
   <script type="text/javascript">
       window.alert("Username or Email Already Exist");
       window.location="Regster.jsp";
   </script>
   <%
}
    
}catch(Exception e){
out.println(e);    
}


%>
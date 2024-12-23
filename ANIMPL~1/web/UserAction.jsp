<%-- 
    Document   : UserAction
    Created on : Mar 9, 2018, 6:43:07 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page import="com.dbcon.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%String username=request.getParameter("uname");
String password=request.getParameter("pwd");
try{
    Connection con=DBCon.getCon();
    Statement st1=con.createStatement();
    ResultSet r=Queries.getExecuteQuery("select * from block where blockeduser='"+username+"'");
    if(r.next()){
    %>
    <script type="text/javascript">
        window.alert("you Are Blocked User!!! you can not access home page");
        window.location="User.jsp";
        </script>
    <% 
    }else{
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from register where username='"+username+"'and password='"+password+"'");
    if(rs.next()){
        String status=rs.getString("status");
session.setAttribute("username",username);
if(status.equalsIgnoreCase("waiting")){
   %>
    <script type="text/javascript">
        window.alert("your Not Authroized By the Admin");
        window.location="User.jsp";
        </script>
    <% 
}else{
session.setAttribute("uname",username);
session.setAttribute("email",rs.getString("email"));
session.setAttribute("id",rs.getString("id"));
    %>
    <script type="text/javascript">
        window.alert("Login Success");
        window.location="UserHome.jsp";
        </script>
    <%}
}else{%>
<script type="text/javascript">
        window.alert("Login Failed");
        window.location="User.jsp";
        </script>
<%}
}
}catch(Exception e){
 out.println(e); 
}%>


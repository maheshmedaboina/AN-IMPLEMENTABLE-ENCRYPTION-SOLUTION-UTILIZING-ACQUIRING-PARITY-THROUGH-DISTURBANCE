<%-- 
    Document   : CMAction
    Created on : Jul 26, 2019, 6:23:49 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.encanddec.encryption"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String uname=(String)session.getAttribute("uname");
String to=request.getParameter("to");
String msg=request.getParameter("msg");
KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
          System.out.println("secret key:"+skey);   
          String cipher=new encryption().encrypt(msg,s);
try{
    String qy="select count(*) from register where username='"+to+"' and status='activated'";
    int c=0;
    ResultSet r=Queries.getExecuteQuery(qy);
    while(r.next()){
        c=r.getInt(1);
    }
    if(c!=0){
    String query="insert into message values(null,'"+uname+"','"+to+"','"+msg+"','"+cipher+"','waiting','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
       window.alert("Message Sent Successfully");
       window.location="CMessage.jsp";
   </script>
  <%  }else{
%>
        <script type="text/javascript">
       window.alert("Message Sendding Failed");
       window.location="CMessage.jsp";
   </script>
  <%
}
}else{
%>
        <script type="text/javascript">
       window.alert("The User Does't Exist");
       window.location="CMessage.jsp";
   </script>
  <%
}
}catch(Exception e){
 out.println(e);   
}
%>
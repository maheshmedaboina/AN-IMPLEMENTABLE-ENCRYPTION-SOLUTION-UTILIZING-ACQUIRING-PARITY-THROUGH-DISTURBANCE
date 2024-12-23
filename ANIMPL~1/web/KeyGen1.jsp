<%-- 
    Document   : KeyGen1
    Created on : Jul 27, 2019, 6:35:33 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
         <%try{
                     String id=request.getParameter("id");
                     
                       Random r=new Random();
                       int ii=r.nextInt(1000000+60000)-5000;
                       String fh=""+ii;
                       
                       String eyr="update message set status1='"+fh+"',status='KeyGenerated' where id='"+id+"'";
                      int io=Queries.getExecuteUpdate(eyr);
                      if(io>=0){
                       %>
        <script type="text/javascript">
       window.alert("Key Generated Successfully");
     window.location="VRequest.jsp";
   </script>
  <%    
                      }else{
%>
        <script type="text/javascript">
       window.alert("Key Generation Failed");
      window.location="VRequest.jsp";
   </script>
  <%   
}

}catch(Exception e){
out.println(e);
}
%>
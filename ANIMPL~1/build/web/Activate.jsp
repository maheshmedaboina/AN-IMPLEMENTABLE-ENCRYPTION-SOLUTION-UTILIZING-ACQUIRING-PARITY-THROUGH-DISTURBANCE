<%@page import="com.dbcon.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String id=request.getParameter("id");
try{
    Connection con=DBCon.getCon();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update register set status='activated' where id='"+id+"'");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Activated successfully");
            window.location="VAllUsers.jsp";
            </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Activation Failed");
            window.location="VAllUsers.jsp";
            </script>
        <%
}
    
}catch(Exception e){
    out.println(e);
}


%>
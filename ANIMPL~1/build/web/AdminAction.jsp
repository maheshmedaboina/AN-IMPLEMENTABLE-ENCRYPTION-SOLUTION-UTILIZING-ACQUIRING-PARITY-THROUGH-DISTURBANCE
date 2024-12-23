<%@page import="java.sql.*"%>
<%String username=request.getParameter("uname");
String password=request.getParameter("pwd");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practical_public","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
    if(rs.next()){
        response.sendRedirect("AdminHome.jsp?msg=success");
    }else{
    response.sendRedirect("Admin.jsp?msg=Login Failed");
}
}catch(Exception e){
    e.printStackTrace();
}%>
        
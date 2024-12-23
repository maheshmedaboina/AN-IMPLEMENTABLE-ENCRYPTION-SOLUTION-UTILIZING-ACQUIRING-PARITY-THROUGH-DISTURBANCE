<%-- 
    Document   : Admin
    Created on : Jul 26, 2019, 5:05:25 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>A Practical Public Key</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="table.css" type="text/css" rel="stylesheet"/> 
        <style>
            body{
                background:url(images/Background.jpg);
                    margin:0px;
            }
            #head{
                width:100%;
                height:160px;
                background:url(images/blue-wallpaper.jpg);
                margin:0px;   
            }
            #h{
              width:100%;
                height:60px;  
                border:1px solid black;
            }
            #h2{
                width:100%;
                height:80px;  
                border:1px solid black;
                margin-top:0px;
            }
            ul li{
                float:right;
                width:150px;
                list-style: none;
              margin-top:20px;
              
            }
            ul li a{
                 text-decoration: none;
                 color:orange;
                 font-weight:bold;
                 font-size: 15px;
            }
            a:hover{
                color:white;
             font-size:20px;
            }
            #main1{
                width:48%;
                height:400px;
               border:2px dotted black;
                margin-top: 50px;
                margin-left:10px;
                float:left;
            }
             #ma{
                width:48%;
                height:400px;
               border:2px dotted black;
                margin-top:50px;
                margin-left:10px;
                float:right;
            }
            </style>
    </head>
    <body>
        <div id="head">
           <div id="h">
                <p style="color:whitesmoke;font-size:25px;font-weight:bold;text-align:center;">AN IMPLEMENTABLE ENCRYPTION SOLUTION UTILIZING ACQUIRING PARITY THROUGH DISTURBANCE</p> 
            </div>
            <div id="h2">
               
                <ul>
                      <li><a href="Admin.jsp">Logout</a></li>
                      <li><a href="ViewGrpah.jsp">View Graph</a></li>
                    <li><a href="VBlockedUsers.jsp">View Blocked Users</a></li>
                     <li><a href="AWords.jsp">Add Words</a></li>
                    <li><a href="VAllUsers.jsp"  style="color:whitesmoke;">View All Users</a></li>
                         <li><a href="AdminHome.jsp">Home</a></li>
                     
                </ul>
                
            </div>
                 <div id="ma">
                       <center><H2>View All Users</H2>
                           <table>
                               <tr><th>ID</th>
                               <th>NAME</th>
                               <th>EMAIL</th>
                               <th>MOBILE</th>
                               <th>ADDRESS</th>
                               <th>USERNAME</th>
                               <th>STATUS</th></tr>
                               <%try{
                                   String qer="select * from register";
                                   ResultSet r=Queries.getExecuteQuery(qer);
                                   while(r.next()){
                                     String status=r.getString("status"); 
                                     %>
                               <tr>
                                   <td><%=r.getString(1)%></td>
                                    <td><%=r.getString(2)%></td>
                                     <td><%=r.getString(3)%></td>
                                      <td><%=r.getString(4)%></td>
                                       <td><%=r.getString(5)%></td>
                                        <td><%=r.getString(6)%></td>
                                       <%if(status.equalsIgnoreCase("waiting")){
                                           %>
                                           <td><a href="Activate.jsp?id=<%=r.getString(1)%>">waiting</a></td>     
                                           <%
                                       }else{%>
                                       <td><%=r.getString(8)%></td>
                                   <%}%>
                               </tr>
                               <%
                                   }
                               }catch(Exception e){
                                  out.println(e); 
                               }
                               
                               
                               %>
                           </table>
 </center>
            </div>
            <div id="main1">
               <image src="images/Capture.PNG" width="655" height="400"/>
            </div>
            </div>
    </body>
</html>

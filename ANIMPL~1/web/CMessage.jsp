<%-- 
    Document   : Admin
    Created on : Jul 26, 2019, 5:05:25 PM
    Author     : Acer
--%>

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
                      <li><a href="User.jsp">Logout</a></li>
                    <li><a href="VMessage.jsp">View Message</a></li>
                     <li><a href="VRequest.jsp">View Request</a></li>
                    <li><a href="CMessage.jsp"  style="color:whitesmoke;">Create Message</a></li>
                         <li><a href="UserHome.jsp">HOME</a></li>
                     
                </ul>
                
            </div>
                 <div id="ma">
                       <center>
                           <%String uname=(String)session.getAttribute("uname");%>
                           <h4>WelCome: <%=uname%></h4>
                           
                           
                           <H2>CREATE MESSAGE HERE</H2>
                           
                           <form action="CMAction" method="post" enctype="multipart/form-data">
                               <table>
                                   <tr><th>TO:</th><td><input type="text" name="to"required=""></tD></tr>
                                    <tr><th>Description</th><td><input type="text" name="desc" required=""></tD></tr>
                                    <tr><th>MESSAGE FILE:</th><td><input type="file" name="file" required=""></tD></tr>
<tr><th></th><td><input type="submit" value="SEND"><input type="reset" value="RESET"></tD></tr>                               
</table>
                           </form>
 </center>
            </div>
            <div id="main1">
               <image src="images/Capture.PNG" width="655" height="400"/>
            </div>
            </div>
    </body>
</html>

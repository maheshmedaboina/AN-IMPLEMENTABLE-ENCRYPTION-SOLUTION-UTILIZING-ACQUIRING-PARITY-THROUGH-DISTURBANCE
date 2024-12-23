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
                      <li><a href="Regster.jsp" style="color:whitesmoke;">REGISTER</a></li>
                    <li><a href="User.jsp">USER</a></li>
                    <li><a href="Admin.jsp"><u>ADMIN</u></a></li>
                         <li><a href="index.html">HOME</a></li>
                     
                </ul>
                
            </div>
                 <div id="ma">
                       <center><H2>Register Here</H2>
                       <form action="RegAction.jsp" method="post">
                           <table style="width:300px;height:200px;">
                               <tr><th>Name</th><td><input type="text" name="name" required=""></td></tr>
                                 <tr><th>Email</th><td><input type="email" name="email" required=""></td></tr>
                                <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></td></tr>
                                 <tr><th>Address</th><td><input type="text" name="address" required=""></td></tr>
                              <tr><th>UserName</th><td><input type="text" name="uname" required=""></td></tr>
                                 <tr><th>Password</th><td><input type="password" name="pwd" required=""></td></tr>
                                 <tr><td><input type="submit" value="Register"></td>
                                     <td><input type="reset" value="Reset"></td></tr>
                                 <tr><td>Already Have An Account ?</td><td><a href="User.jsp">Login</a></td></tr>
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

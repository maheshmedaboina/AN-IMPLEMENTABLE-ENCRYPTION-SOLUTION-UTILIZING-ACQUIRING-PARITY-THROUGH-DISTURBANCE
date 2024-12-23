/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.dbcon.Queries;
import com.encanddec.encryption;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.concurrent.TimeUnit;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Acer
 */
@MultipartConfig(maxFileSize=16*1028*1028)
public class CMAction extends HttpServlet {
final String filepath="E:\\";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession();
        String uname=(String)session.getAttribute("uname");
        try{
            MultipartRequest mr=new MultipartRequest(request,filepath);
            
           String to=mr.getParameter("to");
           String desc=mr.getParameter("desc");
               File file=mr.getFile("file");
              String filename=file.getName();
         BufferedReader br = new BufferedReader(new FileReader(file));
            StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
           System.out.println("++++++"+data);
           //secretkey generating
           KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
           System.out.println("secret key:"+skey);
           //creating object for encryption class and calling method by passing values
           long start=System.nanoTime();
         String cipher=new encryption().encrypt(data,s);
          long end=System.nanoTime();   
            
            long entime=TimeUnit.NANOSECONDS.toMillis(end-start);
            
          String qy="select count(*) from register where username='"+to+"' and status='activated'";
    int c=0;
    ResultSet r=Queries.getExecuteQuery(qy);
    while(r.next()){
        c=r.getInt(1);
    }
    if(c!=0){
    String query="insert into message values(null,'"+uname+"','"+to+"','"+desc+"','"+cipher+"','"+skey+"','waiting','waiting','"+filename+"','"+data+"','"+entime+"','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
     
       response.sendRedirect("CMessage.jsp?msg=success");
   
 }else{
  response.sendRedirect("CMessage.jsp?msg=failed");
}
}else{
response.sendRedirect("CMessage.jsp?msg=the user doesnot exist");
}
            
        }catch(Exception e){
           System.out.println(e); 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

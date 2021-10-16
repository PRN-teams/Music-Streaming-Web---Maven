/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.cloudinary.Cloudinary;
import com.cloudinary.api.ApiResponse;
import com.cloudinary.utils.ObjectUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList; // import the ArrayList class

/**
 *
 * @author Admin
 */
public class cloudinary extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cloudinary</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cloudinary at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        System.out.println("recieved");
//        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
//  "cloud_name", "dzgxu1qsj",
//  "api_key", "882492677968754",
//  "api_secret", "44wGIN6M49yBkE3o-FslP_46BMI"));
//        System.out.println(cloudinary);

               Map config = ObjectUtils.asMap(
                "cloud_name", "djhjuqgne",
                "api_key", "767642598961942",
                "api_secret", "4HaFBxqwnCTr2buPhQ2suV-aWPk");
        Cloudinary cloudinary = new Cloudinary(config);
        
        
        try {
            ApiResponse result = cloudinary.search().execute();
            Integer time = (Integer) result.get("time");
            System.out.println(result.get("resources").getClass());
            ArrayList<Object> resource = (ArrayList<Object>) result.get("resources");
            Map<String,Object> resourcemap = (Map<String,Object>)resource.get(0);
            String url = (String) resourcemap.get("url");
            System.out.println(url);

        } catch (Exception ex) {
            Logger.getLogger(cloudinary.class.getName()).log(Level.SEVERE, null, ex);
        }
        
 

        try {
            System.out.println(cloudinary.api().resources(ObjectUtils.emptyMap()));
        } catch (Exception e) {
            e.printStackTrace();
        }
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.SongDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Singer;
import model.Song;

/**
 *
 * @author nvlon
 */
public class SearchAjaxServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String query = request.getParameter("query");
        if (query != "") {
            request.setAttribute("query", query);
            SongDAO sdb = new SongDAO();
            List<Song> result = sdb.getSongByName(query);

            for (Song song : result) {
                out.print("<div class=\"box\">\n"
                        + "  <div class=\"box_image\">\n"
                        + "       <img src=\"" + song.getImg() + "\" alt=\"\">\n"
                        + "  </div>\n"
                        + "  <div class=\"box_tittle\">\n"
                        + "       <a href=\"player?songID=" + song.getSongID() + "\">" + song.getName() + "</a>\n"
                        + "       <p style=\"font-size: smaller; font-weight: normal\">");
                for (Singer sg : song.getArtist()) {
                    out.print("<a href=\"#\">" + sg.getName() + "</a>");
                    int lastIndex = song.getArtist().size() - 1;
                    if (!sg.equals(song.getArtist().get(lastIndex))) {
                        out.print(", ");
                    }
                }
                out.print("       </p>\n"
                        + "  </div>\n"
                        + "</div>");
            }
        } else {
            CategoryDAO cdb = new CategoryDAO();
            List<Category> c = cdb.getAllCategory();
            request.setAttribute("clist", c);
            for (Category category : c) {
                out.print("<div class=\"genres\" id=\"genres\" style=\"width: 250px; margin: 20px;\">\n"
                        + "    <a href=\"#\"><img src=\""+category.getImg()+"\" alt=\"\" style=\"width: 250px;\"></a>\n"
                        + "</div>");
            }
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

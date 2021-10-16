package controller;

import dal.PlaylistDAO;
import dal.SongDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Playlist;
import model.Song;

/**
 *
 * @author admin
 */
public class LikeServlet extends HttpServlet {

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
            out.println("<title>Servlet LikeServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LikeServlet at " + request.getContextPath() + "</h1>");
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
        int songID = Integer.parseInt(request.getParameter("songID"));
        PlaylistDAO pDAO = new PlaylistDAO();

        SongDAO sdb = new SongDAO();
        Song s = sdb.getSongByID(songID);
        PlaylistDAO playDAO = new PlaylistDAO();
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        List<Playlist> listP = playDAO.getAllList(a.getUsername());

        if (!pDAO.checkSong(listP.get(0).getListID(), songID)) {
            pDAO.like(songID);
            pDAO.AddtoList(listP.get(0).getListID(), songID);
            s.setlikeCount(s.getlikeCount()+1);
        } else {
            pDAO.dislike(songID);
            pDAO.deleteSong(listP.get(0).getListID(), songID);
            s.setlikeCount(s.getlikeCount()-1);
        }

        request.setAttribute("listP", listP);
        request.setAttribute("song", s);
        request.getRequestDispatcher("Player.jsp").forward(request, response);
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

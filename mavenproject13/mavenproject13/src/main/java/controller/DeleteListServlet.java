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
public class DeleteListServlet extends HttpServlet {

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
            out.println("<title>Servlet DeleteListServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteListServlet at " + request.getContextPath() + "</h1>");
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
        int listID = Integer.parseInt(request.getParameter("listID"));
        PlaylistDAO pDAO = new PlaylistDAO();
        Playlist p = pDAO.getListById(listID);
        if (!p.getListName().matches("My Favourite")) {
            
            pDAO.deleteSong(listID, 0);
            pDAO.deleteList(listID);
            
            SongDAO sdb = new SongDAO();
            List<Song> top6 = sdb.getMostLike();
            request.setAttribute("top6", top6);

            HttpSession session = request.getSession();
            if (session.getAttribute("account") != null) {
                Account a = (Account) session.getAttribute("account");
                PlaylistDAO listDAO = new PlaylistDAO();
                List<Playlist> listPlay = listDAO.getAllList(a.getUsername());
                request.setAttribute("listP", listPlay);
            }

            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            SongDAO sdb = new SongDAO();
            List<Song> top6 = sdb.getMostLike();
            request.setAttribute("top6", top6);

            HttpSession session = request.getSession();
            if (session.getAttribute("account") != null) {
                Account a = (Account) session.getAttribute("account");
                PlaylistDAO listDAO = new PlaylistDAO();
                List<Playlist> listPlay = listDAO.getAllList(a.getUsername());
                request.setAttribute("listP", listPlay);
            }

            request.getRequestDispatcher("Home.jsp").forward(request, response);
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

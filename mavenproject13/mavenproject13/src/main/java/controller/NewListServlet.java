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
public class NewListServlet extends HttpServlet {

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
            out.println("<title>Servlet NewListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewListServlet at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("listName");
        PlaylistDAO pDAO = new PlaylistDAO();
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (pDAO.checkExistList(name, name)) {
//            response.sendRedirect("Index.jsp");
            SongDAO sdb = new SongDAO();

            List<Song> top6 = sdb.getMostLike();
            request.setAttribute("top6", top6);

            List<Song> latest = sdb.getLatest();
            request.setAttribute("latest", latest);

            if (session.getAttribute("account") != null) {
                PlaylistDAO listDAO = new PlaylistDAO();
                List<Playlist> listPlay = listDAO.getAllList(a.getUsername());
                request.setAttribute("listP", listPlay);
            }

            request.setAttribute("currentPage", "Home");
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            pDAO.createList(a.getUsername(), name);
//            response.sendRedirect("Index.jsp");
            
            SongDAO sdb = new SongDAO();

            List<Song> top6 = sdb.getMostLike();
            request.setAttribute("top6", top6);

            List<Song> latest = sdb.getLatest();
            request.setAttribute("latest", latest);

            if (session.getAttribute("account") != null) {
                PlaylistDAO listDAO = new PlaylistDAO();
                List<Playlist> listPlay = listDAO.getAllList(a.getUsername());
                request.setAttribute("listP", listPlay);
            }

            request.setAttribute("currentPage", "Home");
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

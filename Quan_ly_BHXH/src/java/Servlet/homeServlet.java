package Servlet;

import Data.SetupInformDB;
import Model.SetupInform;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class homeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        String action = (String) request.getParameter("action");
        String url = "";
        if (action.equals("list")) {
            url = "/jsp/list.jsp";
        } else if (action.equals("report")) {
            url = "/jsp/report.jsp";
        } else if (action.equals("setup")) {
            //lấy thông tin set up
            SetupInformDB setupInformDB = new SetupInformDB();
            SetupInform setupInform = setupInformDB.getSetupImformation();
            HttpSession session = request.getSession();
            session.setAttribute("setupInform", setupInform);
            url = "/jsp/setup.jsp";
        }

        //chuyen giao dien
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(homeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(homeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

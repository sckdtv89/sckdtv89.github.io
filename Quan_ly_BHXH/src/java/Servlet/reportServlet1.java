package Servlet;

import Data.MemberDB;
import Model.Province;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class reportServlet1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        String month = (String) request.getParameter("month");
        String year = (String) request.getParameter("year");
        int index = Integer.parseInt(request.getParameter("prov"));
        String messager2 = "";
        String time3 = month + "-" + year;
        String time1 = year + "-0" + month + "___";
        //lấy danh sách
        HttpSession session = request.getSession();
        ArrayList<Province> provinceList = (ArrayList<Province>) session.getAttribute("provinceList");
        String province = provinceList.get(index).getName();
        System.out.println(province);

//        time3 = "1-2021";
//        time1 = "2021-01___";
//        province = "Nam Định";

        int newMember, allMember, outMember;
        MemberDB memberDB = new MemberDB();
        newMember = memberDB.countMember(1, time1, province);
        outMember = memberDB.countMember(2, time1, province);
        allMember = memberDB.countMember(3, time3, province);
        request.setAttribute("newMember", newMember);
        request.setAttribute("allMember", allMember);
        request.setAttribute("outMember", outMember);

        //chuyen giao dien
        String url = "/jsp/result_report.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(reportServlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(reportServlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

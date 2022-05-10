package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name ="controllers.AdsIndexServlet")
public class SearchAdServlet extends HttpServlet {
    private static final String serialVersionUID = "title";


    public SearchAdServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/HTML");
        PrintWriter out = response.getWriter();
        String search=request.getParameter("search");
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "admin", "password");

            PreparedStatement ps=conn.prepareStatement("select * from ads where title=?");
            ps.setString(1, "index.jsp");
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                response.sendRedirect("/WEB-INF/ads/index.jsp");
            }
            else{
                out.print("Sorry! Could not recognise the search!");
            }
        }

        catch(Exception e)

        {
            out.println(e.getMessage());
        }
    }
}


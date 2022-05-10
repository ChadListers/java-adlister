package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String query = request.getParameter("search");
//        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByName(favoriteColor));
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.setAttribute("users", DaoFactory.getUsersDao().all());
        if(query != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().findAdByName(query));
        }
        request.setAttribute("categories", DaoFactory.getCategoriesDao().all());





        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}

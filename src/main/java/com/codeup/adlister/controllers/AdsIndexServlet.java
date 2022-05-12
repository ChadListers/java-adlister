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
        System.out.println(query);
//        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByName(favoriteColor));
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.setAttribute("users", DaoFactory.getUsersDao().all());
        if(query != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().findAdByName(query));
        }
        request.setAttribute("categories", DaoFactory.getCategoriesDao().all());

//        if(request.getQueryString() != null) {
//            request.setAttribute("ads", DaoFactory.getAdsDao().adsByCategoriesId(Long.parseLong(request.getQueryString())));
//        }
//        System.out.println(request.getQueryString());


        if(request.getParameter("catid") != null) {
            long catId = Long.parseLong(request.getParameter("catid"));
            request.setAttribute("ads", DaoFactory.getAdsDao().adsByCategoriesId(catId));
        }

        if(request.getParameter("below") != null) {
            int below = Integer.parseInt(request.getParameter("below"));
            request.setAttribute("ads", DaoFactory.getAdsDao().allByAdPriceBelow(below));
        }

        if(request.getParameter("above") != null) {
            int above = Integer.parseInt(request.getParameter("above"));
            request.setAttribute("ads", DaoFactory.getAdsDao().allByAdPriceAbove(above));
        }
        if(request.getParameter("sort") != null) {
            String sortOrder = request.getParameter("sort");
            request.setAttribute("ads", DaoFactory.getAdsDao().sortPrice(sortOrder));
        }



        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}

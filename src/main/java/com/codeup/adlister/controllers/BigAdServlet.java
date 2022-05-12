package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ad")
public class BigAdServlet extends HttpServlet {
//    private int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Ad currentViews = DaoFactory.getAdsDao().findAdById(Long.parseLong(req.getQueryString()));

        DaoFactory.getAdsDao().views(currentViews.getViews() + 1, Long.parseLong(req.getQueryString()));

//        counter += 1;
//        System.out.println(counter);

//        System.out.println(req.getQueryString());

        req.setAttribute("ads", DaoFactory.getAdsDao().allByAdId(Long.parseLong(req.getQueryString())));
        req.setAttribute("categories", DaoFactory.getCategoriesDao().all());
        req.setAttribute("users", DaoFactory.getUsersDao().all());

        req.getRequestDispatcher("/WEB-INF/ads/big-ad.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}

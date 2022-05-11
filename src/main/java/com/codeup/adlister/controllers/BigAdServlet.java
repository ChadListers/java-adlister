package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ad")
public class BigAdServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println(req.getQueryString());

        req.setAttribute("ads", DaoFactory.getAdsDao().allByAdId(Long.parseLong(req.getQueryString())));
        req.setAttribute("categories", DaoFactory.getCategoriesDao().all());
        req.setAttribute("users", DaoFactory.getUsersDao().all());

        req.getRequestDispatcher("/WEB-INF/ads/big-ad.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}

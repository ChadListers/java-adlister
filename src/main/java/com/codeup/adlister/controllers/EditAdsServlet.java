package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/profile/ads/edit")
public class EditAdsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        User user  = (User) request.getSession().getAttribute("user");
        request.setAttribute("myads", DaoFactory.getAdsDao().all(user.getId()));
        request.setAttribute("categories", DaoFactory.getCategoriesDao().all());

        long editAdId = Long.parseLong(request.getParameter("edit"));
        System.out.println(editAdId);
        Ad adToEdit = DaoFactory.getAdsDao().findAdById(editAdId);

        request.setAttribute("adToEdit", adToEdit);

        request.getRequestDispatcher("/WEB-INF/ads/edit-ads.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title =  request.getParameter("title");
        String description =  request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        long categoryId = Long.parseLong(request.getParameter("category"));
        String url = request.getParameter("image");

        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                title,
                description,
                price,
                categoryId,
                url,
                user.getId()
        );
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile/ads");
    }


}

package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/profile/edit")
public class EditUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

//        User user  = (User) request.getSession().getAttribute("user");
//        request.setAttribute("myads", DaoFactory.getAdsDao().all(user.getId()));
//        request.setAttribute("categories", DaoFactory.getCategoriesDao().all());
//
//        long editAdId = Long.parseLong(request.getParameter("edit"));
//        System.out.println(editAdId);
//        Ad adToEdit = DaoFactory.getAdsDao().findAdById(editAdId);
//
//        request.setAttribute("adToEdit", adToEdit);

        request.getRequestDispatcher("/WEB-INF/ads/edit-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
//        String hash = Password.hash(password);
        long id = Long.parseLong(request.getParameter("id"));


        // validate input
//        boolean inputHasErrors = username.isEmpty()
//                || email.isEmpty()
//                || password.isEmpty()
//                || (! password.equals(passwordConfirmation));
//
//        if (inputHasErrors) {
//            response.sendRedirect("/profile/edit");
//            return;
//        }

        User user = new User(id, username, email, phone, firstName, lastName);
        DaoFactory.getUsersDao().update(user);
        request.getSession().invalidate();
        response.sendRedirect("/login");



    }
}


package com.servlet_programs;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/SayHello")
public class SayHello extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        try {
            response.getWriter().println("Welcome to your first servlet code  " + fname + " " + lname);

        } catch (IOException e) {
            System.out.println("Error printing result " + e.getMessage() + e);
        }
    }

}

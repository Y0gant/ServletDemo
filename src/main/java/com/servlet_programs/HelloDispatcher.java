package com.servlet_programs;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Hello")
public class HelloDispatcher extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
//        int result = (int) req.getAttribute("result");
        try {
            PrintWriter printWriter = resp.getWriter();
            printWriter.println("Hey from HelloDispatcher Servlet");
//            printWriter.println("Previous servlet produced result : " + result);
        } catch (IOException e) {
            System.out.println("Error :" + e.getLocalizedMessage() + e);
        }
    }
}

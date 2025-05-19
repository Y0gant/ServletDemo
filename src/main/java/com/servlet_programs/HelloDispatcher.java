package com.servlet_programs;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Hello")
public class HelloDispatcher extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();
        int result = (int) req.getAttribute("result");
        try {
            PrintWriter printWriter = resp.getWriter();
            printWriter.println("Hey from HelloDispatcher Servlet");
            printWriter.println("Previous servlet produced result : " + result);
            if (session != null && session.getAttribute("result") != null) {
                int result2 = (int) session.getAttribute("result");
                printWriter.println("Result from session: " + result2);
            } else {
                printWriter.println("No session result found.");
            }
        } catch (IOException e) {
            System.out.println("Error :" + e.getLocalizedMessage() + e);
        }
    }
}

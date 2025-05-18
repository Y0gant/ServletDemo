package com.servlet_programs;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/calculator")
public class CalculatorServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        String operation = request.getParameter("operation");
        int result = switch (operation) {
            case "add" -> num1 + num2;
            case "sub" -> num1 - num2;
            case "mul" -> num1 * num2;
            case "div" -> num1 / num2;
            default -> throw new IllegalStateException("Unexpected value: " + operation);
        };
        try {
            response.getWriter().println("<h1>Result is : " + result + "</h1>");

        } catch (IOException e) {
            System.out.println("Error printing result " + e.getMessage() + e);
        }

    }

}

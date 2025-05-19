package com.servlet_programs;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
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

        request.setAttribute("result", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Hello");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            System.out.println("Error dispatching :" + e.getMessage() + e);
        }

    }

}

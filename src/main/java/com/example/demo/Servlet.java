
package com.example.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet", urlPatterns = {"/get-name"})
public class Servlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String name = new String("thinhorigami");
    req.setAttribute("name", name);
    RequestDispatcher reqd = req.getRequestDispatcher("index.jsp");
    reqd.forward(req, resp);
  }
}
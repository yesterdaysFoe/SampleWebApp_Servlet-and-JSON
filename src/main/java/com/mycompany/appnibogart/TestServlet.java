package com.mycompany.appnibogart;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

public class TestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User u = new User();
        u.setName("Bogart");
        u.setAddress("Iloilo City");
        u.setContactNo("1234567");
        response.setContentType("application/javascript;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            JSONObject jsonObject = new JSONObject(u);
            String myJson = jsonObject.toString();
            out.println(myJson);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

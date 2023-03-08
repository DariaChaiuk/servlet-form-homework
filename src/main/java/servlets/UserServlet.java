package servlets;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "userServlet", value = "/user")
public class UserServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Map<String, String> errors = new HashMap<String, String>();
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        Integer age = Integer.parseInt(request.getParameter("age"));
        String job = request.getParameter("job");
        String gender = request.getParameter("gender");

        if (firstName.isBlank()) {
            errors.put("firstName", "First name can not include only spaces");
        }
        if (lastName.isBlank()) {
            errors.put("lastName", "Last name can not include only spaces");
        }
        if (job.isBlank()) {
            errors.put("job", "Last name can not include only spaces");
        }
        if (age < 0) {
            errors.put("age", "Your age can not be less then 0");
        }

        if (errors.isEmpty()) {
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("age", age);
            request.setAttribute("job", job);
            request.setAttribute("gender", gender);
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/registry/registration-success.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
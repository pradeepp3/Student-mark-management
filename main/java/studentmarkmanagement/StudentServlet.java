package studentmarkmanagement;

import java.io.IOException;
import studentmarkmanagement.Student;
import studentmarkmanagement.StudentUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/student")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rollNo = request.getParameter("rollNo");
        Student student = StudentUtil.getStudent(rollNo);

        if (student != null) {
            request.setAttribute("student", student);
            request.getRequestDispatcher("student.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Student not found!");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

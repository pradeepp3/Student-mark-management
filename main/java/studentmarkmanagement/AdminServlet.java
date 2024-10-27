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
@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String rollNo = request.getParameter("rollNo");
        String dob = request.getParameter("dob");
        String branch = request.getParameter("branch");
        int subject1Mark = Integer.parseInt(request.getParameter("subject1"));
        int subject2Mark = Integer.parseInt(request.getParameter("subject2"));
        int subject3Mark = Integer.parseInt(request.getParameter("subject3"));
        int subject4Mark = Integer.parseInt(request.getParameter("subject4"));

        Student student = new Student(name, rollNo, dob, branch, subject1Mark, subject2Mark, subject3Mark, subject4Mark);
        StudentUtil.addStudent(student);

        response.sendRedirect("admin.jsp");
    }
}

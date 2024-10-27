package studentmarkmanagement;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/deleteStudent")
public class DeleteStudentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rollNo = request.getParameter("rollNo");

        if (rollNo != null && !rollNo.isEmpty()) {
            boolean success = StudentUtil.deleteStudent(rollNo);
            if (success) {
                request.setAttribute("message", "Student deleted successfully!");
            } else {
                request.setAttribute("message", "Student not found or deletion failed!");
            }
        } else {
            request.setAttribute("message", "Roll number is required!");
        }
        request.getRequestDispatcher("delete.jsp").forward(request, response);
    }
}



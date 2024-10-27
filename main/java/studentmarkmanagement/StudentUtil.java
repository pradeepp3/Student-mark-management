package studentmarkmanagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentUtil {
    public static void addStudent(Student student) {
        String sql = "INSERT INTO students (name, roll_no, dob, branch, subject1_mark, subject2_mark, subject3_mark, subject4_mark, total) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, student.getName());
            pstmt.setString(2, student.getRollNo());
            pstmt.setString(3, student.getDob());
            pstmt.setString(4, student.getBranch());
            pstmt.setInt(5, student.getSubject1Mark());
            pstmt.setInt(6, student.getSubject2Mark());
            pstmt.setInt(7, student.getSubject3Mark());
            pstmt.setInt(8, student.getSubject4Mark());
            pstmt.setInt(9, student.getTotal());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Student getStudent(String rollNo) {
        String sql = "SELECT * FROM students WHERE roll_no = ?";
        Student student = null;

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, rollNo);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                student = new Student(
                        rs.getString("name"),
                        rs.getString("roll_no"),
                        rs.getString("dob"),
                        rs.getString("branch"),
                        rs.getInt("subject1_mark"),
                        rs.getInt("subject2_mark"),
                        rs.getInt("subject3_mark"),
                        rs.getInt("subject4_mark")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }
    public static boolean deleteStudent(String rollNo) {
        String sql = "DELETE FROM students WHERE roll_no = ?";
        boolean rowDeleted = false;

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, rollNo);
            rowDeleted = pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }


    // Other utility methods for updating and deleting students can be added here
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #fbf9f9;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
    }
    h3 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
    }
    label {
        font-weight: bold;
    }
    input[type="text"], input[type="number"], input[type="date"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
        padding: 10px;
        margin-top: 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
    }
    input[type="reset"] {
        background-color: #f44336;
        color: white;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    input[type="reset"]:hover {
        background-color: #e53935;
    }
    a{
    text-decoration:none;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h3>Add/Update Student Details</h3>
        <form action="admin" method="post">
            <table>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                <tr>
                    <td><label for="rollNo">Roll No:</label></td>
                    <td><input type="text" id="rollNo" name="rollNo" required></td>
                </tr>
                <tr>
                    <td><label for="dob">Date of Birth:</label></td>
                    <td><input type="date" id="dob" name="dob" required></td>
                </tr>
                <tr>
                    <td><label for="branch">Branch:</label></td>
                    <td><input type="text" id="branch" name="branch" required></td>
                </tr>
                <tr>
                    <td><label for="subject1">DAA Mark:</label></td>
                    <td><input type="number" id="subject1" name="subject1" required></td>
                </tr>
                <tr>
                    <td><label for="subject2">DMLA Mark:</label></td>
                    <td><input type="number" id="subject2" name="subject2" required></td>
                </tr>
                <tr>
                    <td><label for="subject3">JAVA Mark:</label></td>
                    <td><input type="number" id="subject3" name="subject3" required></td>
                </tr>
                <tr>
                    <td><label for="subject4">ML Mark:</label></td>
                    <td><input type="number" id="subject4" name="subject4" required></td>
                </tr>
            </table>
            <input type="submit" value="Add Student">
            <input type="reset" value="Reset"><hr>
            <center><a href="adddel.jsp">HOME</a></center>
        </form>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Search</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-box {
        background-color: #fbf9f9;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: center;
    }
    h2, h3 {
        margin: 0 0 15px;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    table {
        margin: 10px 0;
    }
    td {
        padding: 5px;
    }
    input[type="text"] {
        padding: 8px;
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
        padding: 10px 20px;
        margin: 10px 5px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #45a049;
    }
    a {
        display: inline-block;
        margin-top: 15px;
        text-decoration: none;
        color: #007BFF;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <div class="form-box">
        <h2>Student Section</h2>
        <form action="student" method="get">
            <h3>Search Student</h3>
            <table>
                <tr><td><label for="rollNo">Roll No:</label></td>
                <td><input type="text" id="rollNo" name="rollNo" required></td></tr>
            </table>
            <div>
                <input type="submit" value="Search">
                <input type="reset" value="Reset">
            </div>
            <a href="front.jsp">Go back</a>
        </form>
    </div>
</div>
</body>
</html>

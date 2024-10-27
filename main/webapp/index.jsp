<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Mark Management</title> <style>
    
    td {
        height: 40px;
    }
    input {
        border-radius: 10px;
        height: 25px;
    }
    select {
        border-radius: 10px;
        width: 170px;
    }
    </style>
</head>
<body style="background-color: lightsteelblue">
<center>
    <h1>Welcome to Student Mark Management</h1>
    <div style="display: block; width: 400px; background-color: #fbf9f9; padding: 10px; border-radius: 10px; box-shadow: solid grey;">
    <form action="admin" method="post"> <table>
    <H3>Update Students Details</H3>
        <tr><td><label>Name:</label></td><td><input type="text" name="name" required></td></tr>
        <tr> <td> <label>Roll No:</label></td><td><input type="text" name="rollNo" required></td></tr>
         <tr> <td><label>Date of Birth:</label></td><td><input type="date" name="dob" required></td></tr>
        <tr>  <td><label>Branch:</label></td><td><input type="text" name="branch" required></td></tr>
        <tr>  <td><label>DAA Mark:</label></td><td><input type="number" name="subject1" required></td></tr>
         <tr> <td><label>DMLA Mark:</label></td><td><input type="number" name="subject2" required></td></tr>
         <tr> <td><label>JAVA Mark:</label></td><td><input type="number" name="subject3" required></td></tr>
         <tr> <td><label>ML Mark:</label></td><td><input type="number" name="subject4" required></td></tr>
        </table><input type="submit" value="Add Student">&nbsp &nbsp &nbsp &nbsp &nbsp<input type="reset" value="Reset">
    </form>
</div>

<div>
    <h2>Student Section</h2>
    <div style="display: block; width: 400px; background-color: #fbf9f9; padding: 10px; border-radius: 10px; box-shadow: solid grey;">
    <form action="student" method="get">
        <h3>Search Student</h3><table>
        <tr><td><label>Roll No:</label></td><td><input type="text" name="rollNo" required></td></tr>
        </table>
        <input type="submit" value="Search">&nbsp &nbsp &nbsp<input type="reset" value="Reset">
        
    </form>
    </div>
    </center>
</body>
</html>
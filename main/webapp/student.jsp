<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="studentmarkmanagement.Student" %>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Marks</title>
</head>
<body style="background-color: lightsteelblue">
<center>
    <h1>Welcome to Student Mark Management</h1>
    <div style="display: block; width: 400px; background-color: #fbf9f9; padding: 10px; border-radius: 10px; box-shadow: solid grey;">
    <h1>Student Marks</h1>
    <%
        Student student = (Student) request.getAttribute("student");
        if (student != null) {
    %>
    <div>
        <p>Name: <%= student.getName() %></p>
        <p>Roll No: <%= student.getRollNo() %></p>
        <p>Date of Birth: <%= student.getDob() %></p>
        <p>Branch: <%= student.getBranch() %></p>
        <p>Subject 1 Mark: <%= student.getSubject1Mark() %></p>
        <p>Subject 2 Mark: <%= student.getSubject2Mark() %></p>
        <p>Subject 3 Mark: <%= student.getSubject3Mark() %></p>
        <p>Subject 4 Mark: <%= student.getSubject4Mark() %></p>
        <p>Total: <%= student.getTotal() %></p>
        </div>
        
    <%
        } else {
    %>
        <p>No student found!</p>
    <%
        }
    %>
    <a href="front.jsp">Go Back</a>
</body>
</html>
    
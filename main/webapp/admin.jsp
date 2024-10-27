<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Section</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height of the viewport */
            font-family: Arial, sans-serif; /* Font family */
            background-color: #f4f4f9; /* Light background color */
            margin: 0; /* Remove default margin */
        }
        .container {
            text-align: center; /* Center text */
            background-color: #ffffff; /* White background for the container */
            padding: 30px; /* Padding around the text */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }
        h1 {
            color: #333333; /* Dark gray color for the heading */
            font-size: 24px; /* Font size for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }
        a {
            text-decoration: none; /* Remove underline from the link */
            color: #007bff; /* Blue color for the link */
            font-size: 16px; /* Font size for the link */
            transition: color 0.3s; /* Smooth color transition on hover */
        }
        a:hover {
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Added Successfully!</h1>
        <a href="front.jsp">Go Back</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Freelancer Dashboard</h1>
    <ul>
        <li><a href="/viewProjects" style="color: #fff;">View Available Projects</a></li>
        <li><a href="/profile" style="color: #fff;">Edit Profile</a></li>
        <li><a href="/proposals" style="color: #fff;">View Proposals</a></li>
    </ul>
</div>
</body>
</html>

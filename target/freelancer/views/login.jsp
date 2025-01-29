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
        .login-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .form-control {
            border-radius: 25px;
            padding: 10px 15px;
        }
        .btn-primary {
            background: #ff7e5f;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 16px;
        }
        .btn-primary:hover {
            background: #feb47b;
            background: linear-gradient(to right, #feb47b, #ff7e5f);
        }
        .login-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-header h1 {
            font-size: 28px;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="login-header">
        <h1>Welcome Back!</h1>
    </div>
    <form:form method="post" action="/login">
        <div class="form-group">
            <label for="username">Username</label>
            <form:input path="username" class="form-control" placeholder="Enter your username" />
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password" class="form-control" placeholder="Enter your password" />
        </div>
        <div class="form-group text-center">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
    </form:form>
</div>
</body>
</html>

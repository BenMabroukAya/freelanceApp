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
        .project-card {
            margin-bottom: 20px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
        }
        .btn-primary {
            background: #ff7e5f;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 14px;
        }
        .btn-primary:hover {
            background: #feb47b;
            background: linear-gradient(to right, #feb47b, #ff7e5f);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Available Projects</h1>
    <c:forEach items="${projects}" var="project">
        <div class="project-card">
            <h3>${project.title}</h3>
            <p>${project.description}</p>
            <form:form method="post" action="/apply">
                <input type="hidden" name="projectId" value="${project.id}" />
                <button type="submit" class="btn btn-primary">Apply</button>
            </form:form>
        </div>
    </c:forEach>
</div>
</body>
</html>

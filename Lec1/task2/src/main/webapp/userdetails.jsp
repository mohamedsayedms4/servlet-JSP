<%@ page import="java.io.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Info</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #fff);
            padding: 40px;
            animation: fadeIn 1s ease-in-out;
        }

        .container {
            background-color: #ffffff;
            padding: 25px;
            max-width: 600px;
            margin: auto;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease-in-out;
        }

        h2 {
            color: #00796b;
            text-align: center;
        }

        .info {
            margin: 15px 0;
            font-size: 18px;
        }

        .label {
            font-weight: bold;
            color: #004d40;
        }

        @keyframes fadeIn {
            from {opacity: 0;}
            to {opacity: 1;}
        }

        @keyframes slideIn {
            from {transform: translateY(-30px); opacity: 0;}
            to {transform: translateY(0); opacity: 1;}
        }
    </style>
</head>
<body>

<%
    String fullName = request.getParameter("fullName");
    String password = request.getParameter("password");
    String radioCity = request.getParameter("radioCity");
    String selectCity = request.getParameter("selectCity");

    // Cookie expiration: 1 day = 24*60*60 seconds = 86400
    int oneDay = 60 * 60 * 24;

    Cookie cookie1 = new Cookie("fullName", fullName);
    cookie1.setMaxAge(oneDay);
    response.addCookie(cookie1);

    Cookie cookie2 = new Cookie("password", password);
    cookie2.setMaxAge(oneDay);
    response.addCookie(cookie2);

    Cookie cookie3 = new Cookie("radioCity", radioCity);
    cookie3.setMaxAge(oneDay);
    response.addCookie(cookie3);
    
    Cookie cookie4 = new Cookie("selectCity", selectCity);
    cookie4.setMaxAge(oneDay);
    response.addCookie(cookie4);

  
%>
<div class="container">
    <h2>User Submitted Data</h2>
    
    <div class="info"><span class="label">Full Name:</span> ${param.fullName}</div>
    <div class="info"><span class="label">Password:</span> ${param.password}</div>
    <div class="info"><span class="label">Radio City:</span> ${param.radioCity}</div>
     <div class="info"><span class="label">Select City:</span> ${param.selectCity}</div>

</div>
</body>
</html>

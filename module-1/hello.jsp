<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Example</title>
</head>
<body>
    <h1>Welcome to my first JSP page!</h1>
    <p>
        <%-- Java code embedded in JSP --%>
        <% java.util.Date currentDate = new java.util.Date(); %>
        The current date and time is: <strong><%= currentDate.toString() %></strong>.
    </p>
    <p>
        <% 
            // simple loop demonstration
            for(int i = 1; i <= 5; i++) { 
        %>
            List item <%= i %><br/>
        <% } %>
    </p>
</body>
</html>

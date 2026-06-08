<%--
    Name: Johnathan Smith
    Date: June 7, 2026
    Assignment: CSD 430 - JSP Installation and Configuration
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Example</title>
</head>
<body>
    <main>
        <h1>Welcome to my first JSP page!</h1>

        <%-- Java code block that creates variables for the page output. --%>
        <%
            String studentName = "Johnathan Smith";
            java.util.Date currentDate = new java.util.Date();
        %>

        <p>Hello, <strong><%= studentName %></strong>.</p>
        <p>The current date and time is: <strong><%= currentDate.toString() %></strong>.</p>

        <h2>JSP Generated List</h2>
        <ul>
            <%-- Java loop that creates five list items in HTML. --%>
            <%
                for (int listItemNumber = 1; listItemNumber <= 5; listItemNumber++) {
            %>
                <li>List item <%= listItemNumber %></li>
            <%
                }
            %>
        </ul>
    </main>
</body>
</html>

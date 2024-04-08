<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%
    // Simulated user authentication
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
    }
    
    // Simulated content listing
    Map<String, String> content = new HashMap<>();
    content.put("1", "Video 1");
    content.put("2", "Video 2");
    content.put("3", "Video 3");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h1>Welcome, <%= username %>!</h1>
    <h2>Your Content:</h2>
    <ul>
        <% for (Map.Entry<String, String> entry : content.entrySet()) { %>
            <li><a href="video.jsp?id=<%= entry.getKey() %>"><%= entry.getValue() %></a></li>
        <% } %>
    </ul>
    <p><a href="logout.jsp">Logout</a></p>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Simulated content playback
    String videoId = request.getParameter("id");
    Map<String, String> content = new HashMap<>();
    content.put("1", "Video 1 URL");
    content.put("2", "Video 2 URL");
    content.put("3", "Video 3 URL");
    String videoUrl = content.get(videoId);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Video Player</title>
</head>
<body>
    <h1>Now Playing: <%= videoId %></h1>
    <video controls>
        <source src="<%= videoUrl %>" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</body>
</html>

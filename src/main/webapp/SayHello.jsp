<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%
    String first = request.getParameter("fname");
    String last = request.getParameter("lname");
%>
<div class="result-container">
    <h1> Hey <%=first%> <%=last%>
    </h1>
    <p>Welcome to your first servlet code </p>

</div>
<a href="index.jsp" class="btn">← Back to Home</a>

</body>
</html>

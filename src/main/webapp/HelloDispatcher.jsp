<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello JSP</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="result-container">
    <h1>Hey from JSP Page</h1>
    <%
        Integer result = (Integer) request.getAttribute("result");
        if (result != null) {
    %>
    <p><span>Result from request attribute:</span> <%= result %>
    </p>
    <%
    } else {
    %>
    <p>No result was found in the request attribute.</p>
    <%
        }

        Integer sessionResult = (Integer) session.getAttribute("result");
        if (sessionResult != null) {
    %>
    <p><span>Result from session:</span> <%= sessionResult %>
    </p>
    <%
    } else {
    %>
    <p>No result was found in session.</p>
    <%
        }

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("calcResult".equals(cookie.getName())) {
    %>
    <p><span>Result from cookie:</span> <%= cookie.getValue() %>
    </p>
    <%
            }
        }
    } else {
    %>
    <p>No cookies were found.</p>
    <%
        }
    %>
</div>
<a href="index.jsp" class="btn">← Back to Home</a>

</body>
</html>
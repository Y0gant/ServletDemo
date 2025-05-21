<%@ page contentType="text/html;charset=UTF-8" language="java"
         isErrorPage="true" %>
<html>
<head>
    <title>Error Occurred</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="error-container">
    <h1>Oops! Something went wrong.</h1>
    <p class="error-message">
        Error Message: <%=  exception.getMessage() %>
    </p>
</div>
<a href="index.jsp" class="error-btn">Please try again</a>
</body>
</html>

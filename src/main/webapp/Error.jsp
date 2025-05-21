<%@ page contentType="text/html;charset=UTF-8" language="java"
         isErrorPage="true" %>
<%@ page import="com.servlet_programs.ExceptionHandler" %>

<html>
<head>
    <title>Error Occurred</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="error-container">
    <h1>Oops! Something went wrong.</h1>
    <p class="error-message">
        Error Message: <%= exception.getMessage() %>
    </p>

    <div class="error-box">
        <p>Exception Name: <%= exception.getClass().getName() %>
        </p>
        <p>Message: <%= exception.getMessage() %>
        </p>
        <p>Complete Stack Trace:</p>
        <pre>

            <%=ExceptionHandler.printStacktrace(exception)
            %>
            <%="Cause : " + ExceptionHandler.printCause(exception)
            %>
    </div>


</div>
<a href="index.jsp" class="error-btn">Please try again</a>
</body>
</html>

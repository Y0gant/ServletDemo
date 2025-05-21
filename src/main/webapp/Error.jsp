<%@ page contentType="text/html;charset=UTF-8" language="java"
         isErrorPage="true" %>
<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>

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
<%
    StringWriter sw = new StringWriter();
    PrintWriter pw = new PrintWriter(sw);
    exception.printStackTrace(pw);
    out.print(sw.toString());

    Throwable cause = exception.getCause();
    if (cause != null) {
        out.println("\nCaused by:");
        StringWriter causeSw = new StringWriter();
        PrintWriter causePw = new PrintWriter(causeSw);
        cause.printStackTrace(causePw);
        out.print(causeSw.toString());
    }
%>
        </pre>
    </div>


</div>
<a href="index.jsp" class="error-btn">Please try again</a>
</body>
</html>

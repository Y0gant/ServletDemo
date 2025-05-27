<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Servlet Example</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form action="SayHello.jsp" method="get">
    <label for="fname">First Name:</label>
    <br/>
    <input id="fname" name="fname" type="text"/>
    <br/>
    <label for="lname">Last Name:</label>
    <br/>
    <input id="lname" name="lname" type="text"/> <br/>
    <input type="submit" value="Send" class="btn"/>
    <input type="reset" value="Reset" class="btn"/>

</form>
<form action="calculator" method="post">
    Enter first number : <label>
    <input name="num1" type="text"/>
</label><br/>
    Enter the second number:<label>
    <input name="num2" type="text"/>
</label><br/>
    <div class="radio-group">
        <label class="radio-option">
            <input name="operation" type="radio" value="add"/>
            Addition
        </label>
        <label class="radio-option">
            <input name="operation" type="radio" value="sub"/>
            Subtraction
        </label>
        <label class="radio-option">
            <input name="operation" type="radio" value="mul"/>
            Multiplication
        </label>
        <label class="radio-option">
            <input name="operation" type="radio" value="div"/>
            Division
        </label>
    </div>
    <input type="submit" value="Calculate" class="btn"/>
    <input type="reset" value="Reset" class="btn"/>
</form>
<form action="DBOps.jsp" method="post">
    <label for="userId">Enter your ID:</label>
    <input type="text" id="userId" name="userId" placeholder="e.g. 101">
    <input type="submit" value="Search" class="btn">
</form>
<form action="StudentList.jsp" method="get">
    <label for="userId">Get Full List</label>
    <input type="submit" value="Get" class="btn">
</form>
</body>
</html>


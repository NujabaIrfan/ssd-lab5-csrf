<html>
<body>
<h2>Hello World!</h2>
<input type="hidden"
       name="<csrf:token-name/>"
       value="<csrf:token-value uri='welcome.jsp'/>"/>


<form method="post" action="/welcome.jsp">

    Enter Name: <input type="text" name="name" id="name"/>
    <br>
    <input type="submit" value="Go"/>



</form>
</body>
</html>

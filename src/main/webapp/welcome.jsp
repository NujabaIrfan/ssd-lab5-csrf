<%--
  Created by IntelliJ IDEA.
  User: dharshana
  Date: 2/20/19
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page  import="org.owasp.encoder.Encode" %>


<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    Cookie cookie = null;
    Cookie[] cookies = null;
    String name = null;

    // Get an array of Cookies associated with the this domain
    cookies = request.getCookies();

    if( cookies != null ) {

        for (int i = 0; i < cookies.length; i++) {
            cookie = cookies[i];

            // check the name cookie is there
            if(cookie.getName().equals("name")){
                name = cookie.getValue();
            }

        }
    }

    // if the name cookie is not there, get it from the request parameters and set it.
    if(name == null) {
        name = request.getParameter("name");

        Cookie nameCookie = new Cookie("name", request.getParameter("name"));

        // Set expiry date after 5 mins for the cookie
        nameCookie.setMaxAge(5 * 60);

        // Add the cookie in the response header.
        response.addCookie(nameCookie);

    }










%>

Welcome!!   <%=name%>


</body>
</html>

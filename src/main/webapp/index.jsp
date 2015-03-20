<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="header_text">Hello World!</h1>

        <script>
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4) {
                    var response = JSON.parse(xhr.responseText);
                    var name = 'The User is: ' + response.name + '<br/>';
                    var address = 'From: ' + response.address + '<br/>';
                    var contactNo = 'Phone: ' + response.contactNo + '<br/>';
                    document.getElementById("header_text").innerHTML = name + address + contactNo;
                }
            };
            xhr.open('GET', '/TestServlet', true);
            xhr.send(null);
        </script>
    </body>
</html>

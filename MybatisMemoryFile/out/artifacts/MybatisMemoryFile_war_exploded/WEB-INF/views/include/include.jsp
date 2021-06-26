<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-27
  Time: 오전 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .container {
        width: 500px;
        margin: 0 auto;
    }
    #pageName {
        color: palevioletred;
        font-weight: bold;
        font-size: 1.5em;
    }
    .includeContainer {
        margin-top: 90px;
        margin-left: 50px;
    }

</style>
<body>
    <div class="container">
        <h2>Test File  -  (include)</h2>
        <span id="pageName">${pageName}</span>


        <%-- include 참조할 jsp view 값 --%>
        <div class="includeContainer">
            <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
        </div>
    </div>



<script>

</script>
</body>
</html>

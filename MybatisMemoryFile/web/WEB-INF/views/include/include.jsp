<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-27
  Time: 오전 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
</head>
<!-- 여기에 jsp - cdn 관련된 링크들 include 하기 -->
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

        <!-- css 파일 참조 테스트 -->
        <h1 id="testH">아라라</h1>
        <!-- css 파일 참조 테스트 -->


        <h2>Test File  -  (include)</h2>
        <span id="pageName">${pageName}</span>

        <%-- include 참조할 jsp view 값 --%>
        <div class="includeContainer">
            <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
        </div>
    </div>

<script>

    $(document).ready(function() {
    })


</script>
</body>
</html>

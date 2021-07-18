<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-27
  Time: 오전 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/res/css/testCss.css">
</head>

<style>


</style>
<body>
    <!-- 비쥬얼 스튜디오에서 작업해서 헤드 깔끔하게 만들기 -->
    <div class="container">

        <h1 id="testH">아라라</h1>

        <h2>Test File  -  (include)</h2>
        <span id="pageName">${pageName}</span>

        <%-- include 참조할 jsp view 값 --%>
        <div class="includeContainer">
            <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
        </div>
    </div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript" src="/res/js/testJs.js"></script>
<script>

    $(document).ready(function() {
        test(); // js파일 안에 있는 test() 함수
    })


</script>
</body>
</html>

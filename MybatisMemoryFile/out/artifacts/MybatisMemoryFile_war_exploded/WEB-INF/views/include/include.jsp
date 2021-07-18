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
    <link rel="stylesheet" href="/res/css/include.css">
</head>

<body>
<div class="container">
    <div class="headerBox">
        <span id="includeHeader">Include Header</span>
        <div class="headerClick">
            <span class="headerEle" id="headerEle1" onclick="moveToStart()">Start</span>
            <span class="headerEle" id="headerEle2" onclick="moveToAjax()">Ajax</span>
        </div>
    </div>

    <div class="mainContainer">
        <span id="controlTitle">= ${pageName} =</span>
    </div>
    <div class="includeContainer">
        <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript" src="/res/js/testJs.js"></script>
<script>

    function moveToStart() {
        location.href = "/start/startTest";
    }

    function moveToAjax() {
        location.href = "/ajax/ajaxTest";
    }

    $(document).ready(function() {
        // ...
    })


</script>
</body>
</html>

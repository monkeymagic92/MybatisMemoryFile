<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-27
  Time: 오전 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>

<br><br>
<form id="testForm" name="testForm" method="post">
    <input type="text" id="name" name="name">
    <input type="submit" id="submitBtn" name="submitBtn" value="전송">
</form>
<button type="button" id="testBtn" onclick="testBtnClick()">Ajax Btn</button>

<!--
    CDN 링크는 정상작동

    ＃ 문제점 : jsp에서 인식되는 함수들이 계속 노란밑줄 끄임
    ＃ 해결법 : .......???? (알아내기)

-->
<jsp:directive.include file="/jsp/includeJsp.jsp"/>

<script type="text/javascript">

    let name = $("#name").val();

    function testBtnClick() {
        $("#testForm").ajaxSubmit({
            url: '/ajax/ajaxTestPost'
            ,type: 'post'
        })
    }

</script>
</body>
</html>

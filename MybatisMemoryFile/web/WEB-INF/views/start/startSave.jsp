<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-08-01
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>startSave 글등록</title>
</head>
<body>
    <form id="startFrm" name="startFrm" action="/start/startSave" method="post">
        <input type="text" id="START_TITLE" name="START_TITLE" placeholder="글등록" value="${data.START_TITLE}"><br>
        <input type="text" id="START_CNTN" name="START_CNTN" placeholder="글내용" value="${data.START_CNTN}"><br>
        <input type="hidden" name="STATUS" value="">
        <input type="submit" value="${data.START_SEQ == null ? '등록' : '수정'}">
    </form>

    <div>
        ${data.START_SEQ}
    </div>
    <div>
        ${data.START_TITLE}
    </div>
    <div>
        ${data.START_CNTN}
    </div>

<script>

</script>
</body>
</html>

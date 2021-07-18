<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-27
  Time: 오전 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
<%--    <jsp:directive.include file="/include/include.jsp"/>--%>
</head>
<body>
<br><br>
<h2>리스트</h2>
    <c:forEach items="${list}" var="item">
        <div>${item.START_SEQ}</div>
        <div>${item.START_TITLE}</div>
        <div>${item.START_CNTN}</div>
        <br>
    </c:forEach>
</div>
<div>
    <button type="button" onclick="moveToAjax()">ajaxControl 이동</button>
</div>



<script type="text/javascript">
    function moveToAjax() {
        location.href="/ajax/ajaxTest";
    }
</script>
</body>
</html>

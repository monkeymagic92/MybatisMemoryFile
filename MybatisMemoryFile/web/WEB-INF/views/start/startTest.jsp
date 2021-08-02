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
        <div style="cursor: pointer;" onclick="moveToUpdate(${item.START_SEQ});">
            <div>${item.START_SEQ}</div>
            <div>${item.START_TITLE}</div>
            <div>${item.START_CNTN}</div>
        </div>
        <br>
    </c:forEach>
</div>
<br>
<button type="button" id="btnSave" name="btnSave" onclick="btnSaveCli();">글쓰기</button>
<script type="text/javascript">

    function moveToUpdate(seq) {
        location.href="/start/startSave?START_SEQ="+seq+"&STATUS=update";
    }

    function btnSaveCli() {
        location.href="/start/startSave";
    }

</script>
</body>
</html>

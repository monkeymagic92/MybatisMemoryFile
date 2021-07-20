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
    <title>Title</title>
</head>
<body>

<br><br>
<div id="val" style="display: none;"></div>
<br><br>
<form id="testForm" name="testForm" method="post">
    <span>이름&nbsp;&nbsp;</span><input type="text" id="name" name="name">
    <br>
    <span>나이&nbsp;&nbsp;</span><input type="text" id="age" name="age">
    <br>
    <span>취미&nbsp;&nbsp;</span><input type="text" id="hobby" name="hobby">
    <br>
</form>
<br>
<button type="button" id="testBtn" onclick="testBtnClick()">AjaxSubmit Btn</button>
<br><br>
<button type="button" id="testBtn2" onclick="testBtnClick2()">Ajax Btn</button>

<script type="text/javascript">

    // == ajaxSubmit 사용 ==
    function testBtnClick() {

        $("#testForm").ajaxSubmit({
            url: '/ajax/ajaxTestPost'
            ,type: 'post'
            ,success: function(data) {
                alert('이름 : ' + data.name + '\n'
                    + '나이 : ' + data.age + '\n'
                    + '취미 : ' + data.hobby);
            }
        })
    }

    // == 기본 ajax 사용 ==
    function testBtnClick2() {
        let name = $("#name").val();

        $.ajax({
            url: '/ajax/ajaxTestPost'
            , type: 'post'
            , data: {name: name}
            ,success: function(data) {
                alert('이름 : ' + data.name + '\n'
                    + '나이 : ' + data.age + '\n'
                    + '취미 : ' + data.hobby + '\n'
                    + ' - name값만 data 넘겨줬음 -');
            }
        })
    }

</script>
</body>
</html>

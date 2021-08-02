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
        <span id="controlTitle">${pageName}</span>
    </div>

    <div class="includeContainer">
        <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
    </div>

    <div class="kakaoContainer">
        <a id="kakaoATag" href="javascript:sendLink()">
            <img id="kakaoImg1" src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
            <span>카카오공유</span>
        </a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js" integrity="sha384-qlmct0AOBiA2VPZkMY3+2WqkHtIQ9lSdAsAn5RUJD/3vA5MKDgSGcdmIv4ycVxyn" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/testJs.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

    $(document).ready(function() {
        // ...
    })

    function moveToStart() {
        location.href = "/start/startTest";
    }

    function moveToAjax() {
        location.href = "/ajax/ajaxTest";
    }

    /*
  		카카오 로그인이 안되어 있을경우
 		따로 카카오 로그인 api 필요없이 카카오측에서 자동으로 로그인창 띄워줌
 		- 모바일은 항상 로그인 되어있으니까 바로 공유되고
 		- 웹은 로그인창이 뜸 (로그인 되어있을경우는 안뜸)
    */

    Kakao.init('9652d1ee33b30a7b1cad7e3f918b6486'); // 나의 자바스크립트 key  (이그노어 암호화 해야됨 노출 X)
    function sendLink() {
        Kakao.Link.sendDefault({
            objectType: 'feed',
            content: {
                title: '${kakaoName} 친구 취향 맞추기',
                description: '${kakaoName} 님의 취향을 맞춰보세요 !',
                imageUrl: 'https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg',	// 사용하고자 하는 이미지
                link: {
                    mobileWebUrl: 'http://localhost:8080/start/startTest',	// 모바일에서 접속할 URL
                    webUrl: 'http://localhost:8080/start/startTest'		    // 웹에서 접속할 URL
                },
            },
            buttons: [
                {
                    title: '공유 하기',
                    link: {
                        mobileWebUrl: 'http://localhost:8080',		// 모바일에서 접속할 url
                        webUrl: 'http://localhost:8080'			    // 웹에서 접속할 url
                    },
                }
            ],
        })
    }

</script>
</body>
</html>

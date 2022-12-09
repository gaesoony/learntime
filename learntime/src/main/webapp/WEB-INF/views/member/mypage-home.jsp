<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>

<style>
    #mypage-box{
        width: 1200px;
        height: 100vh;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        margin-top: 20px;
    }

    #home-area{
        padding: 40px;
    }
    
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

<%@include file="/WEB-INF/views/common/mypage-side.jsp" %>

<div id="mypage-box">
    <div id="mypage">
        <div id="bin"></div>
        <div id="home-area">
            해당파일을 복사해서 이름을 mypage-**.jsp로 해주세요!
            여기서부터 작업해주세요~

            사이드바는 제가 고쳐보겟습니다..ㅠ
        </div>
    </div>
    
</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>


</body>
</html>
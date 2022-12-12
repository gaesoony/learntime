<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #mypage-box{
        background-color: white;
        width: 1000px;
        height: 1876px;
        margin-top: 30px;
        margin-left: 650px;
    }
    .qna-list{
        border: 1px solid #D9D9D9;
        width: 1000px;
        height: 683px;
    }
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>

<div id="mypage-box">
    <div class="qna-list">

    </div>
</div>

<%@include file="/WEB-INF/views/common/mypage-side.jsp" %>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>

<script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>
    
</script>
</body>
</html>
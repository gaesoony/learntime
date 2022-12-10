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
        width: 1200px;
        height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

    


    
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin"></div>
        <div id="home-area">
           뱃지 리스트 보여질곳~
        </div>
    </div>
    
</div>

<%@include file="/WEB-INF/views/common/mypage-side.jsp" %>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>


</body>
</html>
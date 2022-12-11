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
        height: 100vh;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
       
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

   #home-area{
        padding: 40px;
        
   }

    #have-badge{
        display: flex;
        justify-content: space-between;
        width: 100%;
        margin-top: 10px;
    }

    #badge{
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
        height: 45px;
    }

    #badge,#grass{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

   

    .badge{
        width: 130px;
        height: 130px;
        background-color: #D9D9D9;
        margin-top: 10px;
        
    }


    
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>
<%@include file="/WEB-INF/views/common/mypage-side.jsp"%>


<div id="mypage-box">
    <div id="mypage">
        <div id="bin"></div>
        <div id="home-area">
            <div id="badge">보유한 뱃지</div>
        
            <div id="have-badge">
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
            </div>

           
        </div>
    </div>
    
</div>


<%@include file="/WEB-INF/views/common/footer2.jsp" %>


</body>
</html>
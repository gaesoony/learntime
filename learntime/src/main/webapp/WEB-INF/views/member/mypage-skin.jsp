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
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

   #home-area{
        padding: 40px;  
        height: auto;
   }

   #have-skin{
        height: 45px;
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }


    .skin{
    width: 180px;
    --height: 300px;
    margin: 10px 0;
    margin-top: 20px;
    text-align: left;
    
    }

    .skin-img{
        width: 180px;
        height: 180px;
        border-radius:4px;
        border:1px solid #D9D9D9;
    }

    .skin-img img{
        width: 100%;
    }

    .skin-title{
        margin: 10px 0;
        font-weight: 600;
        font-size: 16px;
    }

    .skin-content{
        margin: 10px 0;
        font-size: 12px;
    }

    .main-color {
        color: #5ecc80;
    }
    .skin-notice{
        text-align: center;
        margin-top: 50px;
    }
 
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
        </div>
        <div id="home-area">
            <div id="have-skin">보유한 스킨</div>
            <c:if test="${mySkinList.size() eq 0}">
                <div class="skin-notice">보유한 스킨이 없습니다</div>

            </c:if>

            <c:if test="${mySkinList.size() ne 0}">
                <c:forEach items="${mySkinList}" var="mySkinList">
                    <div class="skin">
                        <div class="skin-img"><img src="${pageContext.request.contextPath}/${mySkinList.imgName}"/></div>
                        <div class="skin-title">${mySkinList.name}</div>
                        <div class="skin-content">${mySkinList.info}</div>
                    </div>
                </c:forEach>

            </c:if>

          


           
        </div>
    </div>
    
  
</div>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>
<script>
    const category = document.querySelector("#my-cate div:nth-child(7) a");
    category.classList.add("main-color");
</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 회원 등급 관리</title>

    <!-- 구글아이콘 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


  </head>
  <style>
    #content-wrap {
      background-color: #efefef;
    }

    #admin-category-title {
      padding: 0 20px;
      color: black;
      background-color: white;
      box-shadow: 0px 2px 2px #c5c5c5;

      height: 55px;
      line-height: 55px;
      font-size: 18px;
    }

    .wrapper {
      padding: 10px 50px;
    }

    .content-section{
        width: 1265px;
        height: 500px;
        background-color: white;
        border: 1px solid rgb(221, 221, 221);
        margin: 30px auto ;
        display: grid;
        grid-template-columns: 250px 1015px;
        
    }

    .grade-title{
        padding: 40px;
        color: #5ECC80;
        font-size: 16px;
        font-weight: 600;
    }

    form .grade-list{
        display: grid;
        grid-template-columns: 1fr 1fr 3fr 1fr;
        grid-auto-rows: 40px;
        margin: 40px;
        border-bottom: 1px solid #000000; 
        
    }

    
    .list-title{
        font-size: 16px;
        font-weight: 600;
        display: flex;
        align-items: center;
        justify-content: center;
       
        
    }
    .list-info{
        grid-column: span 4;
        border-bottom: 1px solid #000000;
        color: #535353;
        padding-bottom:10px;
    }

    .list-content{
        display: flex;
        align-items: center;
        justify-content: center;
       
    }

    .list-btn{
       display: flex;
       align-items: center;
       justify-content: space-around;
    }

    .list-btn button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 60px;
        height: 30px;
        border-radius: 30px;
    }

    .list-btn .plus{
        color: #FFFFFF;
        background-color: #5ECC80;
    }

    .list-btn .delete{
        color: #D60000;
        border: 1px solid #D60000;
    }

    .grade-btn{
        grid-column: span 2;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .grade-btn button{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 160px;
        height: 44px;
        border-radius: 4px;

        color:#FFFFFF;
        margin: 10px;
        
    
    }
    .grade-img{
        width: 30px;
        height: 30px;
        border-radius: 30px;
       	border:1px solid #efefef;
        
        margin: auto;
    }
    .grade-btn .save{
        background-color:#5ECC80
    }

    .grade-btn .cancel{
        background-color:#535353;
    }
    
    .list-content span{
    margin:0 10px;
    }
 
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">회원 등급 관리</div>
      <div class="wrapper">
          
        <section class="content-section">
          <div class="grade-title">
                등급 조건 관리
          </div>
		<form action="" method="post">
	          <div class="grade-list">
	            <div class="list-info">각 등급별 아이콘 이미지와 조건을 수정 및 추가 삭제가 가능합니다</div>
	            <div class="list-title ">아이콘</div>
	            <div class="list-title">등급 이름</div>
	            <div class="list-title">등급 조건</div>
	            <div class="list-title"></div>
			
		 		<c:forEach items="${map}" var="map">		
	            	 <div class="list-content grade-img"><img src="${pageContext.request.contextPath}${map.IMG_PATH}"></div>
	                <div class="list-content">${map.NAME}</div>
	                <div class="list-content">
	                   <span>토큰 </span><input type="text" name="accumToken" value="${map.ACCUM_TOKEN}"><span>개</span>
	                </div>
	                <div class="list-btn">
	                   <button class="plus">추가</button>
	                   <button class="delete">삭제</button>
	                </div>
	            </c:forEach>
	          
	          </div>
	
	          <div class="grade-btn">
	            <button class="cancel" type="reset">취소하기</button>
	            <button class="save">저장하기</button>
	          </div>
          </form> 
        </section>

        <section class="content-section">
        
            <div class="grade-title">
                토큰 조건 관리
          </div>
		<form action="" method="post">
          <div class="grade-list">
            <div class="list-info">토큰 부여 조건을 변경 가능합니다</div>
            <div class="list-title">토큰</div>
            <div class="list-title">토큰 발급 게시판</div>
            <div class="list-title">토큰 부여 조건</div>
            <div class="list-title"></div>

            <% for(int i=1; i<=5; i++) {%>
                <div class="list-content">1개</div>
                <div class="list-content">게시판이름</div>
                <div class="list-content">
                    조건 내용
                </div>
                <div class="list-btn">
                   <button class="plus">추가</button>
                   <button class="delete">삭제</button>
                </div>
            <%}%>
          </div>

          <div class="grade-btn">
            <button class="cancel">취소하기</button>
            <button class="save">저장하기</button>
          </div>

          
        </form>  
        </section>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>


   
  </body>
</html>

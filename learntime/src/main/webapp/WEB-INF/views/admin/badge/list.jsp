<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 뱃지 관리</title>

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

    /* 검색부분 */

    .wrapper {
      padding: 40px 50px;
      width: 1125px;
      margin: auto;
    }

    .search-section {
      margin-bottom: 10px;
    }

    #search{
        display: grid;
        grid-template-columns: 6fr 1fr 1fr;
    }

    .search-box {
      outline: none;
      background-color: rgb(255, 255, 255);
      color: rgb(42, 42, 42);
      width: 95%;
      padding-left:5%;

      border: 1px solid rgb(207, 207, 207);
    }

    .fa-magnifying-glass {
      position: absolute;
      top: 16px;
      left: 16px;
      color: gray;
    }

    .select-box {
      width: 90%;
      height: 45px;
      border: 1px solid #5ecc80;
      
      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;

      margin: 0 10px;
    }

    .write-btn {
      width: 100px;
      height: 40px;
      border: none;
      outline: none;
      background-color: #5ecc80;
      color: white;
      cursor: pointer;
    }

    /* 게시판 목록 부분 */

    .content-section {
      background-color: white;
      border: 1px solid rgb(221, 221, 221);
    }

    .content-section-top {
        display: grid;
        align-items: center;
        grid-template-columns: 1fr 1fr;
        padding: 20px 30px;
        font-weight: 700;
        font-size: 15px;
    }

    .content-section-top div:nth-child(2){
        display: flex;
        justify-content: flex-end;
        align-items: center;
        
    }

    .content-section-top div:nth-child(2) *{
        margin: 0 5px;
    }

    #delete-btn,#grade-btn{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 65px;
        height: 24px;
        color: #FFFFFF;
    }

    #delete-btn{
        background-color: #D60000;
    }

    #grade-btn{
        background-color: #5ecc80;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(4, 280px);
      justify-items: center;
      align-items: center;
      
    }

    

    .grid-title {
      font-weight: 600;
    }

    .main-color {
      color: #5ecc80;
    }

    .btn-area {
      padding: 10px;
    }

    .btn-area input {
      background-color: white;
      border: 1px solid #5ecc80;
      width: 90px;
      height: 35px;
      color: #5ecc80;
      cursor: pointer;
    }

    
    .relative {
      position: relative;
    }

    .main1 i,
    .main2 i {
      position: absolute;
      top: 22px;
      right: 11px;
      font-size: 16px;
      color: gray;
    }

    /* 스킨 */

    .badge{
        width: 200px;
        --height: 300px;
        margin: 10px 0;
        text-align: left;
        
    }

    .badge-img{
        width: 200px;
        height: 200px;
        border-radius:4px;
        border:1px solid #D9D9D9;
        
    }
    
    .badge-img img{
    width:100%;
    }

    .badge-title{
        margin: 10px 0;
        font-weight: 600;
        font-size: 18px;
    }
    .badge-btn{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 200px;
        height: 32px;
        border-radius:4px;
        border: 1px solid #5ECC80;
        color:#5ECC80;
        margin-bottom: 10px;
    }
    .badge-content{
        margin-bottom: 20px;
        color:#535353;
        font-size: 14px;
    }

    .badge-btn:hover{
        background-color: #5ECC80;
        color: #FFFFFF;
    }

    .delete{
      border: 1px solid #D60000;
        color:#D60000;
    }

    .delete:hover{
      background-color: #D60000;
      color: #FFFFFF;
    }







    /* paging */
    #paging{
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        margin-top: 40px;  
        margin-bottom: 100px;
    }
    
    .paging-btn{
        height: 25px;
        width: 25px;
        border: 1px solid #aeaeae;
        border-radius: 2px;
        text-align: center;
        line-height: 24px;
        color: #535353;
        cursor: pointer;
        margin-right: 3px;
    }
    .paging-btn:hover{
        background-color: #454545;
        color: white;
    }
    
    #next-btn{
        width: 40px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">뱃지 관리</div>
      <div class="wrapper">
            <section class="search-section space-between">
            <form action="" method="get">
            <div class="relative" id="search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" name="keyword" placeholder="내용을 입력해주세요" class="search-box"/>
                    <select name="category" class="select-box">
                      <option value="name">이름</option>
                      <option value="info">설명</option>
                    </select>
                    <select name="" id="" class="select-box">
                      <option value="">뱃지 상태</option>
                      <option value="">활성화</option>
                      <option value="">비활성화</option>
                    </select>
              </div>
            </form>
              
            </section>
            <section class="content-section">
              <div class="content-section-top">
                <div id="skin All">
                      <span>전체 뱃지 수</span>
                      <span class="main-color">${badgeCnt}</span>
                      <span>개</span>
                </div>

                <div class="btn-area">
                  <input type="button" value="뱃지 추가" onclick="location.href='${pageContext.request.contextPath}/admin/badge/write'"/>
                </div>
                
              </div>
              <div class="grid">
               
                 <c:forEach items="${list}" var="list">
                  <div class="badge">
                    <div class="badge-img"><img src="${pageContext.request.contextPath}/${list.imgName}"/></div>
                    <div class="badge-title">${list.name}</div>
                    <div class="badge-content">${list.info}</div>
                    <button class="badge-btn" onclick="location.href='${pageContext.request.contextPath}/admin/badge/edit?no=${list.no}'"> 수정하기</button>
                    <button class="badge-btn delete"> 비활성화</button>
                 </div>
                </c:forEach>
              </div>

              

              <div id="paging">
                <div class="paging-btn">1</div>
                <div class="paging-btn">2</div>
                <div class="paging-btn">3</div>
                <div class="paging-btn">4</div>
                <div class="paging-btn">5</div>
                <div class="paging-btn">6</div>
                <div class="paging-btn">7</div>
                <div class="paging-btn">8</div>
                <div class="paging-btn">9</div>
                <div class="paging-btn">10</div>
                <div class="paging-btn" id="next-btn">다음</div>
              </div>
            
            </section>
      
      </div>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

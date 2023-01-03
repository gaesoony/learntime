<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 페이지 - 회원 관리</title>

    <!-- 구글아이콘 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

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
      width: 1200px;
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
      grid-template-columns: repeat(2,0.5fr)2fr 3fr 1fr  0.5fr 2fr 2fr repeat(6,1fr);
    }

    .grid div {
      height: 45px;
      border-bottom: 1px solid rgb(219, 219, 219);
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 14px;
    }

    .grid-title {
      font-weight: 600;
    }

    .main-color {
      color: #5ecc80;
    }

    .btn-area {
      padding: 10px;
      margin-bottom: 30px;
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
      <div id="admin-category-title" class="shadow-light">회원 관리</div>
      <div class="wrapper">
            <section class="search-section space-between">
           <form action="" method="get">
				<div class="relative" id="search">
				     <i class="fa-solid fa-magnifying-glass"></i>
				     <input type="text" placeholder="내용을 입력해주세요" class="search-box" name="keyword"/>
				         <select name="category" id="" class="select-box">
				           <option value="nick">닉네임</option>
				           <option value="id">아이디</option>
				         </select>
				         <select name="quitYn" class="select-box">
				           <option value="" selected>계정상태</option>
				           <option value="N">활동</option>
				           <option value="Y">삭제</option>
				         </select>
				</div>
           </form>
              
            </section>
            <section class="content-section">
             <form id="editDelete" action="${pageContext.request.contextPath}/admin/member/gradeEdit" method="post">
              <div class="content-section-top">
                <div id="memberAll">
                      <span>전체 관리자 수</span>
                      <span class="main-color">${list.size()}</span>
                      <span>명</span>
                </div>
                 
                <div id="manage">
                      <span>선택한 회원을</span>
                      <select name="accumToken" id="grade">
                      	  <c:forEach items="${map}" var="map">
                          	<option value="${map.ACCUM_TOKEN}">${map.NAME}</option>
                          </c:forEach>
                      </select>
                      <button id="grade-btn">변경하기</button>             
                      <button id="delete-btn">탈퇴</button>   
                      
                </div>
              </div>
              <div class="grid">
                <div class="grid-title"><input id="cbx_chkAll"type="checkbox"/></div>
                <div class="grid-title">번호</div>
                <div class="grid-title">닉네임</div>
                <div class="grid-title">계정</div>
                <div class="grid-title">유형</div>
                <div class="grid-title">등급</div>
                <div class="grid-title">전화번호</div>
                <div class="grid-title">가입일</div>
                <div class="grid-title">보유 토큰</div>
                <div class="grid-title">작성한 글</div>
                <div class="grid-title">작성한 댓글</div>
                <div class="grid-title">작성한 문의</div>
                <div class="grid-title">계정상태</div>
                <div class="grid-title"></div>

                  <c:forEach items="${list}" var="list">
                   <div><input name="checkNo" type="checkbox" value="${list.no}"/></div>
                    <div>${list.no}</div>
                    <div>${list.nick}</div>
                    <div>${list.id}</div>
                    <c:if test="${list.adminYn eq 'Y'}">
                    <div>운영자</div>
                    </c:if>
                     <c:if test="${list.adminYn eq 'N'}">
                    <div>회원</div>
                    </c:if>
                    <div><img src="${pageContext.request.contextPath}${list.gradeImgPath}"></div>
                    <div>${list.phone}</div>
                    <div>${list.enrollDate}</div>
                    <div>${list.holdToken}</div>
                    <div>${list.board}</div>
                    <div>${list.cmt}</div>
                    <div>${list.qna}</div>
                    <c:if test="${list.quitYn eq 'Y'}">
                    <div>삭제</div>
                    </c:if>
                    <c:if test="${list.quitYn eq 'N'}">
                    <div>활동</div>
                    </c:if>
                    <div>
                        <a href="${pageContext.request.contextPath}/admin/member/manage/detail?no=${list.no}"> <span class="material-symbols-outlined">more_horiz</span></a>
                    </div>
                  </c:forEach>
                  
              </div>
			
              <div class="btn-area">
                <input type="button" value="운영자 생성" onclick="location.href='${pageContext.request.contextPath}/admin/member/createOperator'"/>
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
            </form>   
            </section>
      
      </div>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
    
    <script>
    $(document).ready(function() {
    	$('#delete-btn').click(function(){
    		$('#editDelete').attr("action",'${pageContext.request.contextPath}/admin/member/listDelete');
    	});
    	
	    $("#cbx_chkAll").click(function() {
			if($("#cbx_chkAll").is(":checked")) $("input[name=checkNo]").prop("checked", true);
			else $("input[name=checkNo]").prop("checked", false);
		});
	
		$("input[name=checkNo]").click(function() {
			var total = $("input[name=checkNo]").length;
			var checked = $("input[name=checkNo]:checked").length;
	
			if(total != checked) $("#cbx_chkAll").prop("checked", false);
			else $("#cbx_chkAll").prop("checked", true); 
		});
	});
    
    </script>
  </body>
</html>

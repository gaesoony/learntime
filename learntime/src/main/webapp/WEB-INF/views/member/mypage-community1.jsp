<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"/>
    <link rel="stylesheet" href="/app/resources/css/community/myCommunity.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

    <style>
      #mypage-box {
        width: 1200px;
        height: 100%;
        margin: auto;
      }

      #mypage {
        width: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
      }

      #home-area {
        padding: 40px;
        height: auto;
      }

      /* 공통css */
      .soft-gray {
        color: rgb(164, 164, 164);
      }

      .gray1 {
        color: #535353;
      }

      .gray2 {
        color: #848484;
      }

      .relative {
        position: relative;
      }

      .middle {
        display: flex;
        justify-content: center;
      }

      .bold700 {
        font-weight: 700;
      }

      .main-color {
        color: #5ecc80;
      }

      .space-between {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .flex {
        display: flex;
        align-items: center;
      }

      .center {
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .black {
        color: rgba(0, 0, 0, 0.9);
      }

      .blue {
        color: rgb(49, 137, 252);
      }

      * {
        font-family: "Noto Sans KR", sans-serif;
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
          <div id="main-wrap">
            <!-- 마이페이지 - 커뮤 카테고리 -->
            <div id="category-wrap">
                <div id="community-category-box">
                    <input type="radio" name="community-category" id="community-category1" checked>
                    <label for="community-category1">나의 글</label>
                    <input type="radio" name="community-category" id="community-category2">
                    <label for="community-category2">나의 스크랩</label>
                </div>
            </div>

            <!-- 나의 글 카테고리 -->
            <div id="my-writing-box">
                <!-- 나의 글 헤드 -->
                <div class="community-content-head">
                    <select name="searchType" id="">
                      <option value="title">글제목</option>
                    </select>
                    <div class="search-box">
                      <span class="material-symbols-rounded search-icon">search</span>
                      <form action="" method="get">
                         <input type="search" name="search" id="">
                         <input type="submit" hidden>
                      </form>
                    </div>
                </div>
                <!-- 나의 글 컨텐츠 -->
                <div class="community-content community-content-title" id="content-title">
                    <div class="text-number">글번호</div>
                    <div class="text-title">제목</div>
                    <div class="text-enroll">작성일</div>
                    <div class="text-like">추천수</div>
                </div>

                <!-- 컨텐츠 반복 -->

                <!-- myList 비어있으면 -->
                <c:if test="${myList.size() == 0}">
                  <div id="no-application" class="m-notice">내가 작성한 글이 없어요 :(</div>
                </c:if>

                <!-- 있으면 반복-->
                <c:forEach var="myList" items="${myList}">
                  <a href="/app/community/board/detail?bno=${myList.no}" class="community-content content">
                    <div class="text-number">${myList.no}</div>
                    <div class="text-title">${myList.title}</div>
                    <div class="text-enroll">
                      <c:out value="${myList.enrollDate.substring(0, myList.enrollDate.length()-3)}"/>
                    </div>
                    <div class="text-like">
                      <c:if test="${myList.likes == null}">0</c:if>
                      ${myList.likes}</div>
                  </a>
                </c:forEach>

                <!-- 페이징 -->
                <c:if test="${myList.size() != 0}">
                  <div id="paging">
                      <div class="paging-btn">1</div>
                  </div>
                </c:if>

            </div>

            <!-- 카테고리 선택 -->
            <script>
              $(document).ready(function(){
                  $("#community-category2").click(function(){
                      location.href = "/app/member/mypage/community2";
                  });
                  $("#community-category1").click(function(){
                      location.href = "/app/member/mypage/community";
                  });
              });
          </script>

          </div>
        </div>
      </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    
   
    <script>
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    </script>
  </body>
</html>

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
                    <input type="radio" name="community-category" id="community-category1">
                    <label for="community-category1">나의 글</label>
                    <input type="radio" name="community-category" id="community-category2" checked>
                    <label for="community-category2">나의 스크랩</label>
                </div>
            </div>

            <!-- 나의 스크랩 카테고리 -->
            <div id="my-scrap-box">
                <!-- 나의 스크랩 헤드 -->
                <form action="" method="get">
                  <div class="community-content-head">
                    <select name="searchType" id="">
                        <option value="title">글제목</option>
                        <option value="writerNick">작성자</option>
                    </select>
                    <div class="search-box">
                        <span class="material-symbols-rounded search-icon">search</span>
                        <div>
                          <input type="search" name="search" id="">
                          <input type="submit" hidden>
                        </div>
                    </div>
                  </div>
                </form>

                <!-- 나의 스크랩 컨텐츠 -->
                <div class="scrap-content scrap-content-title">
                    <div class="text-number">글번호</div>
                    <div class="text-title">제목</div>
                    <div class="text-writer">작성자</div>
                    <div class="text-enroll">작성일</div>
                    <div class="text-like">추천수</div>
                </div>

                <!-- 컨텐츠 반복 -->
                <!-- scrapList 에서 글 나열하기 -->
                <c:if test="${scrapList.size() == 0}">
                  <div id="no-application" class="m-notice">스크랩한 글이 없어요 :(</div>
                </c:if>

                <c:forEach var="scrapList" items="${scrapList}">
                  <a href="/app/community/board/detail?bno=${scrapList.no}" class="scrap-content content">
                    <div class="text-number">${scrapList.no}</div>
                    <div class="text-title">${scrapList.title}</div>
                    <div class="text-writer">${scrapList.writerNick}</div>
                    <div class="text-enroll">
                      <c:out value="${scrapList.enrollDate.substring(0, scrapList.enrollDate.length()-3)}"/>
                    </div>
                    <div class="text-like">
                      <c:if test="${scrapList.likes == null}">0</c:if>
                      ${scrapList.likes}</div>
                  </a>
                </c:forEach>

                <!-- 페이징 -->
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

            </div>

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

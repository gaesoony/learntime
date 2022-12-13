<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
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
      padding: 20px 20px;
    }

    .search-section {
      margin-bottom: 10px;
    }

    .search-box {
      outline: none;
      background-color: rgb(255, 255, 255);
      color: rgb(42, 42, 42);
      width: 600px;
      height: 45px;
      padding: 0px 10px 0px 34px;
      margin-right: 6px;
      border: 1px solid rgb(207, 207, 207);
    }

    .fa-magnifying-glass {
      position: absolute;
      top: 16px;
      left: 13px;
      color: gray;
    }

    .select-box {
      width: 100px;
      height: 45px;
      border: 1px solid #5ecc80;

      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;
    }

    .delete-btn {
      width: 90px;
      height: 35px;
      border: 1px solid red;
      outline: none;
      background-color: #ffffff;
      color: rgb(235, 19, 19);
      cursor: pointer;
      margin-left: 5px;
      margin-bottom: 100px;
    }

    /* 게시판 목록 부분 */

    .content-section {
      background-color: white;
      border: 1px solid rgb(221, 221, 221);
    }

    .content-section-top {
      padding: 20px 30px;
      font-weight: 700;
      font-size: 15px;
    }

    .grid {
      display: grid;
      grid-template-columns: 0.6fr 0.8fr 5fr 2fr 2fr 1fr 1fr 1fr 2fr 1fr 1fr;
      margin-bottom: 5px;
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
      margin-bottom: 200px;
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
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">스터디/프로젝트</div>
      <div class="wrapper">
        <section class="search-section space-between">
          <div class="relative">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
              type="text"
              placeholder="내용을 입력해주세요"
              class="search-box"
            /><select name="" id="" class="select-box">
              <option value="">제목</option>
              <option value="">내용</option>
              <option value="">작성자</option>
            </select>
            <select name="" id="" class="select-box">
              <option value="">전체</option>
              <option value="">공개</option>
              <option value="">삭제</option>
              <option value="">비활성화</option>
            </select>
          </div>
        </section>
        <section class="content-section">
          <div class="content-section-top">
            <span>전체 게시글</span>
            <span class="main-color">100</span>
            <span>개</span>
          </div>
          <div class="grid">
            <div class="grid-title"><input type="checkbox" /></div>
            <div class="grid-title">번호</div>
            <div class="grid-title">제목</div>
            <div class="grid-title">작성자</div>
            <div class="grid-title">작성일시</div>
            <div class="grid-title">조회수</div>
            <div class="grid-title">댓글수</div>
            <div class="grid-title">스크랩수</div>
            <div class="grid-title">최종수정일자</div>
            <div class="grid-title">마감여부</div>
            <div class="grid-title">상태</div>

            <% for(int i=1; i<=10; i++) {%>
            <div><input type="checkbox" /></div>
            <div>1</div>
            <div>
              <a href="${pageContext.request.contextPath}/admin/study/detail"
                >토이프로젝트 앱 개발자 구합니다!</a
              >
            </div>
            <div>
              <a href="/app/mystudy/board/detail">한혜원</a>
            </div>
            <div>2022-10-10 12:12:12</div>
            <div>100</div>
            <div>100</div>
            <div>100</div>
            <div>2022-12-11 12:12:12</div>
            <div>모집중</div>
            <div>상태</div>

            <%}%>
          </div>
          <section>
            <input type="button" value="선택삭제" class="delete-btn" />
          </section>
        </section>
      </div>
    </div>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

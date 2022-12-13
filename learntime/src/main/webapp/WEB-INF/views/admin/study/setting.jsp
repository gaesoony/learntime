<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="stylesheet" href="/app/.css"> -->
    <title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <style>
    *:not(.side-bar *) {
      font-family: "Noto Sans KR", sans-serif !important;
      box-sizing: border-box;
    }
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
      padding: 40px 100px;
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
      margin-left: 6px;
      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;
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
      display: flex;
      align-items: center;
      font-weight: 500;
      font-size: 16px;
      height: 100px;
      padding-left: 30px;
    }

    .content-section-top span:first-child {
      margin-right: 50px;
    }

    .grid {
      width: 60%;
      display: grid;
      grid-template-columns: 0.6fr 2fr 2fr 2fr;
      margin-bottom: 100px;
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
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">
        스터디/프로젝트 설정
      </div>
      <div class="wrapper">
        <section class="content-section">
          <div class="content-section-top">
            <span class="main-color">기술 스택 관리</span>
            <span
              >각 기술 스택 별 아이콘 이미지와 분야를 수정 및 추가 삭제가
              가능합니다</span
            >
          </div>
          <div class="content-section-middle">
            <div class="grid">
              <div class="grid-title">아이콘</div>
              <div class="grid-title">기술 스택 이름</div>
              <div class="grid-title">분야</div>
              <div class="grid-title"></div>

              <% for(int i=1; i<=10; i++) {%>

              <div>
                <img src="../../../../resources/img/study/java.svg" alt="" />
              </div>
              <div>Java</div>
              <div>
                <select name="" id="">
                  <option value="">프론트엔드</option>
                  <option value="">백엔드</option>
                </select>
              </div>
              <div>
                <div>삭제</div>
              </div>

              <%}%>
            </div>
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

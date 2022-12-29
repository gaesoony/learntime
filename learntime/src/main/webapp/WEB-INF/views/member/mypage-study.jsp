<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"
    />

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

      /* 기술스택 메뉴 리스트 */

      .study-tech-area {
        margin: 40px 0px;
      }

      .category-list {
        font-size: 20px;
        padding-bottom: 9px;
        border-bottom: 3px solid rgb(230, 230, 230);
        margin-bottom: 40px;
      }

      .category-list li {
        margin-right: 15px;
        margin-left: 10px;
        color: rgb(158, 158, 158);
        cursor: pointer;
        font-size: 18px;
      }

      .clicked {
        color: #5ecc80 !important;
      }

      .hidden {
        display: none;
      }

      /* 게시판 */

      .grid {
        display: grid;
        grid-template-columns: 1fr 5fr 1fr 1fr 1fr;
      }

      .grid-div {
        height: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-bottom: 1px solid rgb(228, 228, 228);
        font-size: 14px;
      }

      /* 검색부분 */

      .search-section {
        margin: 20px;
        margin-top: 50px;
      }

      .search-box {
        outline: none;
        background-color: rgba(240, 240, 240, 0.786);
        color: rgb(42, 42, 42);
        width: 400px;
        padding: 10px 10px 10px 30px;

        border: 1px solid rgb(225, 225, 225);
      }

      .fa-magnifying-glass {
        position: absolute;
        top: 13px;
        left: 10px;
        color: gray;
      }

      .select-box {
        width: 90px;
        height: 40px;
        border: 1px solid rgb(206, 206, 206);
        margin-left: 6px;
        outline: none;
        padding: 0px 5px;
        cursor: pointer;
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

      .category input:checked + div {
        color: black;
        font-weight: 500;
      }

      input[name="a"] {
        display: none;
      }

      input[name="a"]:checked + div {
        color: black;
      }

      input[name="a"]:checked ~ .bar {
        display: block;
      }

      .bar {
        display: none;
        width: 30px;
        height: 4px;
        background-color: var(--main-color);
        position: absolute;
        bottom: -10px;
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
          <ul class="category-list flex bold700">
            <li class="category relative">
              <label>
                <input type="radio" name="a" value="가입신청내역" checked />
                <div>가입 신청 내역</div>
                <div class="bar"></div>
              </label>
            </li>
            <li class="category relative">
              <label>
                <input type="radio" name="a" value="참여중인모임" checked />
                <div>참여중인 모임</div>
                <div class="bar"></div>
              </label>
            </li>
            <li class="category relative">
              <label>
                <input type="radio" name="a" value="운영중인모임" checked />
                <div>운영중인 모임</div>
                <div class="bar"></div>
              </label>
            </li>
            <li class="category relative">
              <label>
                <input type="radio" name="a" value="스크랩" checked />
                <div>스크랩</div>
                <div class="bar"></div>
              </label>
            </li>
          </ul>
          <section>
            <div class="grid">
              <div class="grid-div bold700">번호</div>
              <div class="grid-div bold700">제목</div>
              <div class="grid-div bold700">작성자</div>
              <div class="grid-div bold700">신청일시</div>
              <div class="grid-div bold700">가입상태</div>
              <% for(int i=0; i<10; i++) {%>
              <div class="grid-div">1</div>
              <div class="grid-div">
                <a href="/app/study/detail">
                  토이프로젝트 앱 개발자 구합니다!</a
                >
              </div>
              <div class="grid-div">한혜원</div>
              <div class="grid-div">2022-12-10</div>
              <div class="grid-div">대기</div>
              <%}%>
            </div>
          </section>
          <section class="search-section center">
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
            </div>
          </section>
        </div>
      </div>
    </div>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>

    <!-- <script>
      const cate1 = document.querySelector(".category:nth-child(1)");
      const cate2 = document.querySelector(".category:nth-child(2)");
      const cate3 = document.querySelector(".category:nth-child(3)");
      const cate4 = document.querySelector(".category:nth-child(4)");

      cate1.addEventListener("click", function () {
        this.classList.add("clicked");

        cate2.classList.remove("clicked");
        cate3.classList.remove("clicked");
        cate4.classList.remove("clicked");
      });

      cate2.addEventListener("click", function () {
        this.classList.add("clicked");

        cate1.classList.remove("clicked");
        cate3.classList.remove("clicked");
        cate4.classList.remove("clicked");
      });

      cate3.addEventListener("click", function () {
        this.classList.add("clicked");

        cate1.classList.remove("clicked");
        cate2.classList.remove("clicked");
        cate4.classList.remove("clicked");
      });
      cate4.addEventListener("click", function () {
        this.classList.add("clicked");

        cate1.classList.remove("clicked");
        cate2.classList.remove("clicked");
        cate3.classList.remove("clicked");
      });
    </script> -->
    <script>
      //인기, 프론트엔드, 백엔드, 모바일, 기타, 모두보기
      const category = document.querySelectorAll(".category");

      //화면이 로드되었을 때 기본으로 인기 항목이 체크되어있으므로
      //이미 체크된 항목의 bar 길이 할당
      category.forEach((o) => {
        if (o.querySelector("input").checked) {
          const barWidth = o.querySelector("label").offsetWidth;
          o.querySelector(".bar").style.width = barWidth + "px";
        }
      });

      //항목이 체크되면 bar 길이 할당
      category.forEach((o) => {
        o.querySelector("label").addEventListener("click", (e) => {
          const barWidth = e.currentTarget.offsetWidth;
          o.querySelector(".bar").style.width = barWidth + "px";
        });
      });
    </script>
    <script>
      const category = document.querySelector("#my-cate div:nth-child(3) a");
      category.classList.add("main-color");
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

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

    * {
      font-family: "Noto Sans KR", sans-serif;
      box-sizing: border-box;
    }

    .flex {
      display: flex;
      align-items: center;
    }

    .space-between {
      display: flex;
      justify-content: space-between;
    }

    .info-section {
      margin-bottom: 30px;
    }

    .info-list li {
      width: 270px;
      height: 150px;
      background-color: white;
      padding: 24px;
      margin-right: 20px;
    }

    .info-list {
      display: flex;
      /* justify-content: space-between; */
    }

    .info-img {
      border-radius: 5px;
      width: 40px;
      height: 40px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 15px;
    }

    .blue {
      background-color: #2f81ed5a;
    }

    .purple {
      background-color: #9281db56;
    }

    .pink {
      background-color: #f0a0a06f;
    }

    .yellow {
      background-color: #ffb9495f;
    }

    .info-img i {
      font-size: 20px;
      color: white;
    }

    .info-title div:first-child {
      font-size: 18px;
      margin-bottom: 8px;
      font-weight: 700;
    }

    .info-title div:last-child {
      font-size: 11px;
      color: gray;
    }

    .info-top {
      margin-bottom: 30px;
    }

    .info-bottom div:first-child {
      font-size: 30px;
      font-weight: 700;
    }

    .info-bottom div:last-child {
      font-size: 16px;
      font-weight: 500;
    }

    .wrapper {
      padding: 20px;
    }

    .shadow {
      box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
    }

    .statistics-list {
      display: flex;
      flex-wrap: wrap;
    }

    .statistics {
      width: 560px;
      height: 350px;
      background-color: white;
      margin-right: 20px;
      margin-bottom: 20px;
    }

    .statistics header {
      height: 50px;
      border-bottom: 1px solid rgb(225, 225, 225);
      padding-left: 20px;
      line-height: 50px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">카테고리</div>
      <div class="wrapper">
        <section class="info-section">
          <ul class="info-list">
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img blue">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 질문</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img purple">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 질문 해결</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img pink">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 답변</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
            <li class="shadow">
              <div class="info-top flex">
                <div class="info-img yellow">
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="info-title">
                  <div>오늘 채택 답변</div>
                  <div>Today's Pageview</div>
                </div>
              </div>
              <div class="info-bottom space-between flex">
                <div>1500</div>
                <div><span>+1115&nbsp</span><span>+11.01%</span></div>
              </div>
            </li>
          </ul>
        </section>
        <ul class="statistics-list">
          <li class="statistics">
            <header>질문 분야</header>
            <section>
              <div>그래프자리</div>
              <ul>
                <li>Java</li>
                <li>Spring</li>
                <li>Python</li>
              </ul>
            </section>
          </li>
          <li class="statistics">
            <header>해결/미해결</header>
            <section>
              <div>그래프자리</div>
              <ul>
                <li>Java</li>
                <li>Spring</li>
                <li>Python</li>
              </ul>
            </section>
          </li>
          <li class="statistics">
            <header>스터디/프로젝트</header>
            <section>
              <div>그래프자리</div>
              <ul>
                <li>Java</li>
                <li>Spring</li>
                <li>Python</li>
              </ul>
            </section>
          </li>
          <li class="statistics">
            <header>모집중/모집완료</header>
            <section>
              <div>그래프자리</div>
              <ul>
                <li>Java</li>
                <li>Spring</li>
                <li>Python</li>
              </ul>
            </section>
          </li>
        </ul>
      </div>
    </div>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

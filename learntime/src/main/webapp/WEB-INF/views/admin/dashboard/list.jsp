<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/board/list.css"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
      * {
        font-family: "Noto Sans KR", sans-serif;
        box-sizing: border-box;
      }

      .admin-main {
        position: absolute;
        left: 300px;
        right: 0px;
      }

      .admin-main-header {
        /* width: 100%; */
        height: 55px;
        background-color: white;
        border-bottom: 1px solid rgb(236, 236, 236);
        padding-left: 25px;
        padding-right: 25px;
        display: flex;
        align-items: center;
      }

      .admin-main-header h1 {
        font-size: 22px;
        font-weight: 600;
      }

      .admin-main-header a {
        color: black;
      }

      .admin-main-content {
        padding: 25px;
        background-color: #efefef;
        /* box-shadow: inset rgb(0, 0, 0) 0px 25px 20px -40px; */
        box-shadow: inset 0px 2px 2px #c5c5c5;
      }

      .flex {
        display: flex;
        align-items: center;
      }

      .space-between {
        display: flex;
        justify-content: space-between;
      }

      .info-list li {
        width: 24%;
        height: 110px;
        background-color: white;
        padding: 20px;
      }

      .shadow {
        box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
      }

      .info-list {
        display: flex;
        justify-content: space-between;
      }

      .dashboard-article {
        width: 80%;
      }

      .dashboard-aside {
        width: 20%;
        margin-left: 15px;
      }

      .admin-main-content {
        display: flex;
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
        font-size: 17px;
        margin-bottom: 8px;
        font-weight: 500;
      }

      .info-title div:last-child {
        font-size: 11px;
        color: gray;
      }

      .info-top {
        margin-bottom: 15px;
      }

      .info-bottom div:first-child {
        font-size: 22px;
        font-weight: 700;
      }

      .info-bottom div:last-child {
        font-size: 13px;
        font-weight: 300;
      }

      .data-grid {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr 1fr 1fr 1.9fr;

        height: 350px;
      }

      .data-grid-div {
        border-bottom: 1px solid rgb(222, 222, 222);
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 13px;
        height: 36px;
      }

      .data-section {
        display: flex;
        margin-top: 10px;
      }

      .data-section-left {
        width: 60%;
        height: 400px;
        background-color: white;
      }

      .data-section-right {
        width: 40%;
        height: 400px;
        background-color: white;
        margin-left: 10px;
      }

      .dashboard-header {
        height: 40px;
        padding: 10px 20px;
        border-bottom: 1px solid rgb(226, 226, 226);
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-weight: 500;
      }

      .dashboard-header {
        font-size: 15px;
      }

      .board-section-grid {
        display: grid;
        grid-template-columns: 1fr 1fr;
        row-gap: 10px;
        margin-top: 10px;
      }

      .board-section-grid-div {
        height: 250px;
        background-color: white;
        box-shadow: rgba(0, 0, 0, 0.088) 0px 2px 4px;
      }

      .board-section-grid-div:nth-child(2n) {
        margin-left: 10px;
      }

      .board-grid {
        display: grid;
        grid-template-columns: 2fr 1fr;
        margin: 10px 20px;
      }

      .board-grid-div {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 37px;
        font-size: 15px;
      }

      .board-grid-div:nth-child(2n-1) {
        display: flex;
        justify-content: flex-start;
        align-items: center;
      }

      .board-grid-div:nth-child(2n) {
        display: flex;
        justify-content: flex-end;
        align-items: center;
      }

      .board-title {
        width: 462px;
      }

      .board-title a {
        width: 462px;
        height: 17px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
      }

      .dashboard-aside section {
        margin-bottom: 10px;
      }

      .manager-info {
        height: 275px;
        background-color: rgb(42, 42, 42);
      }

      .manager-section {
        background-color: white;
      }

      .manager-list,
      .operator-list {
        padding: 20px 20px 10px 20px;
        height: 267px;
        overflow-y: scroll;
      }

      .manager-list img,
      .operator-list img {
        width: 30px;
        height: 30px;
        margin-right: 10px;
      }

      .manager-list li,
      .operator-list li {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
      }

      .operator-section {
        background-color: white;
      }

      .manager-log-btn input {
        width: 100%;
        height: 50px;
        background-color: rgb(89, 89, 89);
        color: white;
        border: none;
        font-size: 16px;
        cursor: pointer;
      }

      .manager-profile img {
        width: 80px;
        height: 80px;
        margin-bottom: 10px;
        border-radius: 50%;
      }

      .manager-profile {
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
        margin-bottom: 30px;
      }

      .manager-profile div:nth-child(2) {
        font-size: 20px;
        margin-bottom: 10px;
      }

      .manager-profile div:nth-child(3) {
        font-size: 12px;
      }

      .manager-profile-grid {
        display: grid;
        grid-template-columns: 1fr 2fr;
        color: rgb(203, 203, 203);
        font-size: 15px;
        margin: 0px 20px;
      }

      .manager-profile-grid div {
        margin-bottom: 10px;
        font-size: 13px;
      }

      .relative {
        position: relative;
      }

      .setting-icon::before {
        position: absolute;
        top: 10px;
        right: 10px;
        color: rgb(209, 209, 209);
        font-size: 20px;
      }

      .cursor {
        cursor: pointer;
      }

      .chart-box {
        width: 100%;
        height: 100%;
        padding: 10px;
        display: flex;
        justify-content: center;
      }

      #myChart {
        width: 100% !important;
        height: 80% !important;
      }

      .point {
        width: 7px;
        height: 7px;

        border-radius: 50%;
        margin: 0px 5px;
      }

      .pageView-color {
        background-color: rgb(251, 165, 138);
      }

      .visitor-color {
        background-color: rgb(122, 122, 122);
      }
    </style>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/admin-side.jsp" %>
    <main class="admin-main">
      <header class="admin-main-header">
        <h1>
          <a href="">대시보드</a>
        </h1>
      </header>
      <section class="admin-main-content">
        <article class="dashboard-article">
          <section class="info-section">
            <ul class="info-list">
              <li class="shadow">
                <div class="info-top flex">
                  <div class="info-img blue">
                    <i class="fa-solid fa-users"></i>
                  </div>
                  <div class="info-title">
                    <div>오늘 페이지뷰</div>
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
                    <div>오늘 방문자수</div>
                    <div>Today's Pageview</div>
                  </div>
                </div>
                <div class="info-bottom space-between flex">
                  <div>${visitorCnt}</div>
                  <div><span>+1115&nbsp</span><span>+11.01%</span></div>
                </div>
              </li>
              <li class="shadow">
                <div class="info-top flex">
                  <div class="info-img pink">
                    <i class="fa-solid fa-users"></i>
                  </div>
                  <div class="info-title">
                    <div>오늘 가입자수</div>
                    <div>Today's Pageview</div>
                  </div>
                </div>
                <div class="info-bottom space-between flex">
                  <div>${joinCnt}</div>
                  <div><span>+1115&nbsp</span><span>+11.01%</span></div>
                </div>
              </li>
              <li class="shadow">
                <div class="info-top flex">
                  <div class="info-img yellow">
                    <i class="fa-solid fa-users"></i>
                  </div>
                  <div class="info-title">
                    <div>오늘 탈퇴자수</div>
                    <div>Today's Pageview</div>
                  </div>
                </div>
                <div class="info-bottom space-between flex">
                  <div>${quitCnt}</div>
                  <div><span>+1115&nbsp</span><span>+11.01%</span></div>
                </div>
              </li>
            </ul>
          </section>
          <section class="data-section">
            <div class="data-section-left shadow">
              <header class="dashboard-header">
                <h1>방문자 현황</h1>
                <div class="flex">
                  <div class="flex">
                    <div class="point pageView-color"></div>
                    페이지뷰
                  </div>
                  <div class="flex">
                    <div class="point visitor-color"></div>
                    방문자수
                  </div>
                </div>
              </header>
              <div class="chart-box">
                <canvas id="myChart"></canvas>
                <script>
                  new Chart(document.getElementById("myChart"), {
                    type: "line",
                    data: {
                      labels: [
                        "12/06",
                        "12/07",
                        "12/08",
                        "12/09",
                        "12/10",
                        "12/11",
                        "12/12",
                      ],
                      datasets: [
                        {
                          data: [100, 3, 30, 23, 40, 5, 50],
                          borderColor: "rgba(248,90,42,0.8)",
                          backgroundColor: "rgba(248,90,42,0.1)",
                          fill: true,
                          lineTension: 0,
                        },
                        {
                          data: [10, 30, 3, 13, 20, 15, 2],
                          borderColor: "rgb(76,76,76,0.8)",
                          backgroundColor: "rgba(76,76,76,0.1)",
                          fill: true,
                          lineTension: 0,
                        },
                      ],
                    },
                    options: {
                      plugins: {
                        legend: {
                          display: false,
                        },
                      },
                      responsive: true,
                      title: {
                        display: false,
                        text: "라인 차트 테스트",
                      },
                      tooltips: {
                        mode: "index",
                        intersect: false,
                      },
                      hover: {
                        mode: "nearest",
                        intersect: true,
                      },
                      scales: {
                        xAxes: [
                          {
                            display: true,
                          },
                        ],
                        yAxes: [
                          {
                            display: true,
                            ticks: {
                              suggestedMin: 0,
                            },
                          },
                        ],
                      },
                    },
                  });
                </script>
              </div>
            </div>
            <div class="data-section-right shadow">
              <header class="dashboard-header">일자별 요약</header>
              <div class="data-grid">
                <div class="data-grid-div">일자</div>
                <div class="data-grid-div">방문자</div>
                <div class="data-grid-div">가입</div>
                <div class="data-grid-div">문의</div>
                <div class="data-grid-div">결제</div>
                <div class="data-grid-div">결제총액</div>
                <% for(int i=0; i<7; i++) {%>
                <div class="data-grid-div">2022-05-10</div>
                <div class="data-grid-div">10</div>
                <div class="data-grid-div">5</div>
                <div class="data-grid-div">20</div>
                <div class="data-grid-div">10</div>
                <div class="data-grid-div">500000</div>
                <%}%>
                <div class="data-grid-div">최근7일합계</div>
                <div class="data-grid-div">70건</div>
                <div class="data-grid-div">35명</div>
                <div class="data-grid-div">20건</div>
                <div class="data-grid-div">10건</div>
                <div class="data-grid-div">500000원</div>

                <div class="data-grid-div">이번달합계</div>
                <div class="data-grid-div">100건</div>
                <div class="data-grid-div">50명</div>
                <div class="data-grid-div">20건</div>
                <div class="data-grid-div">10건</div>
                <div class="data-grid-div">500000원</div>
              </div>
            </div>
          </section>
          <section class="board-section board-section-grid">
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>STUDY/PROJECT</h1>
                <div><a href="${path}/admin/study/list?pno=1">더보기</a></div>
              </header>
              <div class="board-grid">
                <c:forEach items="${groupList}" var="map" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/admin/study/detail?gno=${map.NO}&pno=1"
                      >${map.TITLE}</a
                    >
                  </div>
                  <div class="board-grid-div">${map.FORMAT_ENROLL_DATE}</div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>MENTORING</h1>
                <div>
                  <a href="${path}/admin/mentor/mentoring?pno=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${mentorList}" var="vo" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/study/detail?gno=${map.NO}&pno=1"
                      >${vo.title}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${vo.enrollDate}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>LEARNING</h1>
                <div>
                  <a href="${path}/admin/qna/list?pno=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${learningList}" var="map" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/admin/qna/detail?&pno=1">${map.TITLE}</a>
                  </div>
                  <c:set var="enrollDate" value="${map.ENROLL_DATE}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,4)}-${fn:substring(enrollDate,5,7)}-${fn:substring(enrollDate,8,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>MAKE GRASS</h1>
                <div>
                  <a href="${path}/admin/makegrass/list?pno=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${makegrassList}" var="map" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/study/detail?gno=${map.NO}&pno=1"
                      >${map.TITLE}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${map.ENROLL_DATE}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,4)}-${fn:substring(enrollDate,5,7)}-${fn:substring(enrollDate,8,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>문의 내역</h1>
                <div>
                  <a href="${path}/admin/question/qListAd?p=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${questionList}" var="vo" end="4">
                  <div class="board-grid-div board-title">
                    <a
                      href="${path}/admin/question/qDetailListAdmin?no=${vo.no}"
                      >${vo.title}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${vo.enrollDate}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>자유게시판</h1>
                <div>
                  <a href="${path}/admin/community/list?pno=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${boardList}" var="vo" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/study/detail?gno=${map.NO}&pno=1"
                      >${vo.title}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${vo.enrollDate}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>공지사항</h1>
                <div>
                  <a href="${path}/admin/notice/noticeListAdmin?p=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${noticeList}" var="vo" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/admin/notice/noticeDetailAdmin?no=${vo.no}"
                      >${vo.title}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${vo.enrollDate}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
            <div class="board-section-grid-div">
              <header class="dashboard-header">
                <h1>FAQ</h1>
                <div>
                  <a href="${path}/admin/faq/faqListAd?pno=1">더보기</a>
                </div>
              </header>
              <div class="board-grid">
                <c:forEach items="${faqList}" var="vo" end="4">
                  <div class="board-grid-div board-title">
                    <a href="${path}/admin/faq/faqDetailListAdmin?no=${vo.no}"
                      >${vo.title}</a
                    >
                  </div>
                  <c:set var="enrollDate" value="${vo.enrollDate}" />
                  <div class="board-grid-div">
                    ${fn:substring(enrollDate,0,10)}
                  </div>
                </c:forEach>
              </div>
            </div>
          </section>
        </article>
        <aside class="dashboard-aside">
          <section class="manager-info relative">
            <i
              class="fa-solid fa-gear setting-icon cursor"
              onclick="location.href='${path}/admin/dashboard/manager/profile'"
            ></i>
            <div class="manager-profile">
              <div>
                <c:if test="${loginManager.imgPath == null}">
                  <img src="${path}/resources/img/profile_default.png" alt="" />
                </c:if>
                <c:if test="${loginManager.imgPath != null}">
                  <img
                    src="${path}/resources/upload/manager/profile/${loginManager.imgPath}"
                    alt=""
                  />
                </c:if>
              </div>
              <div>${loginManager.nick}</div>
              <div>${loginManager.id}</div>
            </div>
            <div class="manager-profile-grid">
              <div>접속시간</div>
              <div>${loginManager.accessTime}</div>
              <div>접속아이피</div>
              <div>${loginManager.accessIp}</div>
            </div>
          </section>
          <section class="manager-section shadow">
            <header class="dashboard-header">
              <h1>관리자</h1>
              <div>
                <a href="${path}/admin/dashboard/manager/list?pno=1">더보기</a>
              </div>
            </header>
            <ul class="manager-list">
              <c:forEach items="${managerList}" var="map">
                <li>
                  <c:if test="${map.IMG_PATH == null}">
                    <img
                      src="${path}/resources/img/profile_default.png"
                      alt=""
                    />
                  </c:if>
                  <c:if test="${map.IMG_PATH != null}">
                    <img
                      src="${path}/resources/upload/manager/profile/${map.IMG_PATH}"
                      alt=""
                    />
                  </c:if>
                  <span>${map.NICK}</span>
                </li>
              </c:forEach>
            </ul>
          </section>
          <section class="operator-section shadow">
            <header class="dashboard-header">
              <h1>운영자</h1>
              <div>더보기</div>
            </header>
            <ul class="operator-list">
              <c:forEach items="${operatorList}" var="map">
                <li>
                  <c:if test="${map.IMG_PATH == null}">
                    <img
                      src="${path}/resources/img/profile_default.png"
                      alt=""
                    />
                  </c:if>
                  <c:if test="${map.IMG_PATH != null}">
                    <img
                      src="${path}/resources/upload/profile/${map.IMG_PATH}"
                      alt=""
                    />
                  </c:if>
                  <span>${map.NICK}</span>
                </li>
              </c:forEach>
            </ul>
          </section>
          <section class="manager-log-btn">
            <input
              type="button"
              value="관리자 로그 내역"
              onclick="location.href='${path}/admin/dashboard/manager/log?pno=1'"
            />
          </section>
        </aside>
      </section>
    </main>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

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

    .delete-btn {
      width: 67px;
      height: 30px;
      border: 1px solid red;
      border-radius: 20px;
      outline: none;
      background-color: #ffffff;
      color: rgb(225, 24, 24);
      cursor: pointer;
    }

    /* 게시판 목록 부분 */

    .content-section {
      background-color: white;
      border: 1px solid rgb(221, 221, 221);
      margin-bottom: 20px;
    }

    .content-section-top {
      display: flex;
      align-items: center;
      color: rgb(85, 85, 85);
      font-size: 16px;
      height: 120px;
      padding-left: 50px;
    }

    .content-section-top span:first-child {
      margin-right: 54px;
      font-size: 20px;
      font-weight: 500;
    }

    .content-section-bottom {
      display: flex;
      justify-content: center;
      margin-bottom: 40px;
    }

    .grid-section {
      width: 60%;
      margin-bottom: 80px;
      border-top: 2px solid rgba(0, 0, 0, 0.5);
      border-bottom: 2px solid rgba(0, 0, 0, 0.5);
      margin-left: 226px;
    }

    .grid {
      width: 100%;
      display: grid;
      grid-template-columns: 1.3fr 1fr 2fr 1fr;
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

    .save-btn {
      background-color: #5ecc80;
      width: 105px;
      height: 43px;
      color: #ffffff;
      cursor: pointer;
      border: none;
      font-size: 16px;
    }

    .tech-icon {
      width: 30px;
      height: 30px;
    }

    .scroll-grid {
      max-height: 360px;
      overflow: auto;
    }

    .input-setting {
      width: 100px;

      padding: 0px 3px 0px 3px;
    }

    .img-num {
      width: 30px;
    }
    .tech-list {
      display: flex;
      width: 100%;
      height: 50px;

      align-items: center;
      border-bottom: 1px solid rgb(219, 219, 219);
    }

    .tech-list > div {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .tech-list > div:nth-child(1) {
      width: 25%;
    }

    .tech-list > div:nth-child(2) {
      width: 20%;
    }

    .tech-list > div:nth-child(3) {
      width: 38%;
    }

    .tech-list > div:nth-child(4) {
      width: 17%;
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
            <div class="grid-section">
              <div class="grid">
                <div class="grid-title">아이콘</div>
                <div class="grid-title">기술 스택 이름</div>
                <div class="grid-title">분야</div>
                <div class="grid-title"></div>
              </div>
              <div class="grid1 scroll-grid">
                <c:forEach items="${techStackInfoList}" var="map">
                  <div class="tech-list">
                    <div>
                      <img
                        src="${path}/resources/upload/techStack/${map.IMG_PATH}"
                        alt=""
                        class="tech-icon"
                      />
                    </div>
                    <div>${map.NAME}</div>
                    <div>
                      <select name="techType" id="">
                        <option value="${map.TYPE_NO}">${map.TYPE}</option>
                        <c:forEach items="${techTypeList}" var="map2">
                          <option value="${map2.NO}">${map2.NAME}</option>
                        </c:forEach>
                      </select>
                    </div>
                    <div>
                      <input type="button" class="delete-btn" value="삭제" />
                    </div>
                  </div>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="content-section-bottom">
            <input type="button" value="저장하기" class="save-btn" />
          </div>
        </section>
        <section class="content-section">
          <div class="content-section-top">
            <span class="main-color">진행 기간 관리</span>
            <span>진행 기간을 수정 및 추가 삭제가 가능합니다</span>
          </div>
          <div class="content-section-middle">
            <div class="grid-section">
              <div class="grid">
                <div class="grid-title">진행 기간 이름</div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
              </div>
              <div class="grid scroll-grid">
                <c:forEach items="${groupPeriodList}" var="map">
                  <div>
                    <input
                      type="text"
                      value="${map.NAME}"
                      class="input-setting"
                    />
                  </div>
                  <div></div>
                  <div></div>
                  <div>
                    <input type="button" class="delete-btn" value="삭제" />
                  </div>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="content-section-bottom">
            <input type="button" value="저장하기" class="save-btn" />
          </div>
        </section>
        <section class="content-section">
          <div class="content-section-top">
            <span class="main-color">모집 구분 관리</span>
            <span>모집 구분을 수정 및 추가 삭제가 가능합니다</span>
          </div>
          <div class="content-section-middle">
            <div class="grid-section">
              <div class="grid">
                <div class="grid-title">모집 구분 이름</div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
              </div>
              <div class="grid scroll-grid">
                <c:forEach items="${groupTypeList}" var="map">
                  <div>
                    <input
                      type="text"
                      value="${map.NAME}"
                      class="input-setting"
                    />
                  </div>
                  <div></div>
                  <div></div>
                  <div>
                    <input type="button" class="delete-btn" value="삭제" />
                  </div>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="content-section-bottom">
            <input type="button" value="저장하기" class="save-btn" />
          </div>
        </section>
        <section class="content-section">
          <div class="content-section-top">
            <span class="main-color">이미지 첨부 관리</span>
            <span>이미지 최대 첨부 개수 수정이 가능합니다</span>
          </div>
          <div class="content-section-middle">
            <div class="grid-section">
              <div class="grid">
                <div class="grid-title">최대 첨부 개수</div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
                <div class="grid-title"></div>
              </div>
              <div class="grid scroll-grid">
                <% for(int i=1; i<=1; i++) {%>

                <div>
                  이미지 최대&nbsp;<input
                    type="text"
                    value="5"
                    class="img-num"
                  />장 까지
                </div>
                <div></div>
                <div></div>
                <div></div>

                <%}%>
              </div>
            </div>
          </div>
          <div class="content-section-bottom">
            <input type="button" value="저장하기" class="save-btn" />
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

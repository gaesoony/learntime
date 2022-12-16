<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/manage/info.css"
    />
    <style>
      .manage-member-area {
        padding: 30px 50px;
      }
      .study-type-list {
        font-size: 20px;
      }

      .study-type {
        margin-right: 25px;

        color: rgb(158, 158, 158);
        cursor: pointer;
        font-size: 19px;
      }

      .type-clicked {
        color: black !important;
      }
      .study-type-bar1 {
        width: 42px;
        height: 4px;
        background-color: #5ecc80;
        position: absolute;
        bottom: -10px;
        left: -3px;
      }

      .study-type-bar2 {
        width: 42px;
        height: 4px;
        background-color: #5ecc80;
        position: absolute;
        bottom: -10px;
        left: -4px;
      }

      .study-type-bar3 {
        width: 42px;
        height: 4px;
        background-color: #5ecc80;
        position: absolute;
        bottom: -10px;
        left: -3px;
      }

      .study-type-bar4 {
        width: 42px;
        height: 4px;
        background-color: #5ecc80;
        position: absolute;
        bottom: -10px;
        left: -3px;
      }

      .search-input {
        width: 300px;
        height: 40px;
        padding: 10px 10px 10px 10px;

        outline: none;
        border: 1px solid rgb(192, 192, 192);
      }

      .grid {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr;
        column-gap: 15px;
        row-gap: 15px;
      }

      .grid-div {
        height: 80px;
        background-color: #edf9ee;
        box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
        padding: 20px;
        cursor: pointer;
      }

      .grid-div-left img {
        width: 45px;
        height: 45px;
      }

      .grid-div-right {
        margin-left: 15px;
      }

      .grid-div-right div:first-child {
        font-size: 18px;
        font-weight: 400;
        margin-bottom: 10px;
      }

      .grid-div-right div:last-child {
        font-size: 14px;
        font-weight: 300;
      }

      .manage-member-area-top {
        margin-bottom: 50px;
      }

      .fa-magnifying-glass {
        position: absolute;
        right: 12px;
        top: 13px;
        color: gray;
      }

      /* 가입신청 팝업창 */

      .study-popup-wrap {
        background-color: rgba(0, 0, 0, 0.3);
        justify-content: center;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        display: none;
        padding: 15px;
        z-index: 1000;
      }

      .study-popup {
        width: 100%;
        max-width: 450px;
        border-radius: 10px;
        overflow: hidden;
        background-color: #ffffff;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        padding: 30px;
      }

      .study-popup-head {
        width: 100%;
        height: 50px;
        margin-bottom: 30px;
      }

      .study-popup-head div:first-child {
        color: #5ecc80;
        font-size: 23px;
        font-weight: 700;
        margin-bottom: 20px;
      }

      .study-popup-head div:last-child {
        color: gray;
        font-size: 13px;
      }

      .study-popup-body {
        width: 100%;
        background-color: #ffffff;
      }
      .study-body-content {
        width: 100%;
      }
      .study-body-titlebox div:first-child {
        font-weight: 500;
        margin-bottom: 14px;
        font-size: 17px;
      }

      .study-body-titlebox div:last-child {
        margin-bottom: 5px;
        font-size: 13px;
        color: gray;
      }
      .study-body-contentbox input {
        width: 100%;
        height: 40px;
        border: 1px solid rgb(218, 218, 218);
        border-radius: 3px;
        margin-top: 3px;
        margin-bottom: 20px;
        outline: none;
        padding: 3px 10px;
        box-sizing: border-box;
      }

      .study-popup-foot {
        width: 100%;
        height: 30px;
        display: flex;
        justify-content: flex-end;
      }

      .study-pop-btn {
        width: 55px;
        height: 30px;
        border-radius: 3px;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 12px;
        cursor: pointer;
      }

      .study-pop-btn:first-child {
        background-color: #5ecc80;

        color: white;
        margin-right: 5px;
      }

      .study-pop-btn:last-child {
        background-color: #ffffff;

        color: rgb(168, 168, 168);
        border: 1px solid rgb(207, 207, 207);
      }
    </style>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/manage-side.jsp" %>
      <article class="mystudy-article">
        <div class="mystudy-board-title">참여 멤버 관리</div>
        <div class="manage-member-area">
          <div class="space-between manage-member-area-top relative">
            <ul class="study-type-list bold700 flex">
              <li class="study-type type-clicked relative">
                대기
                <div class="study-type-bar1"></div>
              </li>
              <li class="study-type relative">
                승인
                <div class="study-type-bar2 hidden"></div>
              </li>
              <li class="study-type relative">
                강퇴
                <div class="study-type-bar3 hidden"></div>
              </li>
              <li class="study-type relative">
                탈퇴
                <div class="study-type-bar4 hidden"></div>
              </li>
            </ul>
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
              type="text"
              placeholder="닉네임을 입력해주세요"
              class="search-input"
            />
          </div>
          <section>
            <div class="grid">
              <% for(int i=0; i<12; i++) {%>
              <div
                class="grid-div flex"
                id="study-modal-open"
                onclick="modalOpen()"
              >
                <div class="grid-div-left">
                  <img
                    src="${pageContext.request.contextPath}/resources/img/study/profile.png"
                    alt=""
                  />
                </div>
                <div class="grid-div-right">
                  <div>한혜원</div>
                  <div>2022.12.10 12:12:12</div>
                </div>
              </div>
              <%}%>
            </div>
          </section>
          <div class="study-popup-wrap" id="study-popup">
            <div class="study-popup">
              <div class="study-popup-head">
                <div class="study-head-title">가입 신청서</div>
                <div>한혜원님이 가입을 신청했습니다.</div>
              </div>
              <div class="study-popup-body">
                <div class="study-body-content">
                  <div class="study-body-titlebox">
                    <div>질문1</div>
                    <div>지원동기 알려주세요</div>
                  </div>
                  <div class="study-body-contentbox">
                    <input
                      type="text"
                      value="같이 스터디 해보고 싶습니다!"
                      readonly
                    />
                  </div>
                </div>
                <div class="study-body-content">
                  <div class="study-body-titlebox">
                    <div>질문2</div>
                    <div>사용 가능한 언어 알려주세요</div>
                  </div>
                  <div class="study-body-contentbox">
                    <input
                      type="text"
                      value="자바, 파이썬, 자바스크립트"
                      readonly
                    />
                  </div>
                </div>
                <div class="study-body-content">
                  <div class="study-body-titlebox">
                    <div>질문3</div>
                    <div>공지사항 꼭 읽어주세요</div>
                  </div>
                  <div class="study-body-contentbox">
                    <input type="text" value="넹" readonly />
                  </div>
                </div>
              </div>
              <div class="study-popup-foot">
                <div class="study-pop-btn study-confirm" id="study-confirm">
                  수락
                </div>

                <div class="study-pop-btn study-close" id="study-close">
                  거절
                </div>
              </div>
            </div>
          </div>
          <script>
            function modalOpen() {
              $("#study-popup").css("display", "flex").hide().fadeIn();
              //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
            }
            $(function () {
              $("#study-confirm").click(function () {
                modalClose(); //모달 닫기 함수 호출

                //컨펌 이벤트 처리
              });

              $("#study-close").click(function () {
                modalClose(); //모달 닫기 함수 호출
              });
              function modalClose() {
                $("#study-popup").fadeOut(); //페이드아웃 효과
              }
            });
          </script>
        </div>
      </article>
    </main>
    <script>
      const studyType1 = document.querySelector(".study-type:nth-child(1)");
      const studyType2 = document.querySelector(".study-type:nth-child(2)");
      const studyType3 = document.querySelector(".study-type:nth-child(3)");
      const studyType4 = document.querySelector(".study-type:nth-child(4)");

      const studyTypeBar1 = studyType1.querySelector("div");
      const studyTypeBar2 = studyType2.querySelector("div");
      const studyTypeBar3 = studyType3.querySelector("div");
      const studyTypeBar4 = studyType4.querySelector("div");

      studyType1.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar1.classList.remove("hidden");

        studyType2.classList.remove("type-clicked");
        studyType3.classList.remove("type-clicked");
        studyType4.classList.remove("type-clicked");

        studyTypeBar2.classList.add("hidden");
        studyTypeBar3.classList.add("hidden");
        studyTypeBar4.classList.add("hidden");
      });

      studyType2.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar2.classList.remove("hidden");

        studyType1.classList.remove("type-clicked");
        studyType3.classList.remove("type-clicked");
        studyType4.classList.remove("type-clicked");

        studyTypeBar1.classList.add("hidden");
        studyTypeBar3.classList.add("hidden");
        studyTypeBar4.classList.add("hidden");
      });

      studyType3.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar3.classList.remove("hidden");

        studyType1.classList.remove("type-clicked");
        studyType2.classList.remove("type-clicked");
        studyType4.classList.remove("type-clicked");

        studyTypeBar1.classList.add("hidden");
        studyTypeBar2.classList.add("hidden");
        studyTypeBar4.classList.add("hidden");
      });

      studyType4.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar4.classList.remove("hidden");

        studyType1.classList.remove("type-clicked");
        studyType2.classList.remove("type-clicked");
        studyType3.classList.remove("type-clicked");

        studyTypeBar1.classList.add("hidden");
        studyTypeBar2.classList.add("hidden");
        studyTypeBar3.classList.add("hidden");
      });
    </script>
  </body>
</html>

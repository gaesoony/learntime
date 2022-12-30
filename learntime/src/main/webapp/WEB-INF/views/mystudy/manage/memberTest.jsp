<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${path}/resources/css/mystudy/manage/info.css"
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

      input[name="status"] {
        display: none;
      }

      input[name="status"]:checked + div {
        color: black;
      }

      input[name="status"]:checked ~ .bar {
        display: block;
      }

      .study-type label {
        cursor: pointer;
      }

      .bar {
        display: none;
        height: 4px;
        width: 36px;
        background-color: var(--main-color);
        position: absolute;
        bottom: -10px;
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
        padding: 10px 15px;
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
        font-size: 17px;
        font-weight: 400;
        margin-bottom: 10px;
      }

      .grid-div-right div:last-child {
        font-size: 13px;
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
        height: 300px;
        overflow: scroll;
        margin-bottom: 10px;
      }

      .study-popup-body::-webkit-scrollbar {
        display: none;
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
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" checked value="A" />
                  <div>대기</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="C" />
                  <div>승인</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="E" />
                  <div>강퇴</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="F" />
                  <div>탈퇴</div>
                  <div class="bar"></div>
                </label>
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
            <div class="grid"></div>
          </section>
          <section class="modal-section">
            <div class="study-popup-wrap" id="study-popup">
              <div class="study-popup">
                <div class="study-popup-head">
                  <div class="study-head-title">가입 신청서</div>
                  <div class="nick-title"></div>
                </div>
                <div class="study-popup-body">
                  <!-- <div class="study-body-content">
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
                  </div> -->
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
          </section>
        </div>
      </article>
    </main>
    <script>
      function getContextPath() {
        var hostIndex =
          location.href.indexOf(location.host) + location.host.length;
        return location.href.substring(
          hostIndex,
          location.href.indexOf("/", hostIndex + 1)
        );
      }

      let status = document.querySelectorAll(".study-type");

      //페이지가 새로고침됐을 때 이미 체크되어있던 항목의 기술스택 불러오기
      status.forEach((o) => {
        if (o.querySelector("input").checked) {
          const grid = document.querySelector(".grid");

          $.ajax({
            url: getContextPath() + "/mystudy/manage/member/status",
            type: "get",
            data: {
              status: o.querySelector("input").value,
              gno: "${groupOne.NO}",
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function (data) {
              var obj = JSON.parse(data);
              console.log(obj.result[0].MEMBER_NICK);
              let str = "";

              for (let i = 0; i < obj.result.length; i++) {
                console.log(obj.result[i].MEMBER_PROFILE);
                if (obj.result[i].MEMBER_PROFILE == undefined) {
                  obj.result[i].MEMBER_PROFILE = "profile_default.png";
                }
                str =
                  str +
                  '<div class="grid-div flex" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ')">' +
                  '<div class="grid-div-left">' +
                  '<img src="${pageContext.request.contextPath}/resources/upload/common/' +
                  obj.result[i].MEMBER_PROFILE +
                  '" alt=""/></div>' +
                  '<div class="grid-div-right">' +
                  "<div>" +
                  obj.result[i].MEMBER_NICK +
                  "</div>" +
                  "<div>" +
                  obj.result[i].ENROLL_DATE +
                  "</div></div></div>";
              }
              grid.innerHTML = str;
            },
          });
        }
      });

      status.forEach((o) => {
        o.addEventListener("click", () => {
          const grid = document.querySelector(".grid");

          $.ajax({
            url: getContextPath() + "/mystudy/manage/member/status",
            type: "get",
            data: {
              status: o.querySelector("input").value,
              gno: "${groupOne.NO}",
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function (data) {
              var obj = JSON.parse(data);

              let str = "";

              console.log(obj.result);

              for (let i = 0; i < obj.result.length; i++) {
                console.log("나오는거맞나..?");
                console.log(obj.result[i].MEMBER_PROFILE);
                if (obj.result[i].MEMBER_PROFILE == undefined) {
                  obj.result[i].MEMBER_PROFILE = "profile_default.png";
                }
                str =
                  str +
                  '<div class="grid-div flex" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ');">' +
                  '<div class="grid-div-left">' +
                  '<img src="${pageContext.request.contextPath}/resources/upload/common/' +
                  obj.result[i].MEMBER_PROFILE +
                  '" alt=""/></div>' +
                  '<div class="grid-div-right">' +
                  "<div>" +
                  obj.result[i].MEMBER_NICK +
                  "</div>" +
                  "<div>" +
                  obj.result[i].ENROLL_DATE +
                  "</div></div></div>";
              }
              grid.innerHTML = str;
            },
          });
        });
      });

      function modalOpen(x) {
        $.ajax({
          url: getContextPath() + "/mystudy/manage/member/answer",
          type: "get",
          data: {
            rno: x,
          },
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          success: function (data) {
            var obj = JSON.parse(data);
            const modal = document.querySelector(".modal-section");
            const nickTitle = document.querySelector(".nick-title");
            const studyPopupBody = document.querySelector(".study-popup-body");
            const studyPopupFoot = document.querySelector(".study-popup-foot");

            nickTitle.innerHTML =
              obj.result[1].NICK + "님이 가입을 신청했습니다";

            let modalStr = "";
            let submitStr = "";

            for (let i = 0; i < obj.result.length; i++) {
              modalStr =
                modalStr +
                '<div class="study-body-content">' +
                '<div class="study-body-titlebox">' +
                "<div>질문" +
                (i + 1) +
                "</div>" +
                "<div>" +
                obj.result[i].QUESTION +
                "</div>" +
                "</div>" +
                '<div class="study-body-contentbox">' +
                '<input type="text" value="' +
                obj.result[i].CONTENT +
                '" readonly/>' +
                "</div>" +
                "</div>";
            }

            submitStr =
              '<div class="study-pop-btn study-confirm" id="study-confirm" onclick="confirm(' +
              obj.result[0].NO +
              ');">수락</div>' +
              '<div class="study-pop-btn study-close" id="study-close" onclick="reject(' +
              obj.result[0].NO +
              ')">거절</div>';
            studyPopupBody.innerHTML = modalStr;
          },
          error: function (error) {
            alert("통신실패!");
          },
        });

        $("#study-popup").css("display", "flex").hide().fadeIn();
      }

      function confirm(x) {
        // modalClose();
        location.href =
          "${path}/mystudy/member/confirm?gno=" + groupOne.NO + "&rno=" + x;
      }

      function reject(x) {
        "${path}/mystudy/member/reject?gno=" + groupOne.NO + "&rno=" + x;
      }

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
    </script>
  </body>
</html>

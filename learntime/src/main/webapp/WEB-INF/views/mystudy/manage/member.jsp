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

      /* .type-clicked {
        color: black !important;
      } */
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

      /* ???????????? ????????? */

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
        <div class="mystudy-board-title">?????? ?????? ??????</div>
        <div class="manage-member-area">
          <div class="space-between manage-member-area-top relative">
            <ul class="study-type-list bold700 flex">
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" checked value="A" />
                  <div>??????</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="C" />
                  <div>??????</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="E" />
                  <div>??????</div>
                  <div class="bar"></div>
                </label>
              </li>
              <li class="study-type relative">
                <label>
                  <input type="radio" name="status" value="F" />
                  <div>??????</div>
                  <div class="bar"></div>
                </label>
              </li>
            </ul>
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
              type="text"
              placeholder="???????????? ??????????????????"
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
                  <div class="study-head-title">?????? ?????????</div>
                  <div>??????????????? ????????? ??????????????????.</div>
                </div>
                <div class="study-popup-body">
                  <div class="study-body-content">
                    <div class="study-body-titlebox">
                      <div>??????1</div>
                      <div>???????????? ???????????????</div>
                    </div>
                    <div class="study-body-contentbox">
                      <input
                        type="text"
                        value="?????? ????????? ????????? ????????????!"
                        readonly
                      />
                    </div>
                  </div>
                  <div class="study-body-content">
                    <div class="study-body-titlebox">
                      <div>??????2</div>
                      <div>?????? ????????? ?????? ???????????????</div>
                    </div>
                    <div class="study-body-contentbox">
                      <input
                        type="text"
                        value="??????, ?????????, ??????????????????"
                        readonly
                      />
                    </div>
                  </div>
                  <div class="study-body-content">
                    <div class="study-body-titlebox">
                      <div>??????3</div>
                      <div>???????????? ??? ???????????????</div>
                    </div>
                    <div class="study-body-contentbox">
                      <input type="text" value="???" readonly />
                    </div>
                  </div>
                </div>
                <div class="study-popup-foot">
                  <div class="study-pop-btn study-confirm" id="study-confirm">
                    ??????
                  </div>

                  <div class="study-pop-btn study-close" id="study-close">
                    ??????
                  </div>
                </div>
              </div>
            </div>
          </section>

          <script>
            function confirm(x) {
              // modalClose();
              location.href = "${path}/mystudy/member/confirm?rno=" + x;
            }
            function modalOpen(x) {
              $("#study-popup" + x)
                .css("display", "flex")
                .hide()
                .fadeIn();
              //????????? flex???????????? ????????? ??? hide()??? ????????? ?????? fadeIn()?????? ??????
            }

            $("#study-confirm").click(function () {
              modalClose(); //?????? ?????? ?????? ??????
              //?????? ????????? ??????
            });

            $("#study-close").click(function () {
              modalClose(); //?????? ?????? ?????? ??????
            });
            function modalClose() {
              $("#study-popup").fadeOut(); //??????????????? ??????
            }
          </script>
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
      console.log(status);

      //???????????? ?????????????????? ??? ?????? ?????????????????? ????????? ???????????? ????????????
      status.forEach((o) => {
        if (o.querySelector("input").checked) {
          const grid = document.querySelector(".grid");
          const modal = document.querySelector(".modal-section");

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
              let str2 = "";
              for (let i = 0; i < obj.result.length; i++) {
                str =
                  str +
                  '<div class="grid-div flex" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ')">' +
                  '<div class="grid-div-left">' +
                  '<img src="${path}' +
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

              for (let i = 0; i < obj.result.length; i++) {
                str2 =
                  str2 +
                  '<div class="study-popup-wrap" id="study-popup' +
                  obj.result[i].NO +
                  '"><div class="study-popup">' +
                  '<div class="study-popup-head">' +
                  '<div class="study-head-title">?????? ?????????</div>' +
                  "<div>" +
                  obj.result[i].MEMBER_NICK +
                  "?????? ????????? ??????????????????.</div>" +
                  "</div>" +
                  '<div class="study-popup-body">' +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????1</div>" +
                  "<div>???????????? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="?????? ????????? ????????? ????????????!" readonly/>' +
                  "</div>" +
                  "</div>" +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????2</div>" +
                  "<div>?????? ????????? ?????? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="??????, ?????????, ??????????????????" readonly />' +
                  "</div>" +
                  "</div>" +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????3</div>" +
                  "<div>???????????? ??? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="???" readonly />' +
                  "</div>" +
                  "</div>" +
                  "</div>" +
                  '<div class="study-popup-foot">' +
                  '<div class="study-pop-btn study-confirm" id="study-confirm" onclick="confirm(' +
                  obj.result[i].NO +
                  ');">??????</div>' +
                  '<div class="study-pop-btn study-close" id="study-close">??????</div>' +
                  "</div>" +
                  "</div>" +
                  "</div>";
              }

              modal.innerHTML = str2;
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
              let str2 = "";
              for (let i = 0; i < obj.result.length; i++) {
                str =
                  str +
                  '<div class="grid-div flex" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ')">' +
                  '<div class="grid-div-left">' +
                  '<img src="${pageContext.request.contextPath}' +
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

              for (let i = 0; i < obj.result.length; i++) {
                str2 =
                  str2 +
                  '<div class="study-popup-wrap" id="study-popup' +
                  obj.result[i].NO +
                  '"><div class="study-popup">' +
                  '<div class="study-popup-head">' +
                  '<div class="study-head-title">?????? ?????????</div>' +
                  "<div>" +
                  obj.result[i].MEMBER_NICK +
                  "?????? ????????? ??????????????????.</div>" +
                  "</div>" +
                  '<div class="study-popup-body">' +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????1</div>" +
                  "<div>???????????? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="?????? ????????? ????????? ????????????!" readonly/>' +
                  "</div>" +
                  "</div>" +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????2</div>" +
                  "<div>?????? ????????? ?????? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="??????, ?????????, ??????????????????" readonly />' +
                  "</div>" +
                  "</div>" +
                  '<div class="study-body-content">' +
                  '<div class="study-body-titlebox">' +
                  "<div>??????3</div>" +
                  "<div>???????????? ??? ???????????????</div>" +
                  "</div>" +
                  '<div class="study-body-contentbox">' +
                  '<input type="text" value="???" readonly />' +
                  "</div>" +
                  "</div>" +
                  "</div>" +
                  '<div class="study-popup-foot">' +
                  '<div class="study-pop-btn study-confirm" id="study-confirm" onclick="confirm(' +
                  obj.result[i].NO +
                  ');">??????</div>' +
                  '<div class="study-pop-btn study-close" id="study-close">??????</div>' +
                  "</div>" +
                  "</div>" +
                  "</div>";
              }

              modal.innerHTML = str2;
            },
          });
        });
      });
    </script>
  </body>
</html>

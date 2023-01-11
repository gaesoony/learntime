<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${path}/resources/css/mystudy/manage/member.css"
    />
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
                  <input id="statusC" type="radio" name="status" value="C" />
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
                  <!-- <div class="study-pop-btn study-confirm" id="study-confirm">
                    수락
                  </div>

                  <div class="study-pop-btn study-close" id="study-close">
                    거절
                  </div> -->
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

              let str = "";

              for (let i = 0; i < obj.result.length; i++) {

                if (obj.result[i].MEMBER_PROFILE == undefined) {
                  obj.result[i].MEMBER_PROFILE = "profile_default.png";
                }
                str =
                  str +
                  '<div class="grid-div member'+ obj.result[i].NO +'" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ')">' +
                  '<div class="grid-div-left">' +
                  '<img src="${pageContext.request.contextPath}' +
                  obj.result[i].MEMBER_PROFILE +
                  '" alt=""/></div>' +
                  '<div class="grid-div-right relative">' +
                  '<div class="member-nick">' +
                  obj.result[i].MEMBER_NICK +
                  "</div>" +
                  '<div class="enroll-date">' +
                  obj.result[i].ENROLL_DATE +
                  '</div><div class="hidden member-control"><div onclick="delegate('+obj.result[i].NO+');">모임장위임</div><div onclick="kick('+obj.result[i].NO+');">강퇴</div></div></div></div>';
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


              for (let i = 0; i < obj.result.length; i++) {

                if (obj.result[i].MEMBER_PROFILE == undefined) {
                  obj.result[i].MEMBER_PROFILE = "profile_default.png";
                }
                str =
                  str +
                  '<div class="grid-div member'+obj.result[i].NO+'" id="study-modal-open" onclick="modalOpen(' +
                  obj.result[i].NO +
                  ')">' +
                  '<div class="grid-div-left">' +
                  '<img src="${pageContext.request.contextPath}' +
                  obj.result[i].MEMBER_PROFILE +
                  '" alt=""/></div>' +
                  '<div class="grid-div-right relative">' +
                  '<div class="member-nick">' +
                  obj.result[i].MEMBER_NICK +
                  "</div>" +
                  '<div class="enroll-date">' +
                  obj.result[i].ENROLL_DATE +
                  '</div><div class="hidden member-control"><div onclick="delegate('+obj.result[i].NO+');">모임장위임</div><div onclick="kick('+obj.result[i].NO+');">강퇴</div></div></div></div>';
              }
              grid.innerHTML = str;

              // let temp = document.querySelector('.study-type-list .study-type:nth-child(2)');
              // let statusC = temp.querySelector('input');

              // temp.addEventListener('click', function() {

              //   if(statusC.checked) {
              //     let memberList = document.querySelectorAll('.grid-div');

              //     memberList.forEach((o)=>{
              //       console.log(o);
              //     o.addEventListener('mouseover', function() {
              //       console.log('마우스오버되나?');


              //       o.classList.add('main-color');
              //     })
              //   })
              //   }

              // })
            },
          });
        });
      });

      function modalOpen(x) {

        const statusA = document.querySelector('input[value=A]');
        const statusC = document.querySelector('input[value=C]');

        if(statusA.checked) {

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
                obj.result[0].NICK + "님이 가입을 신청했습니다";

              let modalStr = "";
              let submitStr = "";

              if(obj.result[0].QUESTION != null) {
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

              }

              submitStr =
                '<div class="study-pop-btn study-confirm" id="study-confirm" onclick="confirm(' +
                obj.result[0].NO +
                ');">수락</div>' +
                '<div class="study-pop-btn study-close" id="study-close" onclick="reject(' +
                obj.result[0].NO +
                ');">거절</div>';
              studyPopupBody.innerHTML = modalStr;
              studyPopupFoot.innerHTML = submitStr;




            },
            error: function (error) {
              alert("통신실패!");
            },
          });

          $("#study-popup").css("display", "flex").hide().fadeIn();
        }

        if(statusC.checked) {

          const memberDiv = document.querySelector('.member'+ x );
          const enrollDate = memberDiv.querySelector('.enroll-date');
          const memberControl = memberDiv.querySelector('.member-control');
          memberDiv.classList.toggle('main-back');
          enrollDate.classList.toggle('hidden');
          memberControl.classList.toggle('hidden');
        }
      }

      function confirm(x) {
        // modalClose();
        location.href =
          "${path}/mystudy/manage/member/confirm?gno=" + ${groupOne.NO} + "&rno=" + x;
      }

      function reject(x) {
        location.href ="${path}/mystudy/manage/member/reject?gno=" + ${groupOne.NO} + "&rno=" + x;
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

      function delegate(x) {
        Swal.fire({
          title: "모임장을 위임하시겠습니까?",
          text: "",
          icon: "warning",
          showCancelButton: true,
          confirmButtonColor: "#5ecc80",
          cancelButtonColor: "#d33",
          confirmButtonText: "위임",
          cancelButtonText: "취소",
        }).then((result) => {
          if (result.isConfirmed) {
            location.href =
              "${path}/mystudy/manage/member/delegate?gno="+${groupOne.NO}+"&rno="+x;
          }
        });
      }

      function kick(x) {
        Swal.fire({
          title: '정말 강퇴시키겠습니까?',
          text: "재가입 가능 여부를 선택해주세요",
          showDenyButton: true,
          showCancelButton: true,
          confirmButtonText: '재가입가능',
          denyButtonText: `재가입불가`,
        }).then((result) => {
          /* Read more about isConfirmed, isDenied below */
          if (result.isConfirmed) {
            location.href =
              "${path}/mystudy/manage/member/kick?rejoin=Y&gno="+${groupOne.NO}+"&rno="+x;
          } else if (result.isDenied) {
            location.href =
            "${path}/mystudy/manage/member/kick?rejoin=N&gno="+${groupOne.NO}+"&rno="+x;
          }
        })
      }



      // const temp = document.querySelector('.study-type-list .study-type:nth-child(2)');
      // const statusC = temp.querySelector('input');

      // temp.addEventListener('click', function() {

      //   if(statusC.checked) {
      //     let memberList = document.querySelectorAll('.grid-div');
      //     console.log(memberList);
      //     memberList.forEach((o)=>{
      //       console.log(o);
      //     o.addEventListener('mouseover', function() {
      //       console.log('마우스오버되나?');


      //       o.classList.add('main-color');
      //     })
      //   })
      //   }

      // })
    </script>
  </body>
</html>

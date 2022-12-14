<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>

    <style>
      .cate-btn {
        width: 100px;
        height: 40px;
        background-color: #ffffff;
        color: rgb(88, 88, 88);
        border: 1px solid rgb(167, 167, 167);
        margin-right: 3px;
      }

      .cate-name {
        border: none;
        outline: none;
        font-size: 16px;
      }

      .drag-box {
        border: 1px solid rgb(167, 167, 167);
        width: 500px;
        height: 50px;
        display: flex;
        align-items: center;
        padding: 0px 15px;
        margin-bottom: 1px;
      }

      .drag-box-inner {
        width: 500px;
      }

      .manage-btn {
        width: 50px;
        height: 25px;
        background-color: #ffffff;
        color: rgb(88, 88, 88);
        border: 1px solid rgb(167, 167, 167);
        margin-left: 5px;
      }

      .fa-bars {
        color: gray;
        font-size: 17px;
        margin-right: 30px;
        cursor: pointer;
      }

      .content-box {
        padding: 70px;
      }

      .content-box h1 {
        margin-bottom: 30px;
        color: rgb(80, 80, 80);
      }

      .btn-area {
        margin-top: 10px;
      }

      .border {
        border: 1px solid gray;
      }

      .hidden {
        display: none;
      }

      input[type="button"] {
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/manage-side.jsp" %>
      <form action="${path}/mystudy/manage/category" method="post">
        <input type="hidden" name="gno" value="${groupOne.NO}" />
        <article class="mystudy-article">
          <div class="mystudy-board-title">카테고리 관리</div>
          <div class="content-box">
            <h1>카테고리를 생성하고 이름을 변경할 수 있습니다.</h1>
            <section>
              <div class="container">
                <c:forEach items="${cateList}" var="map">
                  <div class="draggable drag-box" draggable="true">
                    <span class="ico-drag"></span>
                    <div class="el space-between drag-box-inner">
                      <div>
                        <i class="fa-solid fa-bars"></i
                        ><input
                          type="text"
                          name="cateName"
                          value="${map.NAME}"
                          class="cate-name"
                          readonly
                        />
                        <input type="hidden" name="cateNo" value="${map.NO}">
                      </div>
                      <div>
                        <input
                          type="button"
                          value="수정"
                          class="manage-btn edit-btn"
                          onclick="editCateName(event)"
                        /><input
                          type="button"
                          value="완료"
                          class="manage-btn hidden finish-btn"
                          onclick="finishCateName(event)"
                        /><input
                          type="button"
                          value="삭제"
                          class="manage-btn"
                          onclick="deleteCate(event)"
                        />
                      </div>
                    </div>
                  </div>
                </c:forEach>
              </div>

              <script>
                /**
                 * [x] 엘리먼트의 .draggable, .container의 배열로 선택자를 지정합니다.
                 * [x] draggables를 전체를 루프하면서 dragstart, dragend를 이벤트를 발생시킵니다.
                 * [x] dragstart, dragend 이벤트를 발생할때 .dragging라는 클래스를 토글시킨다.
                 * [x] dragover 이벤트가 발생하는 동안 마우스 드래그하고 마지막 위치해놓은 Element를 리턴하는 함수를 만듭니다.
                 */

                (() => {
                  const $ = (select) => document.querySelectorAll(select);
                  const draggables = $(".draggable");
                  const containers = $(".container");

                  draggables.forEach((el) => {
                    el.addEventListener("dragstart", () => {
                      el.classList.add("dragging");
                    });

                    el.addEventListener("dragend", () => {
                      el.classList.remove("dragging");
                    });
                  });

                  function getDragAfterElement(container, y) {
                    const draggableElements = [
                      ...container.querySelectorAll(
                        ".draggable:not(.dragging)"
                      ),
                    ];

                    return draggableElements.reduce(
                      (closest, child) => {
                        const box = child.getBoundingClientRect(); //해당 엘리먼트에 top값, height값 담겨져 있는 메소드를 호출해 box변수에 할당
                        const offset = y - box.top - box.height / 2; //수직 좌표 - top값 - height값 / 2의 연산을 통해서 offset변수에 할당
                        if (offset < 0 && offset > closest.offset) {
                          // (예외 처리) 0 이하 와, 음의 무한대 사이에 조건
                          return { offset: offset, element: child }; // Element를 리턴
                        } else {
                          return closest;
                        }
                      },
                      { offset: Number.NEGATIVE_INFINITY }
                    ).element;
                  }

                  containers.forEach((container) => {
                    container.addEventListener("dragover", (e) => {
                      e.preventDefault();
                      const afterElement = getDragAfterElement(
                        container,
                        e.clientY
                      );
                      const draggable = document.querySelector(".dragging");
                      // container.appendChild(draggable)
                      container.insertBefore(draggable, afterElement);
                    });
                  });
                })();
              </script>
              <script>
                function editCateName(e) {
                  console.log("수정");
                  const parent = e.target.parentNode.parentNode;
                  const input = parent.querySelector(".cate-name");
                  input.removeAttribute("readonly");
                  input.classList.add("border");
                  e.target.classList.toggle("hidden");
                  const finishBtn = parent.querySelector(".finish-btn");
                  finishBtn.classList.toggle("hidden");
                }

                function finishCateName(e) {
                  console.log("완료");
                  const parent = e.target.parentNode.parentNode;
                  e.target.classList.toggle("hidden");
                  const editBtn = parent.querySelector(".edit-btn");
                  editBtn.classList.toggle("hidden");
                  const input = parent.querySelector(".cate-name");
                  input.classList.remove("border");
                  input.setAttribute("readonly", "true");
                }

                function addCate() {
                  const container = document.querySelector(".container");

                  container.innerHTML +=
                    '<div class="draggable drag-box" draggable="true">' +
                    '<span class="ico-drag"></span>' +
                    '<div class="el space-between drag-box-inner">' +
                    "<div>" +
                    '<i class="fa-solid fa-bars"></i>' +
                    '<input type="text" value="게시판" name="cateName" class="cate-name" readonly /><input type="hidden" name="cateNo" value="new">' +
                    "</div>" +
                    "<div>" +
                    '<input type="button" value="수정" class="manage-btn edit-btn" onclick="editCateName(event)" />' +
                    '<input type="button" value="완료" class="manage-btn hidden finish-btn" onclick="finishCateName(event)" />' +
                    '<input type="button" value="삭제" class="manage-btn" onclick="deleteCate(event)"/>' +
                    "</div>" +
                    "</div></div>";
                }

                function deleteCate(e) {
                  e.target.parentNode.parentNode.parentNode.remove();
                }
              </script>
            </section>
            <div class="btn-area">
              <input
                type="button"
                value="카테고리 추가"
                class="cate-btn"
                onclick="addCate()"
              />
              <input type="submit" value="저장하기" class="cate-btn" />
            </div>
          </div>
        </article>
      </form>
    </main>
  </body>
</html>

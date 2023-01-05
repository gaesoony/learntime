<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
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

    /* 검색부분 */

    .wrapper {
      padding: 20px 20px;
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
      margin-right: 6px;
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

      outline: none;
      padding: 0px 5px;
      cursor: pointer;
      color: #5ecc80;
    }

    .delete-btn {
      width: 90px;
      height: 35px;
      border: 1px solid red;
      outline: none;
      background-color: #ffffff;
      color: rgb(235, 19, 19);
      cursor: pointer;
      margin-left: 5px;
    }

    /* 게시판 목록 부분 */

    .content-section {
      background-color: white;
      border: 1px solid rgb(221, 221, 221);
    }

    .content-section-top {
      padding: 20px 30px;
      font-weight: 700;
      font-size: 15px;
    }

    .grid {
      display: grid;
      grid-template-columns: 0.7fr 0.8fr 5fr repeat(2, 1.5fr) repeat(6, 0.8fr);
      margin-bottom: 5px;
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

    .relative {
      position: relative;
    }

    .main1 i,
    .main2 i {
      position: absolute;
      top: 22px;
      right: 11px;
      font-size: 16px;
      color: gray;
    }

    /* paging */
    #paging {
      display: flex;

      justify-content: center;
      align-items: center;
      margin-top: 40px;
      margin-bottom: 100px;
    }

    .paging-btn {
      height: 25px;
      width: 25px;
      border: 1px solid #aeaeae;
      border-radius: 2px;
      text-align: center;
      line-height: 24px;
      color: #535353;
      cursor: pointer;
    }

    .paging-btn:nth-child(n + 1) {
      margin-left: 5px;
    }

    .paging-btn:hover {
      background-color: #58c079;
      color: white;
    }

    #next-btn,
    #prev-btn {
      width: 40px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">
        <a href="${path}/admin/study/list?pno=1"> 스터디/프로젝트 </a>
      </div>
      <div class="wrapper">
        <form id="form" action="${path}/admin/study/list" method="get">
          <input type="hidden" value="${pno}" name="pno" />
          <section class="search-section space-between">
            <div class="relative">
              <i class="fa-solid fa-magnifying-glass"></i>
              <input
                type="text"
                placeholder="내용을 입력해주세요"
                class="search-box"
                name="keyword"
              /><select name="category" id="" class="select-box">
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="writer">모임장</option>
              </select>
              <select name="status" id="" class="select-box">
                <option value="total">전체</option>
                <option value="enable">공개</option>
                <option value="delete">삭제</option>
                <option value="disable">비활성화</option>
              </select>
            </div>
          </section>
        </form>
        <form
          action="${path}/admin/study/list/delete"
          method="post"
          id="delete-group-form"
        >
          <input type="hidden" value="${pno}" name="pno" />
          <input type="hidden" value="${keyword}" name="keyword" />
          <input type="hidden" value="${category}" name="category" />
          <input type="hidden" value="${status}" name="status" />
          <section class="content-section">
            <div class="content-section-top">
              <span>전체 게시글</span>
              <span class="main-color">${listCount}</span>
              <span>개</span>
            </div>
            <div class="grid">
              <div class="grid-title">
                <input
                  type="checkbox"
                  name="group1"
                  value="selectAll"
                  onclick="selectAll(this)"
                />
              </div>
              <div class="grid-title">번호</div>
              <div class="grid-title">제목</div>
              <div class="grid-title">모임장</div>
              <div class="grid-title">작성일시</div>
              <div class="grid-title">조회수</div>
              <div class="grid-title">댓글수</div>
              <div class="grid-title">스크랩수</div>
              <div class="grid-title">좋아요수</div>
              <div class="grid-title">마감여부</div>
              <div class="grid-title">상태</div>

              <c:forEach items="${groupList}" var="map">
                <fmt:parseNumber value="${map.LIKE_CNT}" var="LIKE_CNT_NUM" />
                <div>
                  <input type="checkbox" name="group" value="${map.NO}" />
                </div>
                <div>${map.NO}</div>
                <div>
                  <a
                    href="${pageContext.request.contextPath}/admin/study/detail"
                    >${map.TITLE}</a
                  >
                </div>
                <div>
                  <a href="/app/mystudy/board/detail">${map.REP_NICK}</a>
                </div>
                <div>${map.ENROLL_DATE}</div>
                <div>${map.HIT}</div>
                <div>${map.CMT_CNT}</div>
                <div>${map.SCRAP_CNT}</div>
                <div>${map.LIKE_CNT}</div>
                <c:if test="${map.CLOSING_YN == 'N'}">
                  <div>모집중</div>
                </c:if>
                <c:if test="${map.CLOSING_YN == 'Y'}">
                  <div>마감</div>
                </c:if>
                <c:if test="${map.DELETE_YN == 'Y' && LIKE_CNT_NUM > -10}">
                  <div>삭제</div>
                </c:if>
                <c:if test="${map.DELETE_YN == 'N' && LIKE_CNT_NUM > -10}">
                  <div>공개</div>
                </c:if>
                <c:if test="${LIKE_CNT_NUM <= -10}">
                  <div>비활성화</div>
                </c:if>
              </c:forEach>
            </div>
            <section>
              <input type="button" value="선택삭제" class="delete-btn" />
            </section>
            <div id="paging">
              <c:if test="${pv.startPage != 1}">
                <div class="paging-btn" id="prev-btn">
                  <a
                    href="${path}/admin/study/list?keyword=${keyword}&category=${category}&status=${status}&pno=${pv.startPage - 1}"
                    >이전</a
                  >
                </div>
              </c:if>
              <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
                <div class="paging-btn">
                  <a
                    href="${path}/admin/study/list?keyword=${keyword}&category=${category}&status=${status}&pno=${i}"
                    >${i}</a
                  >
                </div>
              </c:forEach>
              <c:if test="${pv.endPage < pv.maxPage}">
                <div class="paging-btn" id="next-btn">
                  <a
                    href="${path}/admin/study/list?keyword=${keyword}&category=${category}&status=${status}&pno=${pv.startPage + 1}"
                    >다음</a
                  >
                </div>
              </c:if>
            </div>
          </section>
        </form>
      </div>
    </div>

    <script>
      const category = document.querySelector("select[name=category]");
      category.addEventListener("change", function () {
        const form = document.querySelector("#form");
        form.submit();
      });

      const status = document.querySelector("select[name=status]");
      status.addEventListener("change", function () {
        const form = document.querySelector("#form");
        form.submit();
      });
    </script>
    <script>
      //검색어, category, status 검색후에도 유지시키기
      //검색어
      const keywordInput = document.querySelector("input[name=keyword]");

      if ("${keyword}" != null) {
        console.log("들어옴??");
        keywordInput.value = "${keyword}";
      }

      //카테고리
      const categoryArr = document.querySelectorAll(
        "select[name=category] option"
      );
      const categoryStr = "${category}";
      for (let i = 0; i < categoryArr.length; i++) {
        const x = categoryArr[i].value;
        if (x == categoryStr) {
          categoryArr[i].selected = true;
        }
      }
      //status
      const statusArr = document.querySelectorAll("select[name=status] option");
      const statusStr = "${status}";
      for (let i = 0; i < statusArr.length; i++) {
        const x = statusArr[i].value;
        if (x == statusStr) {
          statusArr[i].selected = true;
        }
      }
    </script>
    <script>
      // 전체선택
      function selectAll(selectAll) {
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');

        checkboxes.forEach((checkbox) => {
          checkbox.checked = selectAll.checked;
        });
      }
    </script>
    <script>
      //선택한거 삭제
      const deleteBtn = document.querySelector(".delete-btn");
      deleteBtn.addEventListener("click", function () {
        // const groupList = document.querySelectorAll("input[name=group]");
        // const valueArr = new Array();
        // groupList.forEach((o) => {
        //   if (o.checked) {
        //     valueArr.push(o.value);
        //   }
        // });

        Swal.fire({
          title: "삭제하시겠습니까?",
          icon: "warning",
          showCancelButton: true,
          confirmButtonColor: "#5ecc80",
          cancelButtonColor: "#d33",
          confirmButtonText: "삭제",
          cancelButtonText: "취소",
        }).then((result) => {
          if (result.isConfirmed) {
            const deleteGroupForm =
              document.querySelector("#delete-group-form");
            deleteGroupForm.submit();

            // $.ajax({
            //   url: "${path}/admin/study/list/delete",
            //   type: "post",
            //   data: { valueArr: valueArr },
            //   success: function () {
            //     Swal.fire("삭제되었습니다");
            //   },
            //   error: function () {
            //     alert("에러가 발생했습니다.");
            //   },
            // });
          }
        });
      });
    </script>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

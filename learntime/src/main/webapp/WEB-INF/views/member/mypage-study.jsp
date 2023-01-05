<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | MY PAGE</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"
    />
    <link
      rel="stylesheet"
      href="${path}/resources/css/study/mypage-study.css"
    />
  </head>
  <body>
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <form id="mypage-form" action="${path}/member/mypage/study" method="get">
      <input type="hidden" name="mno" value="${loginMember.no}" />
      <input type="hidden" name="pno" value="1" />
      <div id="mypage-box">
        <div id="mypage">
          <div id="bin">
            <%@include file="/WEB-INF/views/common/mypage-side.jsp"%>
          </div>
          <div id="home-area">
            <ul class="category-list flex bold700">
              <li class="category relative">
                <label>
                  <input type="radio" name="details" value="apply" />
                  <div class="apply cate">가입 신청 내역</div>
                  <!-- <div class="bar"></div> -->
                </label>
              </li>
              <li class="category relative">
                <label>
                  <input type="radio" name="details" value="participate" />
                  <div class="participate cate">참여중인 모임</div>
                  <!-- <div class="bar"></div> -->
                </label>
              </li>
              <li class="category relative">
                <label>
                  <input type="radio" name="details" value="manage" />
                  <div class="manage cate">운영중인 모임</div>
                  <!-- <div class="bar"></div> -->
                </label>
              </li>
              <li class="category relative">
                <label>
                  <input type="radio" name="details" value="scrap" />
                  <div class="scrap cate">스크랩</div>
                  <!-- <div class="bar"></div> -->
                </label>
              </li>
            </ul>
            <section>
              <c:if test="${details == 'apply'}">
                <div class="grid">
                  <div class="grid-div bold700">번호</div>
                  <div class="grid-div bold700">제목</div>
                  <div class="grid-div bold700">모임장</div>
                  <div class="grid-div bold700">신청일시</div>
                  <div class="grid-div bold700">가입상태</div>
                  <c:forEach items="${myList}" var="map" varStatus="status">
                    <div class="grid-div">${status.index + 1}</div>
                    <div class="grid-div">
                      <a href="${path}/study/detail?gno=${map.G_NO}">
                        ${map.TITLE}</a
                      >
                    </div>
                    <div class="grid-div">${map.REP}</div>
                    <div class="grid-div">${map.ENROLL_DATE}</div>
                    <c:if test="${map.STATUS == 'A'}">
                      <div class="grid-div">대기</div>
                    </c:if>
                    <c:if test="${map.STATUS == 'C'}">
                      <div class="grid-div">승인</div>
                    </c:if>
                    <c:if test="${map.STATUS == 'D'}">
                      <div class="grid-div">거절</div>
                    </c:if>
                    <c:if test="${map.STATUS == 'E'}">
                      <div class="grid-div">강퇴</div>
                    </c:if>
                    <c:if test="${map.STATUS == 'F'}">
                      <div class="grid-div">탈퇴</div>
                    </c:if>
                  </c:forEach>
                </div>
                <div id="paging">
                  <c:if test="${pv.startPage != 1}">
                    <div class="paging-btn" id="prev-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage - 1}"
                        >이전</a
                      >
                    </div>
                  </c:if>
                  <c:forEach
                    var="i"
                    begin="${pv.startPage}"
                    end="${pv.endPage}"
                  >
                    <div class="paging-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${i}"
                        >${i}</a
                      >
                    </div>
                  </c:forEach>
                  <c:if test="${pv.endPage < pv.maxPage}">
                    <div class="paging-btn" id="next-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage + 1}"
                        >다음</a
                      >
                    </div>
                  </c:if>
                </div>
              </c:if>
              <c:if test="${details == 'participate'}">
                <div class="grid">
                  <div class="grid-div bold700">번호</div>
                  <div class="grid-div bold700">제목</div>
                  <div class="grid-div bold700">모임장</div>
                  <div class="grid-div bold700">신청일시</div>
                  <div class="grid-div bold700">가입상태</div>
                  <c:forEach items="${myList}" var="map" varStatus="status">
                    <div class="grid-div">${status.index + 1}</div>
                    <div class="grid-div">
                      <a href="${path}/study/detail?gno=${map.G_NO}">
                        ${map.TITLE}</a
                      >
                    </div>
                    <div class="grid-div">${map.REP}</div>
                    <div class="grid-div">${map.ENROLL_DATE}</div>

                    <c:if test="${map.STATUS == 'C'}">
                      <div class="grid-div">승인</div>
                    </c:if>
                  </c:forEach>
                </div>
                <div id="paging">
                  <c:if test="${pv.startPage != 1}">
                    <div class="paging-btn" id="prev-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage - 1}"
                        >이전</a
                      >
                    </div>
                  </c:if>
                  <c:forEach
                    var="i"
                    begin="${pv.startPage}"
                    end="${pv.endPage}"
                  >
                    <div class="paging-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${i}"
                        >${i}</a
                      >
                    </div>
                  </c:forEach>
                  <c:if test="${pv.endPage < pv.maxPage}">
                    <div class="paging-btn" id="next-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage + 1}"
                        >다음</a
                      >
                    </div>
                  </c:if>
                </div>
              </c:if>
              <c:if test="${details == 'manage'}">
                <div class="grid">
                  <div class="grid-div bold700">번호</div>
                  <div class="grid-div bold700">제목</div>
                  <div class="grid-div bold700">모임장</div>
                  <div class="grid-div bold700">신청일시</div>
                  <div class="grid-div bold700">가입상태</div>
                  <c:forEach items="${myList}" var="map" varStatus="status">
                    <div class="grid-div">${status.index + 1}</div>
                    <div class="grid-div">
                      <a href="${path}/study/detail?gno=${map.G_NO}">
                        ${map.TITLE}</a
                      >
                    </div>
                    <div class="grid-div">${map.REP}</div>
                    <div class="grid-div">${map.ENROLL_DATE}</div>
                    <c:if test="${map.STATUS == 'B'}">
                      <div class="grid-div">모임장</div>
                    </c:if>
                  </c:forEach>
                </div>
                <div id="paging">
                  <c:if test="${pv.startPage != 1}">
                    <div class="paging-btn" id="prev-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage - 1}"
                        >이전</a
                      >
                    </div>
                  </c:if>
                  <c:forEach
                    var="i"
                    begin="${pv.startPage}"
                    end="${pv.endPage}"
                  >
                    <div class="paging-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${i}"
                        >${i}</a
                      >
                    </div>
                  </c:forEach>
                  <c:if test="${pv.endPage < pv.maxPage}">
                    <div class="paging-btn" id="next-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage + 1}"
                        >다음</a
                      >
                    </div>
                  </c:if>
                </div>
              </c:if>
              <c:if test="${details == 'scrap'}">
                <div class="grid2">
                  <div class="grid-div bold700">번호</div>
                  <div class="grid-div bold700">모집구분</div>
                  <div class="grid-div bold700">모집유형</div>
                  <div class="grid-div bold700">제목</div>
                  <div class="grid-div bold700">모임장</div>
                  <div class="grid-div bold700">마감여부</div>

                  <c:forEach items="${myList}" var="map" varStatus="status">
                    <div class="grid-div">${status.index + 1}</div>
                    <div class="grid-div">${map.TYPE}</div>
                    <div class="grid-div">${map.WAY}</div>
                    <div class="grid-div">
                      <a href="${path}/study/detail?gno=${map.NO}">
                        ${map.TITLE}</a
                      >
                    </div>
                    <div class="grid-div">${map.REP}</div>
                    <c:if test="${map.CLOSING_YN == 'N'}">
                      <div class="grid-div">모집중</div>
                    </c:if>
                    <c:if test="${map.CLOSING_YN == 'Y'}">
                      <div class="grid-div">마감</div>
                    </c:if>
                  </c:forEach>
                </div>
                <div id="paging">
                  <c:if test="${pv.startPage != 1}">
                    <div class="paging-btn" id="prev-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage - 1}"
                        >이전</a
                      >
                    </div>
                  </c:if>
                  <c:forEach
                    var="i"
                    begin="${pv.startPage}"
                    end="${pv.endPage}"
                  >
                    <div class="paging-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${i}"
                        >${i}</a
                      >
                    </div>
                  </c:forEach>
                  <c:if test="${pv.endPage < pv.maxPage}">
                    <div class="paging-btn" id="next-btn">
                      <a
                        href="${path}/member/mypage/study?details=${details}&mno=${loginMember.no}&pno=${pv.startPage + 1}"
                        >다음</a
                      >
                    </div>
                  </c:if>
                </div>
              </c:if>
            </section>
            <section class="search-section center">
              <div class="relative">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input
                  type="text"
                  placeholder="내용을 입력해주세요"
                  class="search-box"
                  name="keyword"
                /><select name="status" id="" class="select-box">
                  <option value="title">제목</option>
                  <option value="content">내용</option>
                </select>
              </div>
            </section>
          </div>
        </div>
      </div>
    </form>
    <%@include file="/WEB-INF/views/common/footer2.jsp" %>
    <script>
      const category = document.querySelectorAll(".category");

      //화면이 로드되었을 때 기본으로 인기 항목이 체크되어있으므로
      //이미 체크된 항목의 bar 길이 할당
      // category.forEach((o) => {
      //   if (o.querySelector("input").checked) {
      //     const barWidth = o.querySelector("label").offsetWidth;
      //     o.querySelector(".bar").style.width = barWidth + "px";
      //   }
      // });

      // //항목이 체크되면 bar 길이 할당
      // category.forEach((o) => {
      //   o.querySelector("label").addEventListener("click", (e) => {
      //     const barWidth = e.currentTarget.offsetWidth;
      //     o.querySelector(".bar").style.width = barWidth + "px";
      //   });
      // });

      const details = document.querySelectorAll("input[name=details]");

      details.forEach((o) => {
        o.addEventListener("click", function () {
          document.querySelector("#mypage-form").submit();
        });
      });

      category.forEach((o) => {
        if (o.querySelector("input[name=details]").value == "${details}") {
          console.log(o.querySelector("input[name=details]"));
          o.querySelector("input[name=details]").checked = true;
          o.querySelector(".cate").classList.add("border-bottom");
        }
      });
    </script>
    <script>
      const category1 = document.querySelector("#my-cate div:nth-child(3) a");
      category1.classList.add("main-color");
    </script>
  </body>
</html>

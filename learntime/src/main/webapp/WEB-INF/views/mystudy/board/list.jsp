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
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/side.jsp" %>
      <form action="${path}/mystudy/board/list" method="get">
        <input type="hidden" name="ctno" value="${ctno}" />
        <input type="hidden" name="gno" value="${groupOne.NO}" />
        <input type="hidden" name="pno" value="${pno}" />

        <article class="mystudy-article">
          <div class="mystudy-board-title">${cateName}</div>
          <div>
            <section class="search-section space-between">
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
                  <option value="writer">작성자</option>
                </select>
              </div>
              <div>
                <input
                  type="button"
                  value="게시글 작성"
                  class="write-btn"
                  onclick="location.href='${path}/mystudy/board/write?ctno=${ctno}&gno=${groupOne.NO}'"
                />
              </div>
            </section>
            <section>
              <div class="grid">
                <div class="grid-title">번호</div>
                <div class="grid-title">제목</div>
                <div class="grid-title">작성자</div>
                <div class="grid-title">작성일시</div>
                <div class="grid-title">조회수</div>

                <c:forEach items="${boardList}" var="map" varStatus="status">
                  <div>${map.ROWNUM}</div>
                  <div>
                    <a
                      href="/app/mystudy/board/detail?ctno=${ctno}&gno=${groupOne.NO}&bno=${map.NO}"
                      >${map.TITLE}</a
                    ><span class="main-color">&nbsp[${map.CMT_CNT}]</span>
                  </div>
                  <div>${map.NICK}</div>
                  <div>${map.ENROLL_DATE}</div>
                  <div>${map.HIT}</div>
                </c:forEach>
              </div>
              <c:if test="${boardList.size() == 0}">
                <div class="content-none">
                  아직 게시글이 없네요. 첫 게시글을 작성해보세요!
                </div>
              </c:if>
              <div id="paging">
                <c:if test="${pv.startPage != 1}">
                  <div class="paging-btn" id="prev-btn">
                    <a
                      href="${path}/mystudy/board/list?ctno=${ctno}&gno=${groupOne.NO}&pno=${pv.startPage - 1}&keyword=${keyword}&status=${status}"
                      >이전</a
                    >
                  </div>
                </c:if>
                <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
                  <div class="paging-btn" id="${i}">
                    <a
                      href="${path}/mystudy/board/list?ctno=${ctno}&gno=${groupOne.NO}&pno=${i}&keyword=${keyword}&status=${status}"
                      >${i}</a
                    >
                  </div>
                </c:forEach>
                <c:if test="${pv.endPage < pv.maxPage}">
                  <div class="paging-btn" id="next-btn">
                    <a
                      href="${path}/mystudy/board/list?ctno=${ctno}&gno=${groupOne.NO}&pno=${pv.startPage + 1}&keyword=${keyword}&status=${status}"
                      >다음</a
                    >
                  </div>
                </c:if>
              </div>
            </section>
          </div>
        </article>
      </form>
    </main>
  </body>
</html>

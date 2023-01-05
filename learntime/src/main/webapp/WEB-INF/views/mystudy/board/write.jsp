<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/board/write.css"
    />
    <link
      href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
      rel="stylesheet"
    />

    <!-- include summernote css/js-->
    <link
      href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/side.jsp" %>
      <form
        action="${path}/mystudy/board/write?ctno=${ctno}&gno=${groupOne.NO}"
        method="post"
      >
        <article class="mystudy-article">
          <div class="mystudy-board-title">${cateName}</div>
          <div class="mystudy-board-detail">
            <section class="mystudy-board-detail-title-section">
              <input
                type="text"
                placeholder="제목을 입력하세요"
                class="mystudy-board-detail-title"
                name="title"
              />
            </section>
            <div>
              <textarea name="content" id="summernote"></textarea>
            </div>
            <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
            <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
            <script>
              $(document).ready(function () {
                //여기 아래 부분
                $("#summernote").summernote({
                  height: 500, // 에디터 높이
                  minHeight: null, // 최소 높이
                  maxHeight: null, // 최대 높이
                  focus: true, // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR", // 한글 설정
                  placeholder: "", //placeholder 설정
                });
              });
            </script>
            <div class="cancel-save-btn-area">
              <input type="button" value="취소" />
              <input type="submit" value="등록" />
            </div>
          </div>
        </article>
      </form>
    </main>
  </body>
</html>

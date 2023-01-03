<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/board/detail.css"
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

      <article class="mystudy-article">
        <div class="mystudy-board-title">${cateName}</div>
        <article class="study-detail">
          <section class="study-detail-title-area">
            <h1 class="bold700">${boardOne.TITLE}</h1>
            <div class="space-between study-detail-title-bottom">
              <div class="flex">
                <div class="user-profile">
                  <img src="/app/resources/img/study/profile.png" alt="" />
                </div>
                <div class="user-nick flex">
                  <div>${boardOne.NICK}</div>
                  <img src="/app/resources/img/study/flower.png" alt="" />
                </div>
                <div class="soft-gray study-detail-title__date">
                  | ${boardOne.ENROLL_DATE} |
                </div>
                <ul class="flex soft-gray hit-cmt-scrap">
                  <li>
                    <i class="fa-regular fa-eye"></i
                    ><span>${boardOne.HIT}</span>
                  </li>
                  <li>
                    <i class="fa-regular fa-comment-dots"></i><span>5</span>
                  </li>
                </ul>
              </div>
              <div>
                <a href="/app/mystudy/board/edit">수정</a>
                <a href="">삭제</a>
              </div>
            </div>
            <div class="study-info-content">
              <div class="study-detail-info-content">${boardOne.CONTENT}</div>
            </div>
          </section>
        </article>
        <div class="cmt-div">
          <main class="middle">
            <section class="cmt-area">
              <div class="cmt-input">
                <div class="cmt-input-top flex">
                  <img src="/app/resources/img/study/profile.png" alt="" />
                  <div class="bold700">
                    ${loginMember.nick}님, 답글을 남겨보세요!
                  </div>
                </div>
                <div class="cmt-area">
                  <textarea name="editordata" id="summernote"></textarea>
                </div>
                <div class="cmt-btn-area relative">
                  <input type="button" value="답변 등록" />
                </div>
              </div>
            </section>

            <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
            <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
            <script>
              $(document).ready(function () {
                //여기 아래 부분
                $("#summernote").summernote({
                  height: 120, // 에디터 높이
                  minHeight: null, // 최소 높이
                  maxHeight: null, // 최대 높이
                  focus: true, // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR", // 한글 설정
                  placeholder: "최대 2048자까지 쓸 수 있습니다", //placeholder 설정
                });
              });
            </script>
          </main>
        </div>
      </article>
    </main>
  </body>
</html>

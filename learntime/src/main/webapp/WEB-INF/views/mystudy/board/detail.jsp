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
        <div class="mystudy-board-title">공지 사항</div>
        <article class="study-detail">
          <section class="study-detail-title-area">
            <h1 class="bold700">[필독 공지] 공지를 꼭 읽어주세요!</h1>
            <div class="space-between study-detail-title-bottom">
              <div class="flex">
                <div class="user-profile">
                  <img src="/app/resources/img/study/profile.png" alt="" />
                </div>
                <div class="user-nick flex">
                  <div>한혜원</div>
                  <img src="/app/resources/img/study/flower.png" alt="" />
                </div>
                <div class="soft-gray study-detail-title__date">
                  | 2022.11.06 |
                </div>
                <ul class="flex soft-gray hit-cmt-scrap">
                  <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                  <li>
                    <i class="fa-regular fa-comment-dots"></i><span>5</span>
                  </li>
                  <li><i class="fa-regular fa-bookmark"></i><span>10</span></li>
                </ul>
              </div>
              <div>
                <a href="">수정</a>
                <a href="">삭제</a>
              </div>
            </div>
            <div class="study-info-content">
              <div class="study-detail-info-content">
                <p>토이프로젝트 앱개발 같이 하실분 구합니다.</p>
                <br />
                <p>사용 기술스택</p>
                <p>App: Flutter (Android, Mobile)</p>
                <p>Backend: nestjs (Typescript) Apollo client</p>
                <p>Frontend react (typescript) (view only)</p>
                <p>git: Github</p>
                <p>CI: github actions</p>
                <p>CD: GCP</p>
                <br />
                <p>
                  앱은 각정도만 잡혀 있는 상태이고 플루터 잘하시는분 환영합니다!
                </p>
                <p>
                  지금 인원은 앱 개발자:1분 PM: 1분 Devops, Backend 1분 입니다
                </p>
                <br />
                <p>
                  기존에 없던 앱을 만드는 것이라 나중에 포트폴리오 쓰실때 좋을듯
                  합니다 :)
                </p>
              </div>
            </div>
          </section>
        </article>
        <div class="cmt-div">
          <main class="middle">
            <section class="cmt-area">
              <div class="cmt-input">
                <div class="cmt-input-top flex">
                  <img src="/app/resources/img/study/profile.png" alt="" />
                  <div class="bold700">한혜원님, 답글을 남겨보세요!</div>
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

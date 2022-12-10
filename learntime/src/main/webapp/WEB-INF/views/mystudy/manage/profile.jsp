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
      .profile-info-area {
        height: 500px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }

      .profile-info-area section {
        margin-bottom: 100px;
      }

      .profile-img {
        background-color: rgb(222, 222, 222);
        border-radius: 50%;
        width: 200px;
        height: 200px;
        box-shadow: rgba(255, 255, 255, 0.1) 0px 1px 1px 0px inset,
          rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
        margin-right: 50px;
        /* border: 1px solid rgb(196, 196, 196); */
      }

      .profile-img img {
        width: 130px;
        height: 130px;
      }

      .profile-name div {
        margin-bottom: 10px;
        color: rgb(79, 79, 79);
      }

      .profile-name input {
        width: 300px;
        height: 40px;
        padding: 10px;
        color: rgb(79, 79, 79);
        border: 1px solid rgb(174, 174, 174);
        outline: none;
        font-size: 15px;
      }

      .save-btn {
        width: 100px;
        height: 40px;
        background-color: #5ecc80;
        color: white;
        border: none;
        border-radius: 3px;
      }

      .file-btn-area {
        position: absolute;
        top: 12px;
        right: 12px;
      }

      .file-btn {
        width: 40px;
        height: 40px;
        border: none;
        border-radius: 50%;
        background-color: rgb(241, 241, 241);
        cursor: pointer;
      }

      .file-btn img {
        width: 22px;
        height: 22px;
      }

      #preview {
        position: absolute;
        width: 200px;
        height: 200px;
        border-radius: 50%;
      }
    </style>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/manage-side.jsp" %>
      <article class="mystudy-article">
        <div class="mystudy-board-title">프로필 관리</div>
        <div class="profile-info-area">
          <section class="flex">
            <div class="profile-img center relative">
              <img
                src="${pageContext.request.contextPath}/resources/img/mystudy/UsersThree2.png"
                alt=""
              />
              <img
                id="preview"
                src="${pageContext.request.contextPath}/resources/img/mystudy/transparent.png"
              />
              <div class="file-btn-area">
                <label for="file" class="file-btn center"
                  ><img
                    src="${pageContext.request.contextPath}/resources/img/mystudy/image-plus.png"
                    alt=""
                /></label>
                <input
                  id="file"
                  type="file"
                  class="hidden"
                  onchange="readURL(this);"
                />

                <script>
                  function readURL(input) {
                    if (input.files && input.files[0]) {
                      var reader = new FileReader();
                      reader.onload = function (e) {
                        document.getElementById("preview").src =
                          e.target.result;
                      };
                      reader.readAsDataURL(input.files[0]);
                    } else {
                      document.getElementById("preview").src = "";
                    }
                  }
                </script>
              </div>
            </div>
            <div class="profile-name">
              <div>스터디/프로젝트 이름</div>
              <input type="text" value="한혜원님의 스터디" />
            </div>
          </section>
          <div>
            <input type="button" value="저장하기" class="save-btn" />
          </div>
        </div>
      </article>
    </main>
  </body>
</html>

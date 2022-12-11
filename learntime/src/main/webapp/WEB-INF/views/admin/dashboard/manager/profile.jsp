<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="stylesheet" href="/app/.css"> -->
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

    /* 프로필 */

    .flex {
      display: flex;
      align-items: center;
    }

    .profile-info-area {
      height: 630px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: white;
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
      width: 200px;
      height: 200px;
    }

    .profile-name div {
      margin-bottom: 10px;
      color: rgb(79, 79, 79);
    }

    .profile-name input {
      width: 300px;
      height: 20px;
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
      top: 240px;
      right: 900px;
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

    .wrapper {
      padding: 40px 200px;
    }

    .center {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hidden {
      display: none;
    }

    .cursor {
      cursor: pointer;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">관리자 프로필</div>
      <div class="wrapper">
        <div class="profile-info-area">
          <section class="flex">
            <div class="profile-img center relative">
              <img
                src="${pageContext.request.contextPath}/resources/img/profile_default.png"
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
              <div>관리자 닉네임</div>
              <input type="text" value="한혜원" />
            </div>
          </section>
          <div>
            <input type="button" value="저장하기" class="save-btn cursor" />
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

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

    /* common */
    * {
      box-sizing: border-box;
    }

    input[type="button"] {
      cursor: pointer;
    }

    .flex {
      display: flex;
      align-items: center;
    }

    .wrapper {
      padding: 40px 40px;
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

    .relative {
      position: relative;
    }

    .container {
      background-color: white;
      padding: 50px 20px;
    }

    .grid {
      display: grid;
      height: 500px;
      width: 1000px;
      grid-template-columns: 1fr 2fr;
      grid-template-rows: 1fr 1fr 4fr 1fr;

      column-gap: 40px;
      font-size: 14px;
    }

    .grid-div {
      color: gray;
      display: flex;

      /* height: 50px; */
    }

    .grid-div:nth-child(12) {
      height: 264px;
    }

    .grid-div:nth-child(2n-1) {
      display: flex;
      justify-content: flex-end;
    }

    .height {
      margin-top: 40px;
    }

    input {
      height: 20px;
      color: gray;
      border: none;
      border-bottom: 1px solid gray;
      outline: none;
      padding-bottom: 3px;
    }

    input[type="text"] {
      width: 300px;
    }

    input[type="url"] {
      width: 300px;
    }

    .padding {
      padding: 20px 0px;
    }

    input[type="radio"] {
      accent-color: rgb(39, 152, 29);
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

    .margin-right {
      margin-right: 15px;
    }

    .profile-img {
      background-color: rgb(222, 222, 222);

      width: 820px;
      height: 220px;

      margin-right: 50px;
      /* border: 1px solid rgb(196, 196, 196); */
    }

    .profile-img img {
      width: 100%;
      height: 100%;
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
      margin-right: 10px;
    }

    .cancel-btn {
      width: 100px;
      height: 40px;
      background-color: #ffffff;
      color: rgb(48, 48, 48);
      border: 1px solid gray;
    }

    .btn-area {
      margin-top: 10px;
    }

    .file-btn-area {
      position: absolute;
      top: 227px;
      right: 734px;
    }

    .file-btn {
      width: 86px;
      height: 34px;
      border: 1px solid gray;
      background-color: white;
      cursor: pointer;
      font-size: 13px;
    }

    .file-btn img {
      width: 88px;
      height: 74px;
    }

    #preview {
      position: absolute;
      width: 820px;
      height: 220px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <form
      action="${path}/admin/banner/edit"
      method="post"
      enctype="multipart/form-data"
    >
      <input type="hidden" value="${bannerOne.NO}" name="no" />
      <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">배너 수정</div>
        <div class="wrapper">
          <div class="container">
            <div class="grid">
              <div class="grid-div">제목</div>
              <div class="grid-div">
                <input
                  type="text"
                  placeholder="관리용 제목(사용자에겐 표시되지 않습니다)"
                  value="${bannerOne.TITLE}"
                  name="title"
                />
              </div>
              <div class="grid-div">기간</div>
              <div class="grid-div">
                <input
                  type="datetime-local"
                  value="${bannerOne.START_DATE}"
                  name="startDate"
                />~<input
                  type="datetime-local"
                  value="${bannerOne.END_DATE}"
                  name="endDate"
                />
              </div>

              <div class="grid-div">이미지</div>
              <div class="grid-div">
                <div class="profile-img center relative">
                  <img
                    src="${path}/resources/upload/banner/${bannerOne.IMG_PATH}"
                    alt=""
                  />
                  <img
                    id="preview"
                    src="${path}/resources/img/mystudy/transparent.png"
                  />
                  <div class="file-btn-area">
                    <label for="file" class="file-btn center">파일업로드</label>
                    <input
                      id="file"
                      type="file"
                      class="hidden"
                      name="banner"
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
              </div>
              <div class="grid-div height">이미지 링크</div>
              <div class="grid-div height">
                <input type="text" value="${bannerOne.LINK}" name="link" />
              </div>
              <div class="grid-div height">배경색</div>
              <div class="grid-div height">
                <input type="color" name="color" value="${bannerOne.COLOR}" />
              </div>
            </div>
          </div>
          <div class="flex btn-area">
            <div><input type="submit" value="저장" class="save-btn" /></div>
            <div><input type="button" value="취소" class="cancel-btn" /></div>
          </div>
        </div>
      </div>
    </form>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

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

    .relative {
      position: relative;
    }

    .container {
      background-color: white;
      padding: 50px 20px;
    }

    .grid {
      display: grid;
      height: 615px;
      width: 670px;
      grid-template-columns: 1fr 2fr;
      grid-template-rows: 1fr 1fr 1fr 1fr 1fr 4fr 1fr;

      column-gap: 40px;
      font-size: 14px;
    }

    .grid-div {
      color: gray;
      display: flex;
      align-items: center;
      height: 50px;
    }

    .grid-div:nth-child(12) {
      height: 264px;
    }

    .grid-div:nth-child(2n-1) {
      display: flex;
      justify-content: flex-end;
    }

    .height {
      height: 100px;
    }

    input {
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

      width: 320px;
      height: 220px;

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
      right: 234px;
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
      width: 320px;
      height: 220px;
    }
  </style>
  <body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
      <div id="admin-category-title" class="shadow-light">팝업 수정</div>
      <div class="wrapper">
        <div class="container">
          <div class="grid">
            <div class="grid-div">제목</div>
            <div class="grid-div">
              <input
                type="text"
                placeholder="관리용 제목(사용자에겐 표시되지 않습니다)"
              />
            </div>
            <div class="grid-div">기간</div>
            <div class="grid-div">
              <input type="datetime-local" />~<input type="datetime-local" />
            </div>
            <div class="grid-div">적용 조건</div>
            <div class="grid-div flex">
              <div class="margin-right">
                <label><input type="radio" name="visitor" />모든 방문자</label>
              </div>
              <div>
                <label
                  ><input type="radio" name="visitor" />로그인 방문자</label
                >
              </div>
            </div>
            <div class="grid-div">우측 상단 닫기 설정</div>
            <div class="grid-div">
              <div class="margin-right">
                <label><input type="radio" name="close" />닫기</label>
              </div>
              <div class="margin-right">
                <label
                  ><input type="radio" name="close" />오늘 하루 다시 보지
                  않기</label
                >
              </div>
              <div>
                <label><input type="radio" name="close" />표시안함</label>
              </div>
            </div>
            <div class="grid-div">PC 팝업 위치</div>
            <div class="grid-div">
              <div class="margin-right">
                <label><input type="radio" name="location" />가운데</label>
              </div>
              <div class="margin-right">
                <label><input type="radio" name="location" />좌측 상단</label>
              </div>
            </div>
            <div class="grid-div">이미지</div>
            <div class="grid-div padding">
              <div class="profile-img center relative">
                <img
                  id="preview"
                  src="${pageContext.request.contextPath}/resources/img/mystudy/transparent.png"
                />
                <div class="file-btn-area">
                  <label for="file" class="file-btn center">파일업로드</label>
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
            </div>
            <div class="grid-div height">이미지 링크</div>
            <div class="grid-div height"><input type="url" /></div>
          </div>
        </div>
        <div class="flex btn-area">
          <div><input type="button" value="저장" class="save-btn" /></div>
          <div><input type="button" value="취소" class="cancel-btn" /></div>
        </div>
      </div>
    </div>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

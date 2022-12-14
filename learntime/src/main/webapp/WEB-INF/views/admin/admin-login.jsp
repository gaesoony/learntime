<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LEARN TIME | 관리자 로그인</title>
    <link rel="stylesheet" href="${path}/resources/css/reset.css" />
    <style>
      #admin-page {
        width: 100vw;
        height: 100vh;
        background-color: #454545;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      #login-area {
        width: 320px;
        height: 370px;
        margin: auto;
        display: grid;
        justify-items: center;
        align-items: center;

        grid-template-rows: 150px;
      }

      #logo-img img {
        width: 150px;
      }

      #title {
        height: 30px;
        font-weight: 600;
        display: flex;
        justify-content: center;
        letter-spacing: 5px;
        color: #ffffff;
      }

      .inputbox {
        width: 292px;
        height: 20px;
        padding: 14px;
        border-radius: 4px;
        border: 1px solid #d9d9d9;
      }

      .login-btn {
        background: inherit;
        border: none;
        box-shadow: none;
        border-radius: 0;
        padding: 0;
        overflow: visible;
        cursor: pointer;

        width: 320px;
        height: 48px;
        border-radius: 4px;
        border: 0.5px solid #ffffff;
        background-color: #454545;
        color: #ffffff;
      }
    </style>
  </head>
  <body>
    <div id="admin-page">
      <div id="login-area">
        <div id="logo-img">
          <img src="${path}/resources/img/logo_green1.png" alt="로고" />
        </div>

        <form action="${path}/admin/manager/login" method="POST">
          <div id="title">ADMIN LOGIN</div>
          <div>
            <input
              class="inputbox"
              type="text"
              name="id"
              placeholder="이메일"
            />
          </div>
          <br />
          <div>
            <input
              class="inputbox"
              type="password"
              name="pwd"
              autocomplete="off"
              placeholder="비밀번호"
            />
          </div>
          <br />

          <button type="submit" class="login-btn">로그인</button>
        </form>
      </div>
    </div>
  </body>
</html>

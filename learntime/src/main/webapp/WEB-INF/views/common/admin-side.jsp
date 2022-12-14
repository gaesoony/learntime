<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<% String alertMsg =(String)session.getAttribute("alertMsg");
session.removeAttribute("alertMsg"); %>

<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common.css" />
<link rel="stylesheet" href="${path}/resources/css/admin.css" />
<link rel="stylesheet" href="${path}/resources/css/variables.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 구글 아이콘 -->
<link
  rel="stylesheet"
  href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
/>
<!-- 폰트 어썸 -->
<script
  src="https://kit.fontawesome.com/939838bb27.js"
  crossorigin="anonymous"
></script>
<!-- 스윗 알람2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<div class="side-bar">
  <div class="logo-box">
    <a href="/app/main">
      <img
        id="logo"
        src="${path}/resources/img/logo_green1.png"
        alt="learntime-logo"
      />
    </a>
  </div>
  <div class="admin-profile-box">
    <div id="admin-profile">
      <div id="profile-img">
        <c:if test="${loginManager.imgPath == null}">
          <img src="${path}/resources/img/profile_default.png" alt="" />
        </c:if>
        <c:if test="${loginManager.imgPath != null}">
          <img
            src="${path}/resources/upload/manager/profile/${loginManager.imgPath}"
            alt=""
          />
        </c:if>
      </div>
      <div id="profile-content">
        <div id="welcome">Welcome,</div>
        <div id="admin-name">${loginManager.nick}님</div>
        <div id="login-date">최근 로그인 ${loginManager.accessTime}</div>
      </div>
      <div id="admin-config">
        <span
          id="config-icon"
          class="material-symbols-rounded"
          onclick="location.href='${path}/admin/dashboard/manager/profile'"
        >
          settings
        </span>
      </div>
    </div>
    <div id="logout" onclick="location.href='${path}/admin/manager/logout'">
      log out
    </div>
  </div>
  <div class="menu sub_menu" id="sub-menu">
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">grid_view</span>
        <span><a href="${path}/admin/dashboard">대시 보드</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">account_circle</span>
        <span>회원 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a
            href="${path}/admin/member/manage?pno=1"
            >회원 목록</a
          >
        </li>
        <li>
          <a href="${path}/admin/member/grade">회원 등급</a>
        </li>
      </ul>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">groups</span>
        <span>스터디/프로젝트 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="${path}/admin/study/list?pno=1">스터디/프로젝트 목록</a>
        </li>
        <li>
          <a href="${path}/admin/study/setting">환경 설정</a>
        </li>
      </ul>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">school</span>
        <span>지식인 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="${path}/admin/qna/list">러닝 목록</a>
        </li>
        <li>
          <a href="${path}/admin/qna/detail">러닝 세부사항</a>
        </li>
      </ul>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">edit</span>
        <span>공부인증 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="${path}/admin/makegrass/list">잔디심기 목록</a>
        </li>
        <li>
          <a href="${path}/admin/makegrass/detail">잔디심기 세부사항</a>
        </li>
      </ul>
    </ul>
    <!-- <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">co_present</span>
        <span>멘토링 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="">멘토링 목록</a>
        </li>
        <li>
          <a href="">멘토링 후기</a>
        </li>
      </ul>
    </ul> -->
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">forum</span>
        <span>자유게시판 관리</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="${path}/admin/community/list">게시물 관리</a>
        </li>
        <li><a href="#">댓글 관리</a></li>
      </ul>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">notifications</span>
        <span
          ><a href="${path}/admin/notice/noticeListAdmin"
            >공지사항 관리</a
          ></span
        >
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">quiz</span>
        <span><a href="${path}/admin/faq/faqListAd">FAQ 관리</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">contact_support</span>
        <span
          ><a href="${path}/admin/question/qListAd">문의 게시판 관리</a></span
        >
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">storefront</span>
        <span><a href="${path}/admin/skinshop/list">스킨샵 관리</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">local_police</span>
        <span><a href="${path}/admin/badge/list">뱃지 관리</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">smart_button</span>
        <span><a href="${path}/admin/banner/list">배너 관리</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">backup_table</span>
        <span><a href="${path}/admin/popup/list">팝업 관리</a></span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
    </ul>
    <ul class="big_menu">
      <li>
        <span class="material-symbols-rounded">pie_chart</span>
        <span>통계</span>
        <span class="material-symbols-rounded arrow-icon">arrow_drop_down</span>
      </li>
      <ul class="small_menu">
        <li>
          <a href="${path}/admin/statistics/study">스터디/프로젝트</a>
        </li>
        <li>
          <a href="${path}/admin/statistics/mentoring">멘토링</a>
        </li>
        <li>
          <a href="${path}/admin/statistics/learning">지식인</a>
        </li>
        <li>
          <a href="${path}/admin/statistics/makegrass">공부인증</a>
        </li>
      </ul>
    </ul>
  </div>
</div>
<!---->
<!-- 아코디언 메뉴 -->
<script>
  $(function () {
    // 소메뉴 드랍
    $(".sub_menu ul.small_menu").hide();
    $(".big_menu>li").click(function () {
      $(".sub_menu ul.small_menu").not($(this).next()).slideUp(200);
      $(this).next().slideToggle(200);
    });
  });
</script>

<!-- 사이드 스크롤바 -->
<script>
  window.addEventListener("resize", function () {
    // console.log(window.innerHeight);
    const menu = document.querySelector("#sub-menu");
    // console.log(menu);
    menu.style.height = window.innerHeight - 340 + "px";
  });
  // console.log(window.innerHeight);
  const menu = document.querySelector("#sub-menu");
  menu.style.height = window.innerHeight - 340 + "px";
</script>

<!-- 스몰메뉴 없으면 아래 아이콘 없애기 -->
<script>
  $(function () {
    $(".big_menu>li").each(function () {
      if ($(this).next().length == 0) {
        $(this).children(".arrow-icon").hide();
      }
    });
  });
</script>
<!-- 스윗 알람 -->
<script>
  <%if(alertMsg != null) {%>
    Swal.fire('<%= alertMsg%>')
  <%}%>
</script>

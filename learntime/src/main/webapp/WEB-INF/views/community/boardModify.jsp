<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/boardWrite.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<!-- 서머노트 -->
<script src="/app/resources/js/summernote/summernote-lite.js"></script>
<script src="/app/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	
	<div id="board-banner">
		<img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
	</div>
   
    <div id="main-wrap">
        <form action="">

        <div id="cate-txt">카테고리</div>
        <div id="cate-select-box">
            <select name="" id="" disabled>
                <option value="" disabled selected>카테고리를 선택해주세요</option>
                <option value="cate1">카테고리1</option>
                <option value="cate2">카테고리2</option>
                <option value="cate3">카테고리3</option>
            </select>
        </div>
        <div id="title-txt">제목</div>
        <div id="title-input-box">
            <input type="text" placeholder="제목을 입력해주세요">
        </div>
        <div id="content-txt">내용</div>
        <textarea name="" id="" cols="30" rows="10" placeholder="api적용 할 예정입니다.. :)"></textarea>

        <div id="btn-box">
            <div id="cancel-btn">취소</div>
            <input id="write-btn" type="submit" value="등록">
        </div>
        
        </form>
    </div>


    <%@include file ="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>
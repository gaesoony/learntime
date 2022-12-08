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

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<title>Insert title here</title>

</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	
	<div id="board-banner">
		<img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
	</div>
   
    <div id="main-wrap">
        <form action="" method="post">

        <div id="main-title">
            <span id="nickname">NickName</span>
            <span>님의</span>
            <span id="think">생각</span>
            <span>을 자유롭게 공유해주세요</span>
        </div>
        <div id="cate-txt">카테고리</div>
        <div id="cate-select-box">
            <select name="" id="" required>
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
        <textarea id="summernote" name="editordata"></textarea>

        <div id="btn-box">
            <div id="cancel-btn">취소</div>
            <input id="write-btn" type="submit" value="등록">
        </div>
        
        </form>
    </div>

    <script>
        // 메인화면 페이지 로드 함수
        $(document).ready(function() {
            $('#summernote').summernote({
                placeholder: '내용을 작성하세요',
                height: 400,
                maxHeight: 400
            });
        });
        </script>

    <%@include file ="/WEB-INF/views/common/footer.jsp" %>

</body>





</html>
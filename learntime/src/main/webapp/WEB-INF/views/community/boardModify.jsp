<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/community/boardWrite.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div id="board-banner">
		<img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
	</div>
    <div id="main-wrap">
        <form action="${pageContext.request.contextPath}/community/board/modify" method="post">
        <div id="cate-txt">카테고리</div>
        <div id="cate-select-box">
            <select name="cateNo" id="">
                <option value="" disabled selected>카테고리를 선택해주세요</option>
                <!-- 카테고리 받아오기 -->
                <c:forEach var="cate" items="${cateList}">
                <option value="${cate.no}">${cate.name}</option>
                </c:forEach>
            </select>
        </div>
        <div id="title-txt">제목</div>
        <div id="title-input-box">
            <input type="text" name="title" value="${bv.title}">
        </div>
        <div id="content-txt">내용</div>
        <textarea class="summernote" name="content">${bv.content}</textarea>

        <div id="btn-box">
            <div id="cancel-btn">취소</div>
            <input type="hidden" name="no" value="${bv.no}">
            <input id="write-btn" type="submit" value="등록">
        </div>
        </form>
    </div>

    <%@include file ="/WEB-INF/views/common/footer.jsp" %>
    <!-- 서머노트 로딩-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            lang: "ko-KR"
        });
    </script>

    <script>
        // 카테고리 선택
        var cateNo = ${bv.cateNo};
        $("#cate-select-box select option:eq("+cateNo+")").attr("selected", "selected");
    </script>

</body>
</html>
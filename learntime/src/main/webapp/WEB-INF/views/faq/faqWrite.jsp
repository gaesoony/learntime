<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/faq/faqWrite.css">
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<div class="list-main">
    <div class="banner-section">
        <div class="banner">
            <div id="banner-title1"><span>FAQ</span></div>
            <div id="banner-title2"><span>무엇을 도와드릴까요?</span></div>
        </div>
    </div>
    <div class="faq-detail-list">
        <div class="faq-sign">
            <div class="line1">
                <div class="line-a"></div>
            </div>
            <div class="name-faq">FAQ</div>
            <div class="line2">
                <div class="line-b"></div>
            </div>
        </div>
        <div class="faq-title-date">
            <div class="category-faq">멘토링</div>
            <div class="title-faq"></div>
            <div class="date-faq"></div>
        </div>
        <div class="empty1"></div>
        <div class="faq-content">
            <textarea class="summernote" name="editordata"></textarea>
        </div>
        <div class="backBtn">
            <div class="btn-to">수정</div>
            <div class="btn-to">삭제</div>
            <div class="btn-to">글목록</div>
        </div>
    </div>
</div>






<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR",
            disableResizeEditor: true
        });
    </script>

</body>
</html>
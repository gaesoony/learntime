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

<form action="/app/faq/faqWrite" method="post">
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
	        	<select name="cateNo" id="categories">
                    <option value="1">전체</option>
                    <option value="2">스터디</option>
                    <option value="3">공부인증</option>
                    <option value="4">Q&A</option>
                    <option value="5">멘토링</option>
                    <option value="6">커뮤니티</option>
                    <option value="7">스킨샵</option>
                </select>
	            <div class="category-faq"></div>
	            <input type="text" name="title" class="title-input" size="100"/>
	            <div class="title-faq"></div>
	            <div class="date-faq"></div>
	        </div>
	        <div class="empty1"></div>
	        <div class="faq-content">
	            <textarea class="summernote" name="content"></textarea>
	        </div>
	        <div class="backBtn">
	            <div class="btn-to"><input type="submit" value="등록" class="faqWrite-input"></div>
	            <a href="/app/faq/faqList?p=1&cateNo=0"><div class="btn-to">글목록</div></a>
	        </div>
	    </div>
	</div>
</form>






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
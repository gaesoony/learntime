<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/qDetailList.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<form action="" method="get">
	<div class="list-main-m">
    <div class="q-detail-list-m">
        <div class="q-sign-m">
            <div class="line1-m">
                <div class="line-a-m"></div>
            </div>
            <div class="name-q-m">1:1 문의게시판 </div>
            <div class="line2-m">
                <div class="line-b-m"></div>
            </div>
        </div>
        <div class="q-title-date-m">
            <div class="gathering-divs-d">
                <div class="q-title-cate">
                    <div class="category-q-m" name="name">${vo.cateName}</div>
                    <div class="title-q-m " name="title">${vo.title}</div>
                </div>
                <div class="q-enrollDate-comment">
                    <div class="q-nick" name="writer">${vo.writer}</div>
                    <div class="date-q-m" name="enrollDate">${vo.enrollDate}</div>
                </div>
            </div>
        </div>
        <div class="empty1-m"></div>
        <div class="q-content-m" name="content">${vo.content}</div>
        <div class="backBtn-m">
            <a href="/app/question/qDetailListModify"><div class="btn-to-m" id="btn-modify">수정</div></a>
            <input type="button" value="삭제" name="btn-to-m" class="btn-to-m" id="btn-to-m">
            <a href="/app/question/questionList?p=1&cateNo=0"><div class="btn-to-m">글목록</div></a>
        </div>   
    </div>
    </div>
</div>
	
</form>
<%@ include file = "/WEB-INF/views/common/footer.jsp" %>









<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/questionList.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>

	<form action="/app/question/questionList?p=1&cateNo=0" method="GET">
		<input type="hidden" value="${cateNo}" name="cateNo">
		<input type="hidden" value="${p}" name="p">
		<div class="question-main">
        <div class="banner-question">
            <div class="banner-phrases">
                <div class="one-by-one">1:1 문의게시판</div>
                <div class="guide">궁금하신 점을 남겨주시면 접수 순서대로 답변 드리겠습니다.</div>
            </div>
        </div>
        <div class="cate-search-list">
            <div class="search-question">
                <div class="gathering-blocks">
                    <div class="select-content">
                        <select name="category" >
                            <option value="title" >제목</option>
                            <option value="content">내용</option>
                        </select>
                    </div>
                    <div class="search-box2">
                    	<input type="text" size="100" class="search-input" name="keyword">
                    	<div class="search-line"></div>
                    </div>
                    <div class="search-btn2"><input type="submit" value="검색" class="search-btn-input"></div>
                </div>
            </div>
            <div class="category-question">
                <div class="cate-list">
                	<a href="/app/question/questionWrite"><div class="ques">문의하기</div></a>
                	<a href="/app/question/questionList?p=1&cateNo=0"><div class="cate" value="1" name="cateNo">글목록</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=1"><div class="cate" value="1" name="cateNo">전체</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=2"><div class="cate" value="2" name="cateNo">스터디</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=3"><div class="cate" value="3" name="cateNo">공부인증</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=4"><div class="cate" value="4" name="cateNo">Q&A</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=5"><div class="cate" value="5" name="cateNo">멘토링</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=6"><div class="cate" value="6" name="cateNo">커뮤니티</div></a>
                    <a href="/app/question/questionList?p=1&cateNo=7"><div class="cate" value="7" name="cateNo">스킨샵</div></a>
                </div>
            </div>
            <div class="list-question">
                <c:forEach var="vo" items="${list}" >
                    <div class="questionList">
                        <div class="pick-cate" name="name">${vo.cateName}</div>
                        <a href="/app/question/qDetailList?no=${vo.no}"><div class="pick-title" name="title">${vo.title }</div></a>
                        <div class="pick-date" name="enrollDate">${vo.enrollDate}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
  <div class="page-question">
  	<div class="page-faq">
	  	<c:if test="${pv.startPage != 1}">
             <div class="paging-btn" id="prev-btn">
               <a
                 href="${path}/admin/question/questionList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
                 >이전</a
               >
             </div>
           </c:if>
           <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
             <div class="paging-btn" id="${i}">
               <a
                 href="${path}/admin/question/questionList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
                 >${i}</a
               >
             </div>
           </c:forEach>
           <c:if test="${pv.endPage < pv.maxPage}">
             <div class="paging-btn" id="next-btn">
               <a
                 href="${path}/admin/question/questionList?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
                 >다음</a
               >
             </div>
          	</c:if>
   		</div>
   </div>
</form>
	
	



    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
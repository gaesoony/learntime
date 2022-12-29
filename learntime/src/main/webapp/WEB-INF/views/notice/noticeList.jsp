<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/notice/noticeList.css">
</head>
<body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>
<form action="/app/notice/noticeList" method="get">
	<input type="hidden" value="${cateNo}" name="cateNo">
	<input type="hidden" value="${p}" name="p">
	<div class="main-notice">
        <div class="banner-notice">
            <div class="banner-dark">
                <div class="phrases-banner">
                    <div class="phrase-a">공지사항</div>
                    <div class="phrase-b">런타임의 새로운 소식들!</div>
                </div>
            </div>
        </div>
        <div class="cate-list-search">
            <div class="search-notice">
                <div class="searchBox-etc">
                    <div class="selection"><select name="category" id="notice">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select></div>
                    <div class="search-box-notice"><input type="text" name= "keyword" class="search-box" size="30"></div>
                    <div class="notice-input"><input type="submit" value="검색" class="submitBtn"></div>
                    <c:if test="${loginMember.adminYn eq 'Y'}">
                    	<a href="/app/notice/noticeWrite"><div class="write-notice-d" >글쓰기</div></a>
                    </c:if>
                </div>
            </div>
            <div class="notice-list">
                <div class="cate-box">
                    <a href="/app/notice/noticeList?p=1&cateNo=1"class="cateBtn"><div class="cate-pick" name="cateNo" value="1">전체</div></a> 
                    <a href="/app/notice/noticeList?p=1&cateNo=2"class="cateBtn"><div class="cate-pick" name="cateNo" value="2">스터디</div></a> 
                    <a href="/app/notice/noticeList?p=1&cateNo=3"class="cateBtn"><div class="cate-pick" name="cateNo" value="3">공부인증</div></a> 
                    <a href="/app/notice/noticeList?p=1&cateNo=4"class="cateBtn"><div class="cate-pick" name="cateNo" value="4">Q&A</div></a>
                    <a href="/app/notice/noticeList?p=1&cateNo=5"class="cateBtn"><div class="cate-pick" name="cateNo" value="5">멘토링</div></a> 
                    <a href="/app/notice/noticeList?p=1&cateNo=6"class="cateBtn"><div class="cate-pick" name="cateNo" value="6">커뮤니티</div></a> 
                    <a href="/app/notice/noticeList?p=1&cateNo=7"class="cateBtn"><div class="cate-pick" name="cateNo" value="7">스킨샵</div></a> 
                </div>
                <div class="notice-list-twoColored">
                    <div class="notice-group">
                        <c:forEach var="list" items="${list}" varStatus="status">
                        	<c:if test="${status.index > 2 }">
                        	 	<div class="notice-white"></a>
                        	</c:if>
                        	<c:if test="${status.index <= 2 }">
                            	<div class="notice-green"></a>
                        	</c:if>
                                <div class="admin-id-etc">
                                    <div class="admin-id" name="nick">${list.writer}</div>
                                    <div class="enroll-date" name="enrollDate">${list.enrollDate}</div>
                                </div>
                                <div class="written-notice">
                                    <div class="cate-notice" name="name">${list.cateName}</div>
                                    <a href="/app/notice/noticeDetail?no=${list.no}"><div class="posted-notice" name="title">${list.title}</div></a>
                                    <div class="views-etc">
                                        <div class="views" name="hit"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">${list.hit}</div>
                                        <div class="replies" name="cmt"><img width="15px" height="15px"class="message" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">${list.cmt}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="page-notice">
   	<div class="pageBtn" >
   		<ul class="pagination">
   			<li><a href="/app/notice/noticeList?p=1&cateNo=0" class="page">1</a></li>
   			<li><a href="/app/notice/noticeList?p=2&cateNo=0" class="page">2</a></li>
   			<li><a href="/app/notice/noticeList?p=3&cateNo=0" class="page">3</a></li>
   			<li><a href="/app/notice/noticeList?p=4&cateNo=0" class="page">4</a></li>
   			<li><a href="/app/notice/noticeList?p=5&cateNo=0" class="page">5</a></li>
   		</ul>	
   	</div>
 </div>

<%@ include file = "/WEB-INF/views/common/footer.jsp" %>  
 











    
</body>
</html>
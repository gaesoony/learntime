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
                    <div class="selection"><select name="notice" id="notice">
                        <option value="title-select">제목</option>
                        <option value="content-select">내용</option>
                    </select></div>
                    <div class="search-box-notice"><input type="text" name= "searchBox" class="search-box" size="30"></div>
                    <div class="notice-input"><input type="submit" value="검색" class="submitBtn"></div>
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
                        <c:forEach var="list" begin="1" end="3"  items="${list}">
                            <div class="notice-green"></a>
                                <div class="admin-id-etc">
                                    <div class="admin-id" name="nick">${list.writer}</div>
                                    <div class="enroll-date" name="enrollDate">${list.enrollDate}</div>
                                </div>
                                <div class="written-notice">
                                    <div class="cate-notice" name="name">${list.cateName}</div>
                                    <div class="posted-notice" name="title">${list.title}<a href="/app/notice/noticeDetail?no=${list.no}"></div>
                                    <div class="views-etc">
                                        <div class="views" name="hit"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">${list.hit}</div>
                                        <div class="replies" name="cmt"><img width="15px" height="15px"class="message" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">${list.cmt}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach var="list" begin="1" end="3" items="${list}"> 
                            <div class="notice-white">
                                <div class="admin-id-etc">
                                    <div class="admin-id" name="nick">${list.writer}</div>
                                    <div class="enroll-date" name="enrollDate">${list.enrollDate}</div>
                                </div>
                                <div class="written-notice">
                                    <div class="cate-notice" name="name">${list.cateName }</div>
                                    <div class="posted-notice" name="title">${list.title}<a href="/app/notice/noticeDetail?no=${list.no}"></div>
                                    <div class="views-etc">
                                        <div class="views" name="hit"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">${list.hit}</div>
                                        <div class="replies"><img width="15px" height="15px" class="message" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="page-notice"></div>
        </div>
    </div>
</form>
    











    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
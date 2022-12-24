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
<form action="">
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
                    <div class="search-box-notice"><input type="text" name= "searchBox" class="search-box" size="30"> </div>
                    <div class="notice-input"><input type="submit" value="검색" class="submitBtn"></div>
                </div>
            </div>
            <div class="notice-list">
                <div class="cate-box">
                    <a><div class="cate-pick" value="1">전체</div></a>
                    <a><div class="cate-pick" value="2">스터디</div></a>
                    <a><div class="cate-pick" value="3">공부인증</div></a>
                    <a><div class="cate-pick" value="4">Q&A</div></a>
                    <a><div class="cate-pick" value="5">멘토링</div></a>
                    <a><div class="cate-pick" value="6">커뮤니티</div></a>
                    <a><div class="cate-pick" value="7">스킨샵</div></a>
                </div>
                <div class="notice-list-twoColored">
                    <div class="notice-group">
                        <c:forEach var="notice-green" begin="1" end="3" >
                            <div class="notice-green">
                                <div class="admin-id-etc">
                                    <div class="admin-id">관리자</div>
                                    <div class="enroll-date">2022.11.28</div>
                                </div>
                                <div class="written-notice">
                                    <div class="cate-notice">[전체]</div>
                                    <div class="posted-notice">스팸 단어로 인한 글 등록 불가 문제 관련 공지사항</div>
                                    <div class="views-etc">
                                        <div class="views"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
                                        <div class="replies"><img width="15px" height="15px"class="message" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach var="notice-white" begin="1" end="3" >
                            <div class="notice-white">
                                <div class="admin-id-etc">
                                    <div class="admin-id">관리자</div>
                                    <div class="enroll-date">2022.11.28</div>
                                </div>
                                <div class="written-notice">
                                    <div class="cate-notice">[전체]</div>
                                    <div class="posted-notice">스팸 단어로 인한 글 등록 불가 문제 관련 공지사항</div>
                                    <div class="views-etc">
                                        <div class="views"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
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
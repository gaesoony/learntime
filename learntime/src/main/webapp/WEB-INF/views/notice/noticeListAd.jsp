<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/notice/noticeListAd.css">
</head>
<body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>

    <div class="main-notice">
        <div class="banner-notice">
            <div class="banner-dark">
                <div class="phrases-banner">
                    <div class="phrase-a">공지사항</div>
                    <div class="phrase-b">런타임의 새로운 소식들!</div>
                </div>
            </div>
        </div>
        <div class="search-notice-ad">
            <div class="searchBox-etc">
                <a id="notice-admin" href=""><div class="write-notice-ad">글쓰기</div></a>
                <div class="selection"><select name="notice" id="notice">
                    <option value="title-select">제목</option>
                    <option value="content-select">내용</option>
                </select></div>
                <div class="search-box-notice"></div>
                <div class="notice-input"><input type="submit" value="검색" ></div>
            </div>
        </div>
        <div class="notice-list">
            <div class="cate-box">
                <div class="cate-pick">전체</div>
                <div class="cate-pick">스터디</div>
                <div class="cate-pick">공부인증</div>
                <div class="cate-pick">Q&A</div>
                <div class="cate-pick">멘토링</div>
                <div class="cate-pick">커뮤니티</div>
                <div class="cate-pick">스킨샵</div>
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
                            </div>
                            <div class="views-etc">
                                <div class="views"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
                                <div class="replies"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
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
                            </div>
                            <div class="views-etc">
                                <div class="views"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
                                <div class="replies"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="page-notice"></div>
    </div>













    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
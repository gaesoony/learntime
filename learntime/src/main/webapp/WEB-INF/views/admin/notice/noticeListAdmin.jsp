<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/notice/noticeListAdmin.css">
</head>
<body>
    <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
<div id="content-wrap">
    <div class="main-notice">
        <div class="notice-title-admin">
            <div class="notice-sign-m">
                <div class="line1-m">
                    <div class="line-a-m"></div>
                </div>
                <div class="name-notice-m">공지사항 </div>
                <div class="line2-m">
                    <div class="line-b-m"></div>
                </div>
            </div>
        </div>
        <div class="notice-admin-Btns">
            <div class="noticeBtn-etc">
                <div class="setting-Btn"><img src="/app/resources/img/faq/image 116.png"></div>
                <div class="Btns-noticeAd">
                    <div class="activate-Btn"><input class="activate" type="button" value="활성화" name="activate"></div>
                    <div class="deactivate-Btn"><input class="deactivate" type="button" value="비활성화" name="deactivate"></div>
                    <div class="delete-notice-Btn"><input class="delete-lists" type="button" value="삭제" name="delete"></div>
                </div>
            </div>
        </div>
        <div class="notice-list">
            <div class="notice-list-twoColored">
                <div class="notice-group">
                    <c:forEach var="notice-white" begin="1" end="10" >
                        <div class="notice-white">
                            <div class="admin-id-etc">
                                <div class="admin-id">관리자</div>
                                <div class="enroll-date">2022.11.28</div>
                            </div>
                            <div class="written-notice">
                                <div class="radioBtn-notice"><input type="radio" name="faq-ad" id="radioBtn"></div>
                                <div class="cate-notice">[전체]</div>
                                <div class="posted-notice">스팸 단어로 인한 글 등록 불가 문제 관련 공지사항</div>
                                <div class="views-etc">
                                    <div class="views"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">17k</div>
                                    <div class="replies"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">8</div>
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
    




   
</body>
</html>
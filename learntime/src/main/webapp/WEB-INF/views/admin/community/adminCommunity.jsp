<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/community/adminCommunity.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            게시물 관리
        </div>
        <div id="content-main-wrap">
            <div id="main-side" class="shadow-light">
                <div id="board-category-box">
                <!-- 카테고리 반복문 -->
                <c:forEach var="cate" items="${cateList}">
                    <div class="board-category">
                        <span>${cate.name}</span>
                        <a href="" class="modi-btn txt-sm">수정</a>
                        <a href="" class="dele-btn txt-sm">삭제</a>
                    </div>
                </c:forEach>
                <!-- 카테고리 반복 끝-->
                    <div id="add-category-box">
                        <span class="material-symbols-rounded">settings</span>
                        <span>카테고리 추가하기</span>
                    </div>

                    <div id="add-box" class="hidden">
                        <form action="">
                        <input type="text">
                        <input type="submit" value="추가하기">
                        </form>
                    </div>

                    <!-- 카테고리 추가하기 -->
                    <script>
                        $('#add-box').hide();
                        $('#add-category-box').click(function(){
                            $('#add-box').show();
                        });
                    </script>


                </div>  
                

            </div>
            <div id="main-content">
                <div id="board-statistics">
                    <div id="statistic1" class="shadow-light statistic">
                        <div class="statis-img-box">
                            <img src="/app/resources/img/admin/statistics-total-post.png" alt="">
                        </div>
                        <div>
                            <span class="txt-sm">Total Post</span>
                            <span class="statis-number">99</span>
                        </div>
                        
                    </div>
                    <div id="statistic2" class="shadow-light statistic">
                        <div class="statis-img-box">
                            <img src="/app/resources/img/admin/statistics-total-user.png">
                        </div>
                        <div>
                            <span class="txt-sm">Total Writer</span>
                            <span class="statis-number">99</span>
                        </div>
                        
                    </div>
                    <div id="statistic3" class="shadow-light statistic">
                        <div class="statis-img-box">
                            <img src="/app/resources/img/admin/statistics-delete-post.png" alt="">
                        </div>
                        <div>
                            <span class="txt-sm">Total Delete Post</span>
                            <span class="statis-number">99</span>
                        </div>
                        
                    </div>
                    <div id="statistic4" class="shadow-light statistic">
                        <div class="statis-img-box">
                            <img src="/app/resources/img/admin/statistics-blind-post.png" alt="">
                        </div>
                        <div>
                            <span class="txt-sm">Total Blind Post</span>
                            <span class="statis-number">99</span>
                        </div>
                        
                    </div>
                </div>

                <div id="search-box" class="shadow-light">
                    <form action="">
                        <span class="material-symbols-rounded">search</span>
                        <input type="text" name="" id="" placeholder="제목, 작성자 검색">
                        <input type="submit" value="" hidden>
                    </form>
                </div>

                <div id="board-list" class="shadow-light">
                    <!-- 반복시작 -->
                    <div id="board-title" class="board">
                        <div>글 번호</div>
                        <div>카테고리</div>
                        <div>제목</div>
                        <div>작성자</div>
                        <div>등록일</div>
                        <div>조회수</div>
                        <div>추천수</div>
                        <div>처리</div>
                    </div>
                    <div class="board-content board">
                        <div>글 번호</div>
                        <div>카테고리</div>
                        <div>긴~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 제목입니다.</div>
                        <div>작성자</div>
                        <div>등록일</div>
                        <div>조회수</div>
                        <div>추천수</div>
                        <div class="board-btn-box">
                            <div class="detail-btn" onclick="location.href='/app/admin/community/detail'">상세보기</div>
                            <div class="modify-btn" onclick="location.href='/app/admin/community/modify'">수정</div>
                            <div class="delete-btn">삭제</div>
                        </div>
                    </div>
                    <div class="board-content board">
                        <div>글 번호</div>
                        <div>카테고리</div>
                        <div>제목</div>
                        <div>작성자</div>
                        <div>등록일</div>
                        <div>조회수</div>
                        <div>추천수</div>
                        <div class="board-btn-box">
                            <div class="detail-btn">상세보기</div>
                            <div class="modify-btn">수정</div>
                            <div class="delete-btn">삭제</div>
                        </div>
                    </div>
                    <div class="board-content board">
                        <div>글 번호</div>
                        <div>카테고리</div>
                        <div>제목</div>
                        <div>작성자</div>
                        <div>등록일</div>
                        <div>조회수</div>
                        <div>추천수</div>
                        <div class="board-btn-box">
                            <div class="detail-btn">상세보기</div>
                            <div class="modify-btn">수정</div>
                            <div class="delete-btn">삭제</div>
                        </div>
                    </div>

                    <div id="paging">
                        <div class="paging-btn">1</div>
                        <div class="paging-btn">2</div>
                        <div class="paging-btn">3</div>
                        <div class="paging-btn">4</div>
                        <div class="paging-btn">5</div>
                        <div class="paging-btn">6</div>
                        <div class="paging-btn">7</div>
                        <div class="paging-btn">8</div>
                        <div class="paging-btn">9</div>
                        <div class="paging-btn">10</div>
                        <div class="paging-btn" id="next-btn">다음</div>
                    </div>
                    

                </div>
            </div>
        </div>



    </div>
	
</body>
</html>
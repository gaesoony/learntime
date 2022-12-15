<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/mentoring/adminMentoring.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            게시물 관리
        </div>
        <div id="content-main-wrap">
            <div id="main-side">
                <div id="board-category-box" class="shadow-light">
                <!-- 카테고리 반복문 -->
                    <div class="board-category">
                        <a href="">분야1</a>
                    </div>
                    <div class="board-category">
                        <a href="">분야2</a>
                    </div>
                    <div class="board-category">
                        <a href="">분야3</a>
                    </div>
                    <div class="board-category">
                        <a href="">분야4</a>
                    </div>
                </div>  

                <div id="board-filter-box" class="shadow-light">
                    필터 생각해보고 넣을거임... <br>
                    필터 생각해보고 넣을거임... <br>
                    필터 생각해보고 넣을거임... <br>
                    필터 생각해보고 넣을거임... <br>
                </div>


            </div>
            <div id="main-content">
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
                        <div>번호</div>
                        <div>분야</div>
                        <div>멘토링 제목</div>
                        <div>멘토</div>
                        <div>등록일</div>
                        <div>별점</div>
                        <div>????</div>
                        <div>처리</div>
                    </div>
                    <div class="board-content board">
                        <div>77</div>
                        <div>분야1</div>
                        <div>긴~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 제목입니다.</div>
                        <div>망치맨</div>
                        <div>2022.12.11 12:22:22</div>
                        <div>20</div>
                        <div>????</div>
                        <div class="board-btn-box">
                            <div class="detail-btn" onclick="location.href='/app/admin/mentoring/detail'">상세보기</div>
                            <div class="delete-btn">삭제</div>
                        </div>
                    </div>
                    <div class="board-content board">
                        <div>77</div>
                        <div>분야1</div>
                        <div>제목</div>
                        <div>망치맨</div>
                        <div>2022.12.11 12:22:22</div>
                        <div>20</div>
                        <div>????</div>
                        <div class="board-btn-box">
                            <div class="detail-btn" onclick="location.href='/app/admin/mentoring/detail'">상세보기</div>
                            <div class="delete-btn">삭제</div>
                        </div>
                    </div>
                    <div class="board-content board">
                        <div>77</div>
                        <div>분야1</div>
                        <div>제목</div>
                        <div>망치맨</div>
                        <div>2022.12.11 12:22:22</div>
                        <div>20</div>
                        <div>????</div>
                        <div class="board-btn-box">
                            <div class="detail-btn" onclick="location.href='/app/admin/mentoring/detail'">상세보기</div>
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
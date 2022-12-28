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

                    <span id="category-txt">게시판 카테고리</span>
                    <div class="board-category">
                        <a href="/app/admin/community/list">전체</a>
                    </div>

                    <div id="board-category-title">
                    <!-- 카테고리 반복문 -->
                    <c:forEach var="cate" items="${cateList}">
                        <div class="board-category">
                            <span class="cate-name">${cate.name}</span>
                            <input type="hidden" name="" value="${cate.no}">
                            <div class="modi-dele-box">
                                <a href="/app/admin/community/modicate?cate=${cate.no}" class="modi-btn txt-sm">수정</a>
                                <a href="/app/admin/community/delecate?cate=${cate.no}" class="dele-btn txt-sm">삭제</a>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- 카테고리 반복 끝-->
                    </div>


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

                        //서브밋시 카테고리 추가 ajax
                        $(document).on('click','#add-box input[type="submit"]',function(){
                            var name = $('#add-box input[type="text"]').val();
                            $.ajax({
                                url: '/app/admin/community/addcate',
                                type: 'post',
                                data: {
                                    'cateName': name
                                },
                                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                                success: function(data){
                                    // 추가하기 창 숨기기
                                    $('#add-box').hide();
                                    // input 비우기
                                    $('#add-box input[type="text"]').val('');
                                    // 카테고리 목록 초기화
                                    $('#board-category-title').empty();
                                    // 카테고리 목록 다시 불러오기
                                    var jsonData = $.parseJSON(data);

                                    $.each(jsonData.cateList, function(index, cateList){
                                        var cateListHtml =
                                        '<div class="board-category">'+
                                            '<a href="/app/admin/community/list?cate='+cateList.no+'">'+cateList.name+'</a>'+
                                            '<a href="/app/admin/community/modicate?cate='+cateList.no+'" class="modi-btn txt-sm">수정</a>'+
                                            '<a href="/app/admin/community/delecate?cate='+cateList.no+'" class="dele-btn txt-sm">삭제</a>'+
                                        '</div>';
                                        $('#board-category-title').append(cateListHtml);
                                        }
                                    )},
                                error: function(){
                                    alert('카테고리 추가 실패');

                                }
                            });
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
                    <form action="" onsubmit="return false;">
                        <span class="material-symbols-rounded">search</span>
                        <input type="text" name="" id="" placeholder="제목, 작성자 검색">
                        <input id="search-btn" type="submit" value="" hidden>
                    </form>

                </div>

                <div id="board-list" class="shadow-light">
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
                    <!-- 반복시작 -->
                    <c:forEach items="${boardList}" var="list">
                        <div class="board-content board">
                            <div>${list.no}</div>
                            <div>${list.cate}</div>
                            <div>${list.title}
                                <!-- ${list.cmtCount} 가 있을때 출력-->
                                <c:if test="${list.cmtCount != null}">
                                    <span class="cmt-cnt">[${list.cmtCount}]</span>
                                </c:if>
                            </div>
                            <div>${list.writerNick}</div>
                            <div>${list.enrollDate}</div>
                            <div>${list.hit}</div>
                            <div>${list.lhCount}</div>
                            <div class="board-btn-box">
                                <div class="detail-btn" onclick="location.href='/app/admin/community/detail?bno=${list.no}'">상세보기</div>
                                <div class="modify-btn" onclick="location.href='/app/admin/community/modify?bno=${list.no}'">수정</div>
                                <div class="delete-btn" onclick="location.href='/app/admin/community/delete?bno=${list.no}'">삭제</div>
                            </div>
                        </div>
                    </c:forEach>
                        <!-- 반복 끝 -->
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

    <script>
        $(document).ready(function() {
        // 카테고리 클릭 시 쿼리 스트링으로 전달
        $('.cate-name').on('click', function() {
            var cate = $(this).next().val();
            // var sort = getQueryString('sort'); // 기존 쿼리 스트링 값 조회
            location.href = '/app/admin/community/list?cate='+cate;
        });

        // // 정렬 클릭 시 쿼리 스트링으로 전달
        // $('#sorting').on('change', function() {
        //     var sort = $(this).val();
        //     var cate = getQueryString('cate'); // 기존 쿼리 스트링 값 조회
        //     // var page = getQueryString('page'); // 기존 쿼리 스트링 값 조회
            
        //     if(cate == undefined){
        //         location.href = '/app/community/board/list?sort=' + sort;
        //     } else if(cate != undefined){
        //         location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort;
        //     } 
        // });

        // // 페이징 클릭 시 쿼리 스트링으로 전달
        // $('.pagination a').on('click', function() {
        //     var page = $(this).text();
        //     var cate = getQueryString('cate'); // 기존 쿼리 스트링 값 조회
        //     var sort = getQueryString('sort'); // 기존 쿼리 스트링 값 조회
        //     location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort + '&page=' + page;
        // });

        
        //검색 시 쿼리 스트링으로 전달
        $('#search-btn').on('click', function() {
            var cate = getQueryString('cate'); // 기존 쿼리 스트링 값 조회
            var search = $(this).prev().val();
            if(cate == undefined){
                location.href = '/app/admin/community/list?search=' + search;
            } else if(cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&search=' + search;
            }
        });
            


        // 쿼리 스트링 값 조회 함수
        function getQueryString(key) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i=0;i<vars.length;i++) {
                var pair = vars[i].split("=");
                if(pair[0] == key){return pair[1];}
            }
            return undefined;
        }

    });

    </script>
	
</body>
</html>
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
                                <a href="/app/admin/community/delecate?cate=${cate.no}" class="dele-btn txt-sm">수정</a>
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
                            <span class="statis-number">${bfv.listCount}</span>
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
                            <span class="statis-number">12</span>
                        </div>
                        
                    </div>
                    <div id="statistic4" class="shadow-light statistic">
                        <div class="statis-img-box">
                            <img src="/app/resources/img/admin/statistics-blind-post.png" alt="">
                        </div>
                        <div>
                            <span class="txt-sm">Total Blind Post</span>
                            <span class="statis-number">1</span>
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
                    <!-- 컨텐츠 반복 -->
                    <!-- boardList의 첫번째 인덱스가 null일때 -->


                    <c:if test="${boardList[0] == null}">
                        <div class = "not-found">
                            <p>조회된 글이 없습니다 :<</p>
                        </div>
                    </c:if>
                    <c:if test="${boardList != null}">
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
                                    <div class="delete-btn">삭제</div>
                                    <input type="hidden" name="" value="${list.no}">
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>

                    <script>
                        $('.delete-btn').click(function() {
                            if(confirm('삭제하시겠습니까?')) {
                                var bno = $(this).next().val();
                                $.ajax({
                                    url: '/app/community/board/delete',
                                    type: 'post',
                                    data: {
                                        'bno': bno
                                    },
                                    success: function(data) {
                                        console.log(data);
                                        if(data == 1){
                                            location.reload();
                                        }
                                    }
                                });
                            }
                        });
                        
                    </script>

                    <div id="paging">
                        <c:if test="${bfv.startPage != 1}">
                           <div class="paging-btn prev-btn" id="prev-btn">prev</div>
                         </c:if>
                         <c:forEach var="i" begin="${bfv.startPage}" end="${bfv.endPage}">
                           <div class="paging-btn" id="${i}">
                             ${i}
                           </div>
                         </c:forEach>
                         <c:if test="${bfv.endPage < bfv.maxPage}">
                           <div class="paging-btn next-btn" id="next-btn">next</div>
                         </c:if>
                     </div>

                     <script>
                        console.log('${bfv}');
                     </script>
                    

                </div>
            </div>
        </div>
    </div>

    <script>
    $(document).ready(function() {
        //기존 쿼리스트링 가져오기
        var url = new URL(location.href);
        var search = url.searchParams.get("search");
        var cate = url.searchParams.get("cate");
        var page = url.searchParams.get("pno");

        
        // 카테고리 클릭 시 쿼리 스트링으로 전달
        $('.cate-name').on('click', function() {
            var cate = $(this).next().val();
            location.href = '/app/admin/community/list?cate='+cate;
        });
        
        //검색 시 쿼리 스트링으로 전달
        $('#search-btn').on('click', function() {
            var search = $(this).prev().val();
            if(cate == undefined){
                location.href = '/app/admin/community/list?search=' + search;
            } else if(cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&search=' + search;
            }
        });

        // 페이징
            //페이징 채워놓기
        if(page == undefined){
            page = 1;
        }
        $('.paging-btn').each(function(index, item) {
            if($(this).attr('id') == page){
                $(this).addClass('active');
            }
        });

            //이전
        $('.prev-btn').on('click', function() {
            if(page == 1){
                alert('첫 페이지입니다.');
                return;
            }
            if(search == undefined && cate == undefined){
                location.href = '/app/admin/community/list?pno=' + (Number(page) - 1);
            }
            if(search == undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&sort=' + sort + '&pno=' + (Number(page) - 1);
            }
            if(search != undefined && cate == undefined){
                location.href = '/app/admin/community/list?search=' + search + '&sort=' + sort + '&pno=' + (Number(page) - 1);
            }
            if(search != undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&search=' + search + '&sort=' + sort + '&pno=' + (Number(page) - 1);
            }
        });
            //숫자
        $('.paging-btn').on('click', function() {
            var num = $(this).attr('id');
            if(search == undefined && cate == undefined){
                location.href = '/app/admin/community/list?pno=' + num;
            }
            if(search == undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate +  '&pno=' + num;
            }
            if(search != undefined && cate == undefined){
                location.href = '/app/admin/community/list?search=' + search + '&pno=' + num;
            }
            if(search != undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&search=' + search + '&pno=' + num;
            }

        });
            //다음
        $('.next-btn').on('click', function() {
            if(page == '${bfv.maxPage}'){
                alert('마지막 페이지입니다.');
                return;
            }
            if(search == undefined && cate == undefined){
                location.href = '/app/admin/community/list?pno=' + (Number(page) + 1);
            }
            if(search == undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&pno=' + (Number(page) + 1);
            }
            if(search != undefined && cate == undefined){
                location.href = '/app/admin/community/list?search=' + search + '&pno=' + (Number(page) + 1);
            }
            if(search != undefined && cate != undefined){
                location.href = '/app/admin/community/list?cate=' + cate + '&search=' + search + '&pno=' + (Number(page) + 1);
            }
        });



    });

    </script>
	
</body>
</html>
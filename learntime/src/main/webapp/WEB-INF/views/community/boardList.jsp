<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl 라이브러리 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/community/boardList.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>

<body>
    
<%@include file ="/WEB-INF/views/common/header.jsp" %>

    <div id="main-wrap">
        <div id="board-banner">
            <img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
        </div>
        <div id="board-category">
            <div id="write-btn">
                <span id="edit-icon" class="material-symbols-rounded">edit</span>
                <span>작성하기</span> 
            </div>
            <div id="category" class="height-40">
                <input type="radio" name="freeboard-cate" id="0" checked>
                <label for="0">전체</label>
                
                <c:forEach items = "${cateList}" var= "cate">
                    <input type="radio" name="freeboard-cate" id="${cate.no}">
                    <label for="${cate.no}">${cate.name}</label>
                </c:forEach>

            </div>
            <div id="cateDown">+</div>

            <script>
                //#category 의 자식 input 태그의 개수를 구해서 5개 이상이면 + 버튼 생성
                $(document).ready(function(){
                    if($('#category').children('input').length > 5){
                        $('#cateDown').show();
                    }else{
                        $('#cateDown').hide();
                    }
                });
               
                $('#cateDown').click(function(){
                    // + 버튼 카테고리 토글
                    if($('#category').hasClass('height-40')){
                        $('#category').removeClass('height-40');
                        $('#category').addClass('height-auto');
                    }else{
                        $('#category').removeClass('height-auto');
                        $('#category').addClass('height-40');
                    }

                    //버튼 클릭시 +, - 토글
                    if($(this).text() == '+'){
                        $(this).text('-');
                    }else{
                        $(this).text('+');
                    }
                });
            </script>
            <div>
                <select class="" name="" id="sorting">
                    <option value = "1" selected>최신순</option>
                    <option value = "2">댓글수</option>
                    <option value = "3">조회수</option>
                    <option value = "4">좋아요수</option>
                </select>
            </div>
        </div>
        <div id="explore">
            <span id="refresh-icon" class="material-symbols-rounded">refresh</span>
            <div id="search-box">
                <span id="search-icon" class="material-symbols-rounded">search</span>
                <input type="text" id="search">
                <input type="submit" id="search-submit">
            </div>
            <div id="mini-paging">
                <span class="material-symbols-rounded arrow-icon">arrow_back</span>
                <span id="paging-number">1/342</span>
                <span class="material-symbols-rounded arrow-icon">arrow_forward</span>
            </div>
        </div>

        <div id="board-list">
            <!-- 공지사항 반복 -->
            <div class="board-content notice">
                <div class="title-box">
                    <span>[런타임]공지사항 JAVA 언어로 배우는 디자인 패턴 입문 이벤트</span>
                </div>
                <div class="content-info-box">
                    <div class="writer-info">
                        <div class="writer-profile"></div>
                        <span class="writer-nick">LearnTime</span>
                        <div class="writer-date">2020.12.12 12:20:42</div>
                    </div>
                    <div class="content-info">
                        <span class="hit-number">조회수 1,150</span>
                        <span class="material-symbols-rounded comment-icon">comment</span>
                        <span class="comment-number">3</span>
                        <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                        <span class="like-number">40</span>
                    </div>
                </div>
            </div>
            <!-- 공지사항 반복 끝 -->

            <!-- 반복시작 -->
            <c:forEach var="list" items="${boardList}">
                <div class="board-content" onclick="location.href='/app/community/board/detail?bno=${list.no}'">
                    <div class="title-box">
                        <span>${list.title} 
                            <!-- cmtCount null check-->
                            <c:if test="${list.cmtCount != null}">
                                <span id="cmt-count">[${list.cmtCount}]</span>
                            </c:if>
                        </span>
                    </div>
                    <div class="content-info-box">
                        <div class="writer-info">
                            <div class="writer-profile">
                                <img src="/app/${list.writerImg}" alt="">
                            </div>
                            <span class="writer-nick">${list.writerNick}</span>
                            <div class="writer-date">
                                ${list.enrollDate}
                            </div>
                        </div>
                        <div class="content-info">
                            <span class="hit-number">조회수 ${list.hit}</span>
                            <span class="material-symbols-rounded comment-icon">comment</span>
                            <span class="comment-number">
                                <c:if test="${list.cmtCount == null}">
                                    0
                                </c:if>
                                <c:if test="${list.cmtCount != null}">
                                    <span>${list.cmtCount}</span>
                                </c:if>
                            </span>
                            <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                            <span class="like-number">
                                <c:if test="${list.likes == null}">
                                    0
                                </c:if>
                                <c:if test="${list.likes != null}">
                                    <span>${list.lhCount}</span>
                                </c:if>
                            </span>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- 반복 끝 -->

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
    
    <%@include file ="/WEB-INF/views/common/footer.jsp" %>
    <script>
        // 글쓰기 함수
        $('#write-btn').on('click', function() {
            if ("${loginMember}" == "") {
                $('.blackBG').addClass('show');
            } else {
                location.href = '/app/community/board/write';
            }
        });

        //시간계산
        function timeForToday(value) {
            var today = new Date();
            var timeValue = new Date(value);

            var betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
            if (betweenTime < 1) return '방금전';
            if (betweenTime < 60) {
                return String(betweenTime)+'분전';
            }

            var betweenTimeHour = Math.floor(betweenTime / 60);
            if (betweenTimeHour < 24) {
                return String(betweenTimeHour)+'시간전';
            }

            var betweenTimeDay = Math.floor(betweenTime / 60 / 24);
            if (betweenTimeDay < 365) {
                return String(betweenTimeDay)+'일전';
            }

            var betweenTimeYear = Math.floor(betweenTime / 60 / 24 / 365);
            return String(betweenTimeYear)+'년전';
        }

        //계산된 시간 적용
        $('.writer-date').each(function(index, item) {
            $(this).html(timeForToday($(this).html()));
        });
        
        $(document).ready(function() {
            //기존 쿼리스트링
            var cate = getQueryString('cate');
            var page = getQueryString('page');
            var search = getQueryString('search');
            var sort = getQueryString('sort');

            // 카테고리 클릭 시 쿼리 스트링으로 전달
            $('input[type="radio"]').on('click', function() {
                var cate = $(this).attr('id');
                location.href = '/app/community/board/list?cate=' + cate;
            });

            // 정렬 클릭 시 쿼리 스트링으로 전달
            $('#sorting').on('change', function() {
                var sort = $(this).val();
                if(cate == undefined && search == undefined){
                    location.href = '/app/community/board/list?sort=' + sort;
                } else if(cate != undefined && search == undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort;
                } else if(cate == undefined && search != undefined){
                    location.href = '/app/community/board/list?search=' + search + '&sort=' + sort;
                } else if(cate != undefined && search != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&sort=' + sort;
                }
            });

            // 페이징 클릭 시 쿼리 스트링으로 전달
            $('.pagination a').on('click', function() {
                var page = $(this).text();
                location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort + '&page=' + page;
            });

            //검색 제출 시 쿼리 스트링으로 전달
            $('#search-icon').on('click', function() {
                var search = $('#search').val();
                console.log(cate);
                if(cate == undefined){
                    location.href = '/app/community/board/list?search=' + search;
                } else if(cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search;
                }
            });

            // 초기화 아이콘 클릭시 새로고침
            $('#refresh-icon').on('click', function() {
                location.href = '/app/community/board/list';
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

            // 카테고리 쿼리 스트링 값으로 선택
            var cate = getQueryString('cate');
            if (cate != undefined) {
                $('#' + cate).prop('checked', true);
            }

            // 정렬 쿼리 스트링 값으로 선택
            var sort = getQueryString('sort');
            if (sort != undefined) {
                $('#sorting').val(sort);
            }

        });
         
        // 카테고리값 5이상이면 카테고리 펼치기
        $(document).ready(function(){
            var cate = location.search.split('=')[1];
            if(cate >= 5){
                $('#category').removeClass('height-40');
                $('#category').addClass('height-auto');
                $('#cateDown').text('-');
            }
        });

    </script>
    
</body>

</html>
</html>
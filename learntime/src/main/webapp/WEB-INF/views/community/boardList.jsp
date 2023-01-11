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
                <span class="material-symbols-rounded arrow-icon prev-btn">arrow_back</span>
                <span id="paging-number" >${bfv.currentPage}/<c:if test = "${bfv.maxPage == 0}">1</c:if>
                    <c:if test = "${bfv.maxPage gt 0}">${bfv.maxPage}</c:if>
                </span>
                <span class="material-symbols-rounded arrow-icon next-btn">arrow_forward</span>
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
                        <span class="hit-number">조회수 777</span>
                        <span class="material-symbols-rounded comment-icon">comment</span>
                        <span class="comment-number">12</span>
                        <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                        <span class="like-number">65</span>
                    </div>
                </div>
            </div>
            <div class="board-content notice">
                <div class="title-box">
                    <span>[런타임]LearnTime 세미나 개발자가 알아야 할 기초상식</span>
                </div>
                <div class="content-info-box">
                    <div class="writer-info">
                        <div class="writer-profile"></div>
                        <span class="writer-nick">LearnTime</span>
                        <div class="writer-date">2018.12.12 12:20:42</div>
                    </div>
                    <div class="content-info">
                        <span class="hit-number">조회수 11,150</span>
                        <span class="material-symbols-rounded comment-icon">comment</span>
                        <span class="comment-number">29</span>
                        <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                        <span class="like-number">140</span>
                    </div>
                </div>
            </div>
            <!-- 공지사항 반복 끝 -->

            <!-- 반복시작 -->
            <c:forEach var="list" items="${boardList}">
                <fmt:parseNumber var = "lhCount" value = "${list.lhCount}" />
                <c:choose>
                    <c:when test = "${lhCount lt -29}">
                        <div class="board-content blind-content" onclick="alert('블라인드된 게시글 입니다.')">
                            <p>블라인드된 게시글 입니다.</p>
                        </div>
                    </c:when>
                    <c:when test = "${lhCount > -30}">
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
                    </c:when>
                </c:choose>
            </c:forEach>
            <!-- 반복 끝 -->

        </div>
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
            console.log("${bfv}");
         </script>

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
            var page = getQueryString('pno');
            if(page == undefined){
                page = 1;
            };
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

            //페이징 채워놓기
            $('.paging-btn').each(function(index, item) {
                if($(this).attr('id') == page){
                    $(this).addClass('active');
                }
            });
            

            // 페이징
                //이전
            $('.prev-btn').on('click', function() {
                if(page == 1){
                    
                    alert('첫 페이지입니다.');
                    return;
                }

                if(sort == undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?pno=' + (Number(page) - 1);
                }
                if(sort == undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&pno=' + (Number(page) - 1);
                }
                if(sort == undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&pno=' + (Number(page) - 1);
                }
                if(sort == undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&pno=' + (Number(page) - 1);
                }
                if(sort != undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?sort=' + sort + '&pno=' + (Number(page) - 1);
                }
                if(sort != undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort + '&pno=' + (Number(page) - 1);
                }
                if(sort != undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&sort=' + sort + '&pno=' + (Number(page) - 1);
                }
                if(sort != undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&sort=' + sort + '&pno=' + (Number(page) - 1);
                }
            });
                //숫자
            $('.paging-btn').on('click', function() {
                var num = $(this).attr('id');
                if(sort == undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?pno=' + num;
                }
                if(sort == undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&pno=' + num;
                }
                if(sort == undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&pno=' + num;
                }
                if(sort == undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&pno=' + num;
                }
                if(sort != undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?sort=' + sort + '&pno=' + num;
                }
                if(sort != undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort + '&pno=' + num;
                }
                if(sort != undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&sort=' + sort + '&pno=' + num;
                }
                if(sort != undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&sort=' + sort + '&pno=' + num;
                }

            });
                //다음
            $('.next-btn').on('click', function() {

                if(page == '${bfv.maxPage}'){
                    alert('마지막 페이지입니다.');
                    return;
                }

                if(sort == undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?pno=' + (Number(page) + 1);
                }
                if(sort == undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&pno=' + (Number(page) + 1);
                }
                if(sort == undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&pno=' + (Number(page) + 1);
                }
                if(sort == undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&pno=' + (Number(page) + 1);
                }
                if(sort != undefined && search == undefined && cate == undefined){
                    location.href = '/app/community/board/list?sort=' + sort + '&pno=' + (Number(page) + 1);
                }
                if(sort != undefined && search == undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&sort=' + sort + '&pno=' + (Number(page) + 1);
                }
                if(sort != undefined && search != undefined && cate == undefined){
                    location.href = '/app/community/board/list?search=' + search + '&sort=' + sort + '&pno=' + (Number(page) + 1);
                }
                if(sort != undefined && search != undefined && cate != undefined){
                    location.href = '/app/community/board/list?cate=' + cate + '&search=' + search + '&sort=' + sort + '&pno=' + (Number(page) + 1);
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
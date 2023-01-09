<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentoring/mentorReview.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	<div id="board-banner">
		<img src="/app/resources/img/reviewBanner.png" alt="멘토후기게시판 배너">
	</div>
    <div id="main-wrap">

        <div id="side-wrap">
            <div id="search-box">
                <div id="search-area">
                    <input type="text" name="search">
                </div>
                <div id="search-btn-area">
                    <span class="material-symbols-rounded search">search</span>
                </div>
            </div>
            <div id="sorting-box">
                <select name="sorting" id="sorting-input">
                    <option value="1">최신순</option>
                    <option value="2">별점순</option>
                </select>
            </div>
            <div id="category-box">
                <div id="category-title">
                    <span class="material-symbols-rounded filter">filter_alt</span>
                    <span> 카테고리</span>
                </div>
                <div id="category-content">
                    <div class="category">
                        <input type="checkbox" name="category" id="cate1" value="1">
                        <div class="stylish-checkbox"></div>
                        <label for="cate1">개발/프로그래밍</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="category" id="cate2" value="2">
                        <div class="stylish-checkbox"></div>
                        <label for="cate2">보안 네트워크</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="category" id="cate3" value="3">
                        <div class="stylish-checkbox"></div>
                        <label for="cate3">데이터 사이언스</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="category" id="cate4" value="4">
                        <div class="stylish-checkbox"></div>
                        <label for="cate4">게임 개발</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="category" id="cate5" value="5">
                        <div class="stylish-checkbox"></div>
                        <label for="cate5">커리어</label>
                    </div>
                </div>
            </div>
            <div id="filter-reset">
                <span class="material-symbols-rounded refresh">refresh</span>
                <span> 필터 초기화</span>
            </div>
        </div>

        <div id="content-wrap">
            <!-- jstl 반복문 -->
            <c:forEach items="${reviewList}" var="list">
                <div class="review-box">
                    <div class="review-info">
                        <div class="writer-box">
                            <div class="writer-img">
                                <img src="/app/${list.writerImg}" alt="">
                            </div>
                            <span class="writer-nick">${list.writerNick}</span>
                        </div>
                        <div class="star-box">
                            <span class="star-score hidden">${list.star}</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                        </div>
                    </div>
                    <div class="review-content-box">
                        <div class="review-content">
                            ${list.content}
                        </div>
                        <div class="mentor-info">
                            <span>멘토링 - [${list.mentorNick}]${list.mentoringTitle}</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!-- 임시 -->
            <!-- <div class="review-box">
                <div class="review-info">
                    <div class="writer-box">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span class="writer-nick">망치맨</span>
                    </div>
                    <div class="star-box">
                        <span class="material-symbols-rounded star">star</span>
                        <span class="material-symbols-rounded star">star</span>
                        <span class="material-symbols-rounded star">star</span>
                        <span class="material-symbols-rounded star">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>
                </div>
                <div class="review-content-box">
                    <div class="review-content">
                        <p>제가 국비지원 출신이라서 어떻게 해야 더 좋은 곳으로 갈 수 있을지 막막 했는데 방향을 이제 확실하게 알게
                            <br>
                            되었고 개발과 관련된 다양한 정보들을 얻어 볼 수 있는 기회가 되어서 매우 좋았습니다. 감사합니다.
                        </p>
                    </div>
                    <div class="mentor-info">
                        <span>멘토링 - [망치맨]자바스크립트 마스터 시켜드립니다.</span>
                    </div>
                </div>
            </div> -->

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

    <script>
        //검색, 필터링, 카테고리(체크박스)
        $(document).ready(function(){

             //기존 쿼리스트링 가져오기
            var url = new URL(location.href);
            var search = url.searchParams.get("search");
            var sorting = url.searchParams.get("sorting");
            var category = url.searchParams.get("category");
            var page = url.searchParams.get("page");

            console.log("search : "+search);
            console.log("sorting : "+sorting);
            console.log("category : "+category);
            console.log("page : "+page);


            //검색 채우기
            $("input[name='search']").val(search);

            //검색
            $("#search-btn-area").click(function(){
                var searchInput = $("input[name='search']").val();
                if(category != null){
                    location.href = "/app/mentor/review/list?search="+searchInput+"&category="+category;
                    return;
                }
                location.href = "/app/mentor/review/list?search="+searchInput;
            });

            //정렬 채우기
            $("#sorting-input").children().each(function(){
                if($(this).val() === sorting){
                    $(this).attr("selected", "selected");
                }
            });
            if(sorting == null){
                $("#sorting-input").children().first().attr("selected", "selected");
            }

                                
            //정렬
            $("#sorting-input").change(function(){
                var sortingInput = $(this).val();
                if(search != null && category != null){
                    location.href = "/app/mentor/review/list?search="+search+"&sorting="+sortingInput+"&category="+category;
                    return;
                }
                if(search != null && category == null){
                    location.href = "/app/mentor/review/list?search="+search+"&sorting="+sortingInput;
                    return;
                }
                if(search == null && category != null){
                    location.href = "/app/mentor/review/list?sorting="+sortingInput+"&category="+category;
                    return;
                }
                location.href = "/app/mentor/review/list?sorting="+sortingInput;
            });

            //카테고리 채워놓기
            if(category != null){
                var categoryArr = category.split(",");
                console.log(categoryArr);
                for(var i=0; i<categoryArr.length; i++){
                    $("input[name='category'][value='"+categoryArr[i]+"']").prop("checked", true);
                }
            }

            //카테고리(체크박스)
            $("input[name='category']").change(function(){
            var categoryInput = $(this).val();
            if(category == null){
                location.href = "/app/mentor/review/list?category="+categoryInput;
                return;
            }
            if(category != null){
                var cateLength = categoryArr.length;
                var categoryArrIndex = categoryArr.indexOf(categoryInput);
                if (categoryArrIndex !== -1) {
                categoryArr.splice(categoryArrIndex, 1);
                if (categoryArr.length === 0) {
                    location.href = '/app/mentor/review/list';
                } else {
                    var queryString = categoryArr.join(',');
                    location.href = "/app/mentor/review/list?category=" + queryString;
                }
                } else {
                categoryArr.push(categoryInput);
                var queryString = categoryArr.join(',');
                location.href = "/app/mentor/review/list?category=" + queryString;
                }
            }
            });

            // 초기화
            $('.refresh').click(function(){
                location.href = "/app/mentor/review/list";
            });

            $('#filter-reset').click(function(){
                location.href = "/app/mentor/review/list";
            });

        });

    </script>

    <!-- 별 채우기 스크립트 -->
    <script>
        $(document).ready(function(){
            $(".star-score").each(function(){
                var starNum = parseInt($(this).text());
                if(starNum >= 5){
                    $(this).siblings(".star-icon").addClass("star-fill");
                }else if(starNum >= 4){
                    $(this).siblings(".star-icon").eq(0).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(1).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(2).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(3).removeClass("star").addClass("star-fill");
                }else if(starNum >= 3){
                    $(this).siblings(".star-icon").eq(0).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(1).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(2).removeClass("star").addClass("star-fill");
                }else if(starNum >= 2){
                    $(this).siblings(".star-icon").eq(0).removeClass("star").addClass("star-fill");
                    $(this).siblings(".star-icon").eq(1).removeClass("star").addClass("star-fill");
                }else if(starNum >= 1){
                    $(this).siblings(".star-icon").eq(0).removeClass("star").addClass("star-fill");
                }
            });
        });
    </script>

   
   
    <%@include file="/WEB-INF/views/common/footer.jsp"%>

</body>

</html>
</html>
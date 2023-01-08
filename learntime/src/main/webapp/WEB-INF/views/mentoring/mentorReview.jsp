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
                <div id="search-area"></div>
                <div id="search-btn-area">
                    <span class="material-symbols-rounded search">search</span>
                </div>
            </div>
            <div id="sorting-box">
                <select name="" id="">
                    <option value="">최신순</option>
                    <option value="">별점순</option>
                </select>
            </div>
            <div id="category-box">
                <div id="category-title">
                    <span class="material-symbols-rounded filter">filter_alt</span>
                    <span> 카테고리</span>
                </div>
                <div id="category-content">
                    <div class="category">
                        <input type="checkbox" name="" id="cate1">
                        <div class="stylish-checkbox"></div>
                        <label for="cate1">개발/프로그래밍</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="" id="cate2">
                        <div class="stylish-checkbox"></div>
                        <label for="cate2">보안 네트워크</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="" id="cate3">
                        <div class="stylish-checkbox"></div>
                        <label for="cate3">데이터 사이언스</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="" id="cate4">
                        <div class="stylish-checkbox"></div>
                        <label for="cate4">게임 개발</label>
                    </div>
                    <div class="category">
                        <input type="checkbox" name="" id="cate5">
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
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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
            </div>
            <div class="review-box">
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

    <!-- span 누르면 checkbox, select, input 초기화 시키는 제이쿼리 함수 -->
    <script>
        $(document).ready(function(){
            $("#filter-reset").click(function(){
                $("input[type=checkbox]").prop("checked", false);
                $("select").prop("selectedIndex", 0);
                $("input[type=text]").val("");
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
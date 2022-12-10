<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentorList.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

    <!-- 모달 -->
    <div class="background">
        <div class="foreground">
            <div class="close-btn">첫번째 모달</div>
            

            
            <div id="application-btn">신청하기</div>
        </div>
    </div>


    <!-- 두번재 모달 -->



	<div id="board-banner">
		<div id="banner-text-box">
            <span>멘토링</span>
            <span>지식을 나눠보세요</span>
            <span><a href="/app/mentor/regist">멘토 지원하기 ></a></span>
        </div>
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
            <div id="mentoring-list-box">

                <!-- 반복문 시작지점.. -->
            
                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다 절 믿으세요</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div>

                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div>

                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div>

                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div>

                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div>

                <div class="mentoring">
                    <div class="mentoring-title">
                        <span>스프링으로 생산력 향상 시켜 드립니다</span>
                    </div>
                    <div class="mentoring-job">
                        <span class="mentoring-info">직무</span>
                        <span class="job-input">PO/PM</span>
                    </div>
                    <div class="mentoring-career">
                        <span class="mentoring-info">경력</span>
                        <span class="career-input">30년</span>
                    </div>
                    <div class="mentoring-nacara">
                        <span class="mentoring-info">현직</span>
                        <span class="nacara-input">네카라쿠배당토</span>
                    </div>
                    <div class="star-box">
                        <span class="star-score">4.2</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star-fill">star</span>
                        <span class="material-symbols-rounded star">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
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

    <%@include file="/WEB-INF/views/common/footer.jsp"%>

    <script>
        //모달
        $('.mentoring').on('click',function(){
            $('.background').addClass('show');
        })
        
        $('.close-btn').on('click',function(){
            $('.background').removeClass('show');
        })
          
        
    </script>

</body>



</html>

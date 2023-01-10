<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jstl 라이브러리 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentoring/mentorList.css">
<link rel="stylesheet" href="/app/resources/css/mentoring/calendar.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<!-- 아임포트 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

    <!--첫번째 모달 -->

    <div class="background" id="first-modal">
        <div class="foreground">
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토링 소개</span>
                <div class="close-btn"><span class="material-symbols-rounded close-icon">close</span></div>
            </div>

            <div class="modal-info-box">
                <div id="modal-mentor">
                    <div class="modal-nick">
                        <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="" onerror="this.src='/app/resources/img/profile_default.png';">
                        <a href="" class="modal-mentor-nick">&nbsp코딩하는망치맨</a>
                    </div>
                    <div id="modal-mentoring-info">1회 멘토링 : 
                        <span class = "modal-mentoring-time"></span>/
                        <span class = "modal-mentoring-price"></span>원
                    </div>
                </div>
                <div id="modal-job" class = "modal-mentoring-job">직무 PO/PM</div>
                <div id="modal-career" class = "modal-mentoring-career">경력 30년</div>
            </div>

            <div class="mentoring-modal-title">
                <span class="modal-sub-title">상세 내용</span>
            </div>
            <div class="modal-info-box">
                
                <div id="modal-mentoring-title">스프링으로 생산력 향상 시켜드립니다.</div>
                <div id="modal-mentoring-content">
                    <p>
                        안녕하세요.. 스프링 쌉고수 입니다. 생산력 향상 시켜드립니다.
                        <br><br>
                        줌으로 비대면 진행 합니다.
                        <br><br>
                        <img src="/app/resources/img/spring_book.jpg" alt="">
                        <br><br>
                        멘토링 교재입니다. 참고 바랍니다.
                    </p>
                </div>
            </div>
        

            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토링 후기</span>
                <a href="/app/mentor/review/list" class="more-btn">
                    <span>멘토 후기 더보기&nbsp;</span>
                    <span class="material-symbols-rounded close-icon">navigate_next</span>
                </a>
            </div>
            <div class="modal-info-box main-review-box">

                <!-- 임시 -->
                <div class="modal-review-box">
                    <div class="modal-review-info">
                        <div class="writer-box">
                            <div class="modal-nick">
                                <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                                <span class="writer-nick">망치맨</span>
                            </div>        
                        </div>
                        <div class="star-box">
                            <span class="star-score hidden">5</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                        </div>
                    </div>
                    <div class="review-content">
                        <p>
                            제가 국비지원 출신이라서 어떻게 해야 더 좋은 곳으로 갈 수 있을지 막막 했는데 방향을 이제 확실하게 알게 되었고 개발과 관련된 다양한 정보들을 얻어 볼 수 있는 기회가 되어서 매우 좋았습니다. 감사합니다.
                        </p>
                    </div>
                </div>
                <!-- 리뷰 반복 끝 -->

            </div>
            <div id="application-btn" class="modal-btn">신청하기</div>
        </div>
    </div>
<!-- 폼태그 자동 submit 방지-->
<form action="/app/mentor/mentoring/apply" method="post" id="pay-form" onSubmit="return checkSubmit()">
    <input type="hidden" name="" id="hidden-input" value="">
    <!-- 두번째 모달 -->
    <div id="second-modal" class="background">
        <div id="second-modal-content" class="foreground">
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토링 소개</span>
                <div class="close-btn"><span class="material-symbols-rounded close-icon">close</span></div>
            </div>

            <div class="modal-info-box">
                <div id="modal-mentor">
                    <div class="modal-nick">
                        <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                        <a href="" class="modal-mentor-nick">&nbsp코딩하는망치맨</a>
                    </div>
                    <div id="modal-mentoring-info">1회 멘토링 : 
                        <span class = "modal-mentoring-time"></span>/
                        <span class = "modal-mentoring-price"></span>원
                    </div>
                </div>
                <div id="modal-job" class = "modal-mentoring-job">직무 PO/PM</div>
                <div id="modal-career" class = "modal-mentoring-career">경력 30년</div>
            </div>

            <div class="mentoring-modal-title">
                <span class="modal-sub-title">스케줄 설정</span>
            </div>

            <div class="modal-info-box">
                <!-- 캘린더 시작 -->
                <div id="calendar-wrap">
                    <div class="calendar">
                        <div class="header">
                            <div class="year-month"></div>
                            <div class="nav">
                                <button class="nav-btn go-prev" onclick="prevMonth();">&lt;</button>
                                <button class="nav-btn go-today" onclick="goToday();">Today</button>
                                <button class="nav-btn go-next" onclick="nextMonth();">&gt;</button>
                            </div>
                        </div>
                        <div class="main">
                            <div class="days">
                                <div class="day">일</div>
                                <div class="day">월</div>
                                <div class="day">화</div>
                                <div class="day">수</div>
                                <div class="day">목</div>
                                <div class="day">금</div>
                                <div class="day">토</div>
                            </div>
                            <div class="dates"></div>
                        </div>
                    </div>
                    <input id="date-input" type="hidden" name="reservationDate">
                    
                </div>
                <!-- 캘린더 끝 -->
            </div>
            <div class="modal-info-box" id="time-select-box">
                <select name="reservationTime" id="time-select">
                    <option value="" disabled selected>시간을 선택해 주세요</option>
                    <!-- 시간 받아올 부분 -->
                </select>
                <div id="time-select-result"></div>
            </div>
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">연락처</span>
            </div>
            <div class="modal-info-box sm-box">
                <input name = "phoneNo" type="text" placeholder="01000000000" id="phone-input">
            </div>
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">이메일</span>
            </div>
            <div class="modal-info-box sm-box">
                <input name="email" type="text" placeholder="example@email.com" id="email-input">
            </div>
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토에게 남길 메세지</span>
            </div>
            <div class="modal-info-box sm-box" id="massage-box">
                <input name="massage" id="massage-input" type="text" placeholder="멘토에게 남길 메세지를 간단히 작성해주세요">
            </div>

            <div class="modal-btn-box">
                <div id="pre-btn-2" class="modal-btn pre-btn">이전으로</div>
                <div id="next-btn-2" class="modal-btn next-btn">다음으로</div>
            </div>
        </div> 
    </div> 

    <!-- 세번째 모달 -->
    <div id="third-modal" class="background">
        <div id="third-modal-content" class="foreground">
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토링 소개</span>
                <div class="close-btn"><span class="material-symbols-rounded close-icon">close</span></div>
            </div>

            <div class="modal-info-box">
                <div id="modal-mentor">
                    <div class="modal-nick">
                        <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                        <a href="" class="modal-mentor-nick">&nbsp코딩하는망치맨</a>
                    </div>
                    <div id="modal-mentoring-info">1회 멘토링 : 
                        <span class = "modal-mentoring-time"></span>/
                        <span class = "modal-mentoring-price"></span>원
                    </div>
                </div>
                <div id="modal-job" class = "modal-mentoring-job">직무 PO/PM</div>
                <div id="modal-career" class = "modal-mentoring-career">경력 30년</div>
            </div>

            <div id="modal-seletedmentor">
                <div class="grid-title" >멘토링 명</div>
                <div id="grid-1">잘 가르쳐 드립니다</div>
                <div class="grid-title" >멘토</div>
                <div id="grid-2">코딩하는망치맨</div>
                <div class="grid-title" >멘티</div>
                <div id="grid-3">김량우</div>
                <div class="grid-title">일정</div>
                <div id="grid-4">2022.12.04, 20:00~22:00</div>
                <div class="grid-title">연락처</div>
                <div id="grid-5">010-9697-9377</div>
                <div class="grid-title">이메일</div>
                <div id="grid-6">ryangwooz@gmail.com</div>
                <div class="grid-title">메세지</div>
                <div id="grid-7">잘좀 해달라구</div>
                <input type="hidden" name="mentorNo" value="" id="mentorNo-input">
                <input type="hidden" name="price" value="" id="price-input">
            </div>
            
            <div class="mentoring-modal-title" id="pay-info-box">
                <span class="modal-sub-title">결제금액</span>
                <span id = "payment-price">22,000원</span>
            </div>

            <div id="pay-agree-box">
                <input type="checkbox" name="" id="pay-agree">
                <label for="pay-agree">구매조건 및 결제대행 서비스 약관에 동의하여아 합니다.(필수)</label>
            </div>
            
            <div class="modal-btn-box">
                <div id="pre-btn-3" class="modal-btn pre-btn">이전으로</div>
                <div id="next-btn-3" class="modal-btn next-btn">결제하기</div>
            </div>
        </div> 
    </div>


    <!-- 네번째 모달 -->
    <div id="fourth-modal" class="background">
        <div id="pay-modal">
            <div id="pay-modal-title">결제수단 선택</div>
            <div class="pay-btn">
                <img src="/app/resources/img/payment_icon_yellow_small.png" alt="">
                <span>카카오페이</span>
            </div>
            <div class="pay-btn">
                <span class="material-symbols-outlined payment-icon">credit_card</span>
                <span>신용카드</span>
            </div>
        </div> 
    </div> 

<!-- 폼태그 끝-->
</form>

<script type="text/javascript" src="/app/resources/js/mentoring/calendar.js"></script>

    
	<div id="board-banner"> 
		<div id="banner-text-box">
            <span>멘토링</span>
            <span>지식을 나눠보세요</span>
            <span><a href="/app/mentor/mymentoring/temp2">멘토 지원하기 ></a></span>
        </div>
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
            <div id="mentoring-list-box">

                <!-- 멘토리스트 반복 -->
                <c:forEach items="${mentorList}" var="mentor">
                    <div class="mentoring">
                        <input type="hidden" name="" value="${mentor.no}">
                        <div class="mentoring-title">
                            <span>${mentor.title}</span>
                        </div>
                        <div class="mentoring-job">
                            <span class="mentoring-info">직무</span>
                            <span class="job-input">${mentor.jobName}</span>
                        </div>
                        <div class="mentoring-career">
                            <span class="mentoring-info">경력</span>
                            <span class="career-input">${mentor.career}</span>
                        </div>
                        <div class="mentoring-nacara">
                            <span class="mentoring-info">현직</span>
                            <span class="nacara-input">${mentor.currentJob}</span>
                        </div>
                        <div class="star-box">
                            <span class="star-score">${mentor.star}(${mentor.reviewCnt})</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                            <span class="material-symbols-rounded star-icon star">star</span>
                        </div>

                        <div class="mentor">
                            <div class="writer-img">
                                <img src="/app/${mentor.writerImg}" alt="" onerror="this.src='/app/resources/img/profile_default.png';">
                            </div>
                            <span>${mentor.nick}</span>
                        </div>
                    </div>
                </c:forEach>
                <!-- 멘토리스트 반복 끝 -->
                
                

                <!-- 화면용.. -->
            

                <!-- <div class="mentoring">
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
                        <span class="material-symbols-rounded star star-icon">star</span>
                        <span class="material-symbols-rounded star star-icon">star</span>
                        <span class="material-symbols-rounded star star-icon">star</span>
                        <span class="material-symbols-rounded star star-icon">star</span>
                        <span class="material-symbols-rounded star star-icon">star</span>
                    </div>

                    <div class="mentor">
                        <div class="writer-img">
                            <img src="/app/resources/img/profile01.png" alt="">
                        </div>
                        <span>코딩하는망치맨</span>
                    </div>
                </div> -->


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
                    location.href = "/app/mentor/list?search="+searchInput+"&category="+category;
                    return;
                }
                location.href = "/app/mentor/list?search="+searchInput;
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
                    location.href = "/app/mentor/list?search="+search+"&sorting="+sortingInput+"&category="+category;
                    return;
                }
                if(search != null && category == null){
                    location.href = "/app/mentor/list?search="+search+"&sorting="+sortingInput;
                    return;
                }
                if(search == null && category != null){
                    location.href = "/app/mentor/list?sorting="+sortingInput+"&category="+category;
                    return;
                }
                location.href = "/app/mentor/list?sorting="+sortingInput;
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
                location.href = "/app/mentor/list?category="+categoryInput;
                return;
            }
            if(category != null){
                var cateLength = categoryArr.length;
                var categoryArrIndex = categoryArr.indexOf(categoryInput);
                if (categoryArrIndex !== -1) {
                categoryArr.splice(categoryArrIndex, 1);
                if (categoryArr.length === 0) {
                    location.href = '/app/mentor/list';
                } else {
                    var queryString = categoryArr.join(',');
                    location.href = "/app/mentor/list?category=" + queryString;
                }
                } else {
                categoryArr.push(categoryInput);
                var queryString = categoryArr.join(',');
                location.href = "/app/mentor/list?category=" + queryString;
                }
            }
            });

            // 초기화
            $('.refresh').click(function(){
                location.href = "/app/mentor/list";
            });

            $('#filter-reset').click(function(){
                location.href = "/app/mentor/list";
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
    <script src="/app/resources/js/mentoring/mentoring.js"></script>

    <!-- 모달 스크립트 -->
    <script>
        //버튼 클릭시 show 클래스 추가
        $('.mentoring').on('click',function(){
            $('#first-modal').addClass('show');
            //input 초기화
            $('#date-input').val("");
            $('#time-select').val("");
            $('#time-select').attr('disabled', true);
            $('#time-select-result').text('');
            $('#phone-input').val("");
            $('#message-input').val("");
            $('#email-input').val("");

        })
        //닫기 버튼 클릭시 show 클래스 제거
        $('.close-btn').on('click',function(){
            $('#first-modal').removeClass('show');
            $('#second-modal').removeClass('show');
            $('#third-modal').removeClass('show');
        })
        //#application-btn 클릭시 #first-modal 제거, #second-modal 추가 하고 이벤트 버블링 막아주기
        $('#application-btn').on('click',function(e){
            e.stopPropagation();
            $('#first-modal').removeClass('show');
            $('#second-modal').addClass('show');
        })
        //#next-btn-2 클릭시 2번째 닫고 3번째 열기
        $('#next-btn-2').on('click',function(){
            if($('#date-input').val() != "" && $('#time-select-result').text() != "" && $('#phone-input').val() != "" && $('#message-input').val() != "" && $('#email-input').val() != ""){
                $('#second-modal').removeClass('show');
                $('#third-modal').addClass('show');
            }else{
                alert("모든 항목을 채워주세요.");
            }
        });
        //#pre-btn-2 클릭시 2번째 닫고 1번째 열기
        $('#pre-btn-2').on('click',function(){
            $('#second-modal').removeClass('show');
            $('#first-modal').addClass('show');
        });
        //#next-btn-3 클릭시 4번째 열기
        $('#next-btn-3').on('click',function(){
            $('#fourth-modal').addClass('show');
        });
        //#pre-btn-3 클릭시 3번째 닫고 2번째 열기
        $('#pre-btn-3').on('click',function(){
            $('#third-modal').removeClass('show');
            $('#second-modal').addClass('show');
        });

        //esc 누르면 모달창 닫기
        $(document).keyup(function(e){
            if(e.keyCode == 27){
                $('#first-modal').removeClass('show');
                $('#second-modal').removeClass('show');
                $('#third-modal').removeClass('show');
                $('#fourth-modal').removeClass('show');
            }
        });

        // background 클릭시 모달창 닫고 foreground 클릭시 모달창 닫지 않기
        $('#first-modal').on('mousedown',function(){
            $('#first-modal').removeClass('show');
        });
        $('#second-modal').on('mousedown',function(){
            $('#second-modal').removeClass('show');
        });
        $('#third-modal').on('mousedown',function(){
            $('#third-modal').removeClass('show');
        });
        $('#fourth-modal').on('mousedown',function(){
            $('#fourth-modal').removeClass('show');
        });
        $('.foreground').on('mousedown',function(e){
            e.stopPropagation();
        });
        $('#pay-modal').on('mousedown',function(e){
            e.stopPropagation();
        });

        // 멘토링 신청 정보 채우기
        $(document).on('click', '#next-btn-2', function(){
            var date = $('#date-input').val();
            var time = $('#time-select').val();
            var email = $('#email-input').val();
            var phoneNo = $('#phone-input').val();
            var massage = $('#massage-input').val();
            var userNick = '${loginMember.nick}';

            $('#grid-3').text(userNick);
            $('#grid-4').text(date+', '+time);
            $('#grid-5').text(phoneNo);
            $('#grid-6').text(email);
            $('#grid-7').text(massage);
        });

        //자동 서브밋 방지
        function checkSubmit(){
            var hiddenInput = $('#hidden-input').val();

            console.log(hiddenInput);
            if(hiddenInput == 1){
                return true;
            }else{
                return false;
            }

        }

    </script>

    <!-- 결제 -->
    <script>

        // 임시 결제
        // $('.pay-btn').eq(0).on('click', function() {
        //     $('#hidden-input').val(1);
        //     $('#pay-form')[0].submit();
        // });
        
        // 카카오페이 활성화
        $('.pay-btn').eq(0).on('click', function() {
            requestPay();
        });
        
        var IMP = window.IMP;
        IMP.init('imp52718328');//가맹점 식별코드
    
        function requestPay() {
            let temp = false;
            IMP.request_pay({
                pg: "kakaopay.TC0ONETIME",
                pay_method: "card",
                merchant_uid : 'merchant_'+ new Date().getTime(),
                name : '결제테스트',
                amount : $('#price-input').val(),
                buyer_email : 'iamport@siot.do',
                buyer_name : '구매자',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            },
            function (rsp) { 
                console.log(rsp);
                if (rsp.success) {
                    var msg = '결제가 완료되었습니다.\n마이페이지에서 확인해주세요.';
                    alert(msg);
                    temp = true;
                    $('#hidden-input').val(1);
                    $('#pay-form')[0].submit();
                } else {
                    var msg = '결제에 실패하였습니다.';
                    msg += '에러내용 : ' + rsp.error_msg;
                    alert(msg);
                    location.href = '/app/mentor/list';
                }
                
             });
    
             return temp;
        }
        
    </script>

</body>



</html>

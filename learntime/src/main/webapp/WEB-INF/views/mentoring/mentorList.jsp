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
    <div class="background" id="first-modal">
        <div class="foreground">
            <div class="mentoring-modal-title">
                <span class="modal-sub-title">멘토링 소개</span>
                <div class="close-btn"><span class="material-symbols-rounded close-icon">close</span></div>
            </div>

            <div class="modal-info-box">
                <div id="modal-mentor">
                    <div class="modal-nick">
                        <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                        <a href="">&nbsp코딩하는망치맨</a>
                    </div>
                    <div id="modal-mentoring-info">1회 멘토링 : 1시간 / 22,000원 / 1명</div>
                </div>
                <div id="modal-job">직무 PO/PM</div>
                <div id="modal-career">경력 30년</div>
            </div>

            <div class="modal-info-box">
                <div id="modal-metoring-title">스프링으로 생산력 향상 시켜드립니다.</div>
                <div id="modal-metoring-content">
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



            <div class="modal-info-box">
                <div class="modal-review-box">
                    <div class="modal-review-info">
                        <div class="writer-box">
                            <div class="modal-nick">
                                <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                                <span class="writer-nick">망치맨</span>
                            </div>        
                        </div>
                        <div class="star-box">
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                        </div>
                    </div>
                    <div class="review-content">
                        <p>
                            제가 국비지원 출신이라서 어떻게 해야 더 좋은 곳으로 갈 수 있을지 막막 했는데 방향을 이제 확실하게 알게 되었고 개발과 관련된 다양한 정보들을 얻어 볼 수 있는 기회가 되어서 매우 좋았습니다. 감사합니다.
                        </p>
                    </div>
                </div>
                <div class="modal-review-box">
                    <div class="modal-review-info">
                        <div class="writer-box">
                            <div class="modal-nick">
                                <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                                <span class="writer-nick">망치맨</span>
                            </div>        
                        </div>
                        <div class="star-box">
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                        </div>
                    </div>
                    <div class="review-content">
                        <p>
                            제가 국비지원 출신이라서 어떻게 해야 더 좋은 곳으로 갈 수 있을지 막막 했는데 방향을 이제 확실하게 알게 되었고 개발과 관련된 다양한 정보들을 얻어 볼 수 있는 기회가 되어서 매우 좋았습니다. 감사합니다.
                        </p>
                    </div>
                </div>
                <div class="modal-review-box">
                    <div class="modal-review-info">
                        <div class="writer-box">
                            <div class="modal-nick">
                                <img class="modal-profile-img" src="/app/resources/img/profile01.png" alt="">
                                <span class="writer-nick">망치맨</span>
                            </div>        
                        </div>
                        <div class="star-box">
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                            <span class="material-symbols-rounded star">star</span>
                        </div>
                    </div>
                    <div class="review-content">
                        <p>
                            제가 국비지원 출신이라서 어떻게 해야 더 좋은 곳으로 갈 수 있을지 막막 했는데 방향을 이제 확실하게 알게 되었고 개발과 관련된 다양한 정보들을 얻어 볼 수 있는 기회가 되어서 매우 좋았습니다. 감사합니다.
                        </p>
                    </div>
                </div>
            </div>
            <div id="application-btn">신청하기</div>
        </div>
    </div>

    <!-- make modal div -->
    <div id="second-modal" class="background">
        <div id="second-modal-content" class="foreground">
            <div id="second-modal-header">
                <span>멘토링 신청</span>
                <span id="second-modal-close">X</span>
            </div>
            <div id="second-modal-body">
                <div id="second-modal-body-content">
                    <div id="second-modal-body-content-title">
                        <span>멘토링 신청</span>
                    </div>
                    <div id="second-modal-body-content-text">
                        <span>멘토링 신청을 하시겠습니까?</span>
                    </div>
                    <div id="second-modal-body-content-btn">
                        <div id="second-modal-body-content-btn-cancel">취소</div>
                        <div id="second-modal-body-content-btn-ok">확인</div>
                    </div>
                </div>
            </div>
        </div> 
    </div> 

    
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
        //버튼 클릭시 show 클래스 추가
        $('.mentoring').on('click',function(){
            $('#first-modal').addClass('show');
        })
        //닫기 버튼 클릭시 show 클래스 제거
        $('.close-btn').on('click',function(){
            $('#first-modal').removeClass('show');
        })
        //#application-btn 클릭시 #first-modal 제거, #second-modal 추가 하고 이벤트 버블링 막아주기
        $('#application-btn').on('click',function(e){
            e.stopPropagation();
            $('#first-modal').removeClass('show');
            $('#second-modal').addClass('show');
        })

        //#next-btn 클릭시 #second-modal 제거, #third-modal 추가
        $('#next-btn').on('click',function(){
            $('#second-modal').removeClass('show');
            $('#third-modal').addClass('show');
        });

        //esc 누르면 모달창 닫기
        $(document).keyup(function(e){
            if(e.keyCode == 27){
                $('#first-modal').removeClass('show');
                $('#second-modal').removeClass('show');
                $('#third-modal').removeClass('show');
            }
        });

        // background 클릭시 모달창 닫고 foreground 클릭시 모달창 닫지 않기
        $('#first-modal').on('click',function(){
            $('#first-modal').removeClass('show');
        });
        $('#second-modal').on('click',function(){
            $('#second-modal').removeClass('show');
        });
        $('#third-modal').on('click',function(){
            $('#third-modal').removeClass('show');
        });
        $('.foreground').on('click',function(e){
            e.stopPropagation();
        });

    </script>

</body>



</html>

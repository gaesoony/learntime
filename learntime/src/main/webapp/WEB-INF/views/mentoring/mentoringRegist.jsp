<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/mentoring/mentoringRegist.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
</head>
<body>
    <%@include file="/WEB-INF/views/common/header.jsp"%>

	<div id="board-banner">
		<div id="banner-text-box">
            <span>멘토링 설정</span>
        </div>
	</div>

    <div id="main-wrap">
        <form action="/app/mentor/mentoring/regist" method="post">
        <div id="basic-info-box">
            <div id="basic-info-title" class="title">
                <span>기본 정보</span>
                <div id="save-btn">저장</div>
            </div>

            <div id="basic-info" class="info-box">
                <div id="phone-title" class="sub-title">
                    연락 할 전화번호
                    <span class="sub-title-plus">('-'를 빼고 작성해주세요)</span>
                </div>
                <input type="text" id="phone-input" placeholder="000-0000-0000" name="mPhoneNo">
                <div id="email-title" class="sub-title">
                    연락 할 이메일
                    <span class="sub-title-plus">(형식에 맞게 작성 해주세요)</span>
                </div>
                <input type="text" id="" placeholder="example@email.com" name="mEmail">
            </div>

            <div id="category-title" class="title">
                <span>카테고리</span>
            </div>

            <div id="category" class="info-box">
                <!-- 카테고리 반복문.. -->
                <input type="radio" name="cateNo" id="mentoring-cate1" value="1">
                <label for="mentoring-cate1">개발/프로그래밍</label>
                <input type="radio" name="cateNo" id="mentoring-cate2" value="2">
                <label for="mentoring-cate2">보안/네트워크</label>
                <input type="radio" name="cateNo" id="mentoring-cate3" value="3">
                <label for="mentoring-cate3">데이터사이언스</label>
                <input type="radio" name="cateNo" id="mentoring-cate4" value="4">
                <label for="mentoring-cate4">게임개발</label>
                <input type="radio" name="cateNo" id="mentoring-cate5" value="5">
                <label for="mentoring-cate5">커리어</label>
                <!-- 카테고리 반복문 끝 -->
            </div>

            <div id="mentoring-title" class="title"> 
                <span>멘토링 정보</span>
            </div>

            <div id="mentoring-info" class="info-box">
                <div id="mentoring-name" class="sub-title">멘토링 명</div>
                <input id="name-input" type="text" placeholder="멘티에게 보여 줄 한줄 소개를 작성해주세요">

                <div id="mentoring-info2">

                    <div class="mentoring-info2">
                        <div class="sub-title">현직</div>
                        <input class="short-input" type="text" placeholder="현재 직장을 입력해주세요" name = "currentJob">
                    </div>

                    <div class="mentoring-info2">
                        <div class="sub-title">멘토 직무</div>

                        <select name="job" id="">
                            <!-- 직무 조회 해서 반복문 -->
                            <option value=""></option>
                            <option value=""></option>
                            <!-- 직무 반복 끝 -->
                        </select>
                    </div>
                    
                    <div class="mentoring-info2">
                        <div class="sub-title">멘토 경력</div>
                        <select name="career" id="">
                            <option value="" disabled>선택</option>
                            <option value="1" >1년 미만</option>
                            <option value="2">1년 이상</option>
                            <option value="3">3년 이상</option>
                            <option value="4">5년 이상</option>
                            <option value="5">10년 이상</option>
                        </select>
                    </div>
                    
                    <div class="mentoring-info2">
                        <div class="sub-title">
                            멘토링 가격
                            <span class="sub-title-plus">(3,000원 이상을 입력 해주세요)</span>
                        </div>
                        <input class="short-input" type="text" name="price">
                    </div>
                    <div class="mentoring-info2">
                        <div class="sub-title">1회당 시간</div>
                        <select name="maxHour" id="time-select">
                            <option value="1" selected>30분</option>
                            <option value="2">1시간</option>
                            <option value="3">1시간30분</option>
                            <option value="4">2시간</option>
                            <option value="5">2시간30분</option>
                            <option value="6">3시간</option>
                            <option value="7">3시간30분</option>
                            <option value="8">4시간</option>
                        </select>
                    </div>
                </div>

                <div id="schedule-title" class="sub-title">스케줄 설정</div>
               
                <!-- 스케줄 -->
                
                <table id="schedule-table">
                    <thead>
                      <tr>
                        <th id="time-slot"></th>
                        <th class="week">월요일</th>
                        <th class="week">화요일</th>
                        <th class="week">수요일</th>
                        <th class="week">목요일</th>
                        <th class="week">금요일</th>
                        <th class="week">토요일</th>
                        <th class="week">일요일</th>
                      </tr>
                    </thead>
                    <tbody></tbody>
                </table>

                <!-- 스케줄 스크립트 -->
                <script type="text/javascript" src="/app/resources/js/mentoring/schedule.js"></script>
                
               
                <div id="schedule-title" class="sub-title">멘토링 상세 설명</div>
                <textarea class="summernote" name="detail"></textarea>

            </div>

            <div id="welcome-title" class="title">
                <span>환영 공지</span>
            </div>

            <div id="basic-info" class="info-box">
                <div id="phone-title" class="sub-title">멘토링 환영 공지</div>
                <textarea name="welcomePost" id="" cols="30" rows="10" placeholder="공지 혹은 환영 메세지등 자유롭게 작성 해주세요."></textarea>
            </div>

        </div>

        <div id="btn-box">
            <div id="cancel-btn">취소하기</div>
            <input type="submit" value="저장하기">
        </div>
        </form>

    </div>


    <%@include file ="/WEB-INF/views/common/footer.jsp" %>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR"
        });
    </script>

</body>
</html>
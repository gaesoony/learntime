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
            <!-- <span>지식을 나눠보세요</span>
            <span><a href="">멘토 지원하기 ></a></span> -->
        </div>
	</div>

    <div id="main-wrap">
        <form action="">
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
                <input type="text" id="phone-input" placeholder="000-0000-0000">
                <div id="email-title" class="sub-title">
                    연락 할 이메일
                    <span class="sub-title-plus">(형식에 맞게 작성 해주세요)</span>
                </div>
                <input type="text" id="" placeholder="example@email.com">
            </div>

            <div id="category-title" class="title">
                <span>카테고리</span>
            </div>

            <div id="category" class="info-box">
                <input type="radio" name="mentoring-cate" id="mentoring-cate1">
                <label for="mentoring-cate1">개발/프로그래밍</label>
                <input type="radio" name="mentoring-cate" id="mentoring-cate2">
                <label for="mentoring-cate2">보안/네트워크</label>
                <input type="radio" name="mentoring-cate" id="mentoring-cate3">
                <label for="mentoring-cate3">데이터사이언스</label>
                <input type="radio" name="mentoring-cate" id="mentoring-cate4">
                <label for="mentoring-cate4">게임개발</label>
                <input type="radio" name="mentoring-cate" id="mentoring-cate5">
                <label for="mentoring-cate5">커리어</label>
            </div>

            <div id="mentoring-title" class="title"> 
                <span>멘토링 정보</span>
            </div>

            <div id="mentoring-info" class="info-box">
                <div id="mentoring-name" class="sub-title">멘토링 명</div>
                <input id="name-input" type="text" placeholder="멘티에게 보여 줄 한줄 소개를 작성해주세요">

                <div id="mentoring-info2">
                    <div class="mentoring-info2">
                        <div class="sub-title">멘토 직무</div>

                        <select name="" id="">
                            <!-- 직무 반복문 -->
                            <option value="">선택</option>
                            <option value=""></option>
                            <!-- 직무 반복 끝 -->
                        </select>
                    </div>
                    
                    <div class="mentoring-info2">
                        <div class="sub-title">멘토 경력</div>
                        <select name="" id="">
                            <option value="">선택</option>
                            <option value=""></option>
                        </select>
                    </div>
                    <div class="mentoring-info2">
                        <div class="sub-title">
                            멘토링 가격
                            <span class="sub-title-plus">(3,000원 이상을 입력 해주세요)</span>
                        </div>
                        <input class="short-input" type="text">
                    </div>
                    <div class="mentoring-info2">
                        <div class="sub-title">1회당 시간</div>
                        <select name="" id="time-select">
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
                        <th id="time-slot"></th> <!-- Blank column for the time slots -->
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

                <script>
                    const days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];
                    const numSlotsPerDay = 24 * 2; // 24 hours * 2 slots per hour
        
                    for (let i = 0; i < numSlotsPerDay; i++) {
                        //시간표시 30분 단위로 24시간
                        let timeSlotStart = Math.floor(i / 2) < 10 ? '0' + Math.floor(i / 2) + ':' + (i % 2 === 0 ? '00' : '30') : Math.floor(i / 2) + ':' + (i % 2 === 0 ? '00' : '30');
                        let timeSlotEnd = Math.floor((i + 1) / 2) < 10 ? '0' + Math.floor((i + 1) / 2) + ':' + ((i + 1) % 2 === 0 ? '00' : '30') : Math.floor((i + 1) / 2) + ':' + ((i + 1) % 2 === 0 ? '00' : '30');
                        // let timeSlotLabel = timeSlotStart + '-' + timeSlotEnd;

                        let timeSlotLabel = timeSlotStart;


            
                        let row = $('<tr>');
                        let timeSlotColumn = $('<td>').text(timeSlotLabel);
                        row.append(timeSlotColumn);
        
                        for (let j = 0; j < days.length; j++) {
                            let timeSlotValue = days[j] + '-' + timeSlotStart + '-' + timeSlotEnd;
                            let checkboxId = days[j] + '-' + (i + 1);
                            
                            let checkbox = $('<input>', {
                            type: 'checkbox',
                            name: 'time',
                            id: checkboxId,
                            value: timeSlotValue
                            });
                            
                            let label = $('<label>', {
                            for: checkboxId,
                            text: ''
                            });
            
                            let cell = $('<td>', {
                            class: 'time-slot'
                            });
                            cell.append(checkbox);
                            cell.append(label);
                            row.append(cell);
                        }
        
                    $('#schedule-table tbody').append(row);
                    }

                    // 체크박스 클릭시 색상변경
                    $('input[type="checkbox"]').change(function(){
                        if($(this).is(":checked")){
                            $(this).next().addClass('back-green');
                        }else{
                            $(this).next().removeClass('back-green');
                        }
                    });

                    // 스케줄
                    $(document).ready(function() {
                        //초기값 1
                        var selectedTime = 1;
                    
                        //선택한 value값 가져오기
                        $('#time-select').on('change', function() {
                            selectedTime = $(this).val();

                            // 초기화 알림
                            if (confirm("스케줄이 초기화 됩니다. 초기화 하시겠습니까?")) {
                                // 초기화
                                $('input[type="checkbox"]').prop('checked', false);
                                $('input[type="checkbox"]').next().removeClass('back-green');
                            } else {
                                // 초기화 취소
                                return false;
                            }

                        });

                        $('input[type="checkbox"]').change(function() {
                            // 요일가져오기
                            var Day = $(this).val().substring(0, 3);

                            // 숫자들고오기
                            var num = $(this).attr('id').split('-')[1];

                            // 시간 선택값만큼 채워주기
                            for (var i = 0; i < selectedTime; i++) {
                                checkboxId = Day + '-' + (Number(num) + i);
                                $('#' + checkboxId).prop('checked', true);
                                $('#' + checkboxId).next().addClass('back-green');
                            }
                                
                        });

                        

                    });
                    

                </script>


               
                <div id="schedule-title" class="sub-title">멘토링 상세 설명</div>
                <textarea class="summernote" name="editordata"></textarea>

            </div>

            <!--  -->

            <div id="welcome-title" class="title">
                <span>환영 공지</span>
            </div>

            <div id="basic-info" class="info-box">
                <div id="phone-title" class="sub-title">멘토링 환영 공지</div>
                <textarea name="" id="" cols="30" rows="10" placeholder="공지 혹은 환영 메세지등 자유롭게 작성 해주세요."></textarea>
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
window.onload = function() {

    $(document).on('click', '.mentoring', function(){
        var no = $(this).children('input[type="hidden"]').val();
        $.ajax({
            url: '/app/mentor/mentoring/detail',
            type: 'GET',
            data: {
                'no' : no
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function(data) {  
                var jsonData = $.parseJSON(data);
                console.log(jsonData);
                const parsePrice = parseInt(jsonData.mv.price).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

                var hours = Math.floor(parseInt(jsonData.mv.maxHour)*30 / 60);
                var minutes = parseInt(jsonData.mv.maxHour)*30 % 60;
                const parseTime = hours + '시간 ' + minutes + '분';

                //모달창 비워주기
                $('#modal-mentoring-title').text("");
                $('#modal-mentoring-content').text("");

                // 첫번째 모달창 채워주기
                // 기본정보
                $('.modal-mentor-nick').text(jsonData.mv.nick);
                $('.modal-mentoring-price').text(parsePrice);
                $('.modal-mentoring-time').text(parseTime);
                $('.modal-mentoring-job').text('직무 ' + jsonData.mv.jobName);
                $('.modal-mentoring-career').text('경력 ' +  jsonData.mv.career);
                $('.modal-profile-img').attr('src', '/app/' + jsonData.mv.writerImg);

                $('#modal-mentoring-title').text(jsonData.mv.title);
                $('#modal-mentoring-content').append(jsonData.mv.detail);

                //결제정보 비우기
                $('#modal-seletedmentor').children().filter(':odd').text("");

                //결제정보 기본정보 채우기
                $('#grid-1').text(jsonData.mv.title);
                $('#grid-2').text(jsonData.mv.nick);
                $('#mentorNo-input').val(jsonData.mv.no);
                $('#price-input').val(jsonData.mv.price);
                $('#payment-price').text(parsePrice);

                // 댓글 비워주기
                $('.main-review-box').html("");

                // 댓글 채워주기 
                
                if(jsonData.rvList[0] != null){

                    $.each(jsonData.rvList, function(index, rvList) {
                        console.log(rvList.writerImg);
                        console.log(rvList.writerNick);
                        console.log(rvList);
                        var commentHtml =
                        '<div class="modal-review-box">' + 
                            '<div class="modal-review-info">' + 
                                '<div class="writer-box">' + 
                                    '<div class="modal-nick">' + 
                                        '<img class="modal-profile-img" src="/app/'+ rvList.writerImg + '" alt="" onerror="this.src=\'/app/resources/img/profile_default.png\';">' + 
                                        '<span class="writer-nick">'+ rvList.writerNick + '</span>' + 
                                    '</div>' +
                                '</div>' + 
                                '<div class="star-box">' + 
                                    '<span class="star-score hidden">' + rvList.star + '</span>' + 
                                    '<span class="material-symbols-rounded star-icon star">star</span>' + 
                                    '<span class="material-symbols-rounded star-icon star">star</span>' + 
                                    '<span class="material-symbols-rounded star-icon star">star</span>' + 
                                    '<span class="material-symbols-rounded star-icon star">star</span>' + 
                                    '<span class="material-symbols-rounded star-icon star">star</span>' + 
                                '</div>' + 
                            '</div>' + 
                            '<div class="review-content">' + 
                                '<p>' + 
                                rvList.content + 
                                '</p>' + 
                            '</div>' + 
                        '</div>';

                        $('.main-review-box').append(commentHtml);

                        //별점
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
                }else{
                    var commentHtml = 
                    '<div class="modal-review-box"><div class="no-cmt">작성된 댓글이 없습니다 :(</div></div>';
                    $('.main-review-box').append(commentHtml);
                }


                //스케줄 받아와서 달력에 표시

                //.date 클래스의 div의 아이디가 오늘 날짜 이상, 한달 이내인 div 에 class="able-date" 추가
                // var today = new Date();
                // var parseToday = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
                // console.log('오늘의 날짜는 ~?'+ parseToday);
                
                // //id가 parseToday인 div에 class="able-date" 추가
                // $('#'+parseToday).addClass('able-date');
                


            },
            error: function(request, status, error) {
                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    });


    $(document).on('click', '.date', function(){
        var no = $('#mentorNo-input').val();
        var ableDay = $(this).attr('class').split(' ')[1];
        var date = $(this).attr('id');

        console.log(ableDay);

        $.ajax({
            url: '/app/mentor/schedule',
            type: 'GET',
            data: {
                'mentorNo' : no,
                'ableDay' : ableDay,
                'date' : date
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function(data) { 
                //시간 나타내기
                var jsonData = JSON.parse(data);
                //1. 시간 선택 옵션 비우기
                $('#time-select').html("");

                //2. 시간 선택 옵션 채우기
                var firstHtml = '<option value="" disabled selected>시간을 선택해 주세요</option>';

                if(jsonData[0] == null){
                    $('#time-select').attr('disabled', true);
                }

                $('#time-select').append(firstHtml);
                $.each(jsonData, function(index, svList) {
                    var timeHtml = '<option value="'+ svList.ableTime +'">'+ svList.ableTime +'</option>';
                    $('#time-select').append(timeHtml);
                });

            //날짜 신청 된거 표시하기 나중에..

            },
            error: function(request, status, error) {
                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    });

    //시간선택
    if($('#date-input').val() == "" || $('#date-input').val() == null){
        $('#time-select').val("");
        $('#time-select').attr('disabled', true);
    }

    //날짜선택 해야 시간선택 가능
    $(document).on('click', '.date', function(){
        var date = $(this).attr('id');
        $('#date-input').val(date);
        if($('#date-input').val() != "" || $('#date-input').val() != null){
            //disabled 없애기
            $('#time-select').attr('disabled', false);
        }
    });

    // 날짜 시간 선택하면 출력
    $('#time-select').on('change',function(){
        var time = $('#time-select option:selected').text();
        var date = $('#date-input').val();
        $('#date').text(date);
        $('#time').text(time);
        $('#time-select-result').text(date + ', ' + time);
    });




}
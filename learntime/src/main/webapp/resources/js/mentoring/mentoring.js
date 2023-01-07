window.onload = function() {
    //.mentroing클릭하면 자식요소중 input[type="hidden"]의 value 값을 가져와서 ajax 실행
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

                //댓글
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
                                        '<img class="modal-profile-img" src="/app/'+ rvList.writerImg + '" alt="">' + 
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


            },
            error: function(request, status, error) {
                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    });


    $(document).on('click', '.date', function(){
        var no = $(this).children('input[type="hidden"]').val();
        var ableDay = $(this).attr('class').split(' ')[1];
        var date = $(this).attr('id');

        console.log(day);

        $.ajax({
            url: '/app/mentor/mentoring/detail',
            type: 'GET',
            data: {
                'no' : no,
                'day' : ableDay,
                'date' : date
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function(data) { 
            //날짜 클릭시 가능 시간 받아오기..
                



            //날짜 신청 된거 표시하기









            },
            error: function(request, status, error) {
                console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    });
}
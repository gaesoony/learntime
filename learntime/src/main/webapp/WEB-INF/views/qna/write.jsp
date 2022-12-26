<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 에디터 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<style>
    .banner{
        height: 61px;
        background-color: #5ECC80;
    }
    .mainbox{
        width: 1002px;
        margin: 0 auto;
        margin-top: 70px;
    }
    .title{
        border: none;
        text-decoration: none;
        width: 100%;
        height: 5vh;
        font-size: 28px;
        font-weight: 550;
        outline: none;
        margin-top: 25px;
        margin-bottom: 25px;
     }
     .cancle{
        width: 5vw;
        height: 5vh;
        border: 2px solid #5ECC80;
        background-color: white;
        font-size: 18px;
        color: #37774A;
        border-radius: 10px;
        margin-left: 840px;
        margin-top: 30px;
        margin-bottom: 50px;
     }
     .write{
        width: 5vw;
        height: 5vh;
        font-size: 18px;
        background-color: #5ECC80;
        color: white;
        border: #5ECC80;
        border-radius: 10px;
     }

     /* 해시태그 */
     .content{
        width: 100%;
        height: 6vh;
        border: none;
        margin-bottom: 55px;
     }
     #tagNo{
        width: 500px;
        border: none;
        font-size: 16px;
        height: 5vh;
        margin-bottom: 10px;
        outline: none;
     }

    ul li {
        display: inline-block;
        letter-spacing: -.5px;

        background-color: white;
        border: 2px solid #5ECC80;
        border-radius: 10px;
        text-decoration: none;
        font-size: 16px;
        margin-bottom: 20px;
        padding: 10px;
        color: #37774A;
        margin-right: 10px;
    }

    .tag-item:hover {
        background-color: #5ECC80;
        color: white;
    }

    .del-btn {
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-left: 8px;
    }

    /* 상단 라디오 버튼 */
    .radio-box input[type=radio]{
        display: none;
    }
    .radio-box input[type=radio]+label{
        display: inline-block;
        cursor: pointer;
        height: 24px;
        width: 100px;
        border: 1px solid #5ECC80;
        line-height: 24px;
        text-align: center;
        font-weight:bold;
        font-size:14px;
    }
    .radio-box input[type=radio]+label{
        background-color: #fff;
        color: #37774A;
    }
    .radio-box input[type=radio]:checked+label{
        background-color: #5ECC80;
        color: #fff;
    }
    
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>
		<div class="mainbox">
		
		<form action="${pageContext.request.contextPath}/qna/write" method="post" name="myform" onkeydown="return event.key != 'Enter';">


                <div class="radio-box">
                    <input type="radio" value="1" id="cateNo1" name="cateNo" checked><label for="cateNo1">기술</label>
                    <input type="radio" value="2" id="cateNo2" name="cateNo"><label for="cateNo2">커리어</label>
                </div>

	            <input type="text" name="title" class="title" placeholder="제목을 입력하세요">
	
	            <div class="content">
	                <div>
	                    <input type="text" id="tagNo" name="tag" placeholder="해시태그를 입력하세요" />
	                </div>
	                <ul id="tag-list">
	                </ul>
	            </div>
	
	            <textarea name="content" class="summernote"></textarea>
	
	            <input type="button" onClick="history.back();" class="cancle" style='cursor:pointer;' value="취소" />
	            <input type="submit" class="write" style='cursor:pointer;' value="등록" />
        </div>
		</form>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '- 학습 관련 질문을 남겨주세요. (상세히 작성하면 더 좋아요!) <br><br> - 먼저 유사한 질문이 있는지 검색해보세요. <br><br> - 싫어요 누적 개수 10개 시, 해당 게시물이 블라인드 처리될 수도 있습니다. <br><br> - 잠깐! 런타임 서비스 운영 관련 문의는 1:1 문의 게시판을 이용해주세요.',
            lang: "ko-KR",
            disableResizeEditor: true,
        });

    </script>

    <script>
        $(document)
        .ready(function () {

            var tag = {};
            var counter = 0;

            // 태그를 추가한다.
            function addTag(value) {
            tag[counter] = value; // 태그를 Object 안에 추가
            counter++; // counter 증가 삭제를 위한 del-btn 의 고유 id 가 된다.
            }

            // 최종적으로 서버에 넘길때 tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
            function marginTag() {
            return Object.values(tag)
                .filter(function (word) {
                return word !== "";
                });
            }

            $("#tagNo")
            .on("keyup", function (e) {
                var self = $(this);
                console.log("keypress");

                // input 에 focus 되있을 때 엔터 및 스페이스바 입력시 구동
                if (e.key === "Enter" || e.keyCode == 32) {

                var tagValue = self.val(); // 값 가져오기

                // 값이 없으면 동작 안합니다.
                if (tagValue !== "") {

                    // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
                    var result = Object.values(tag)
                    .filter(function (word) {
                        return word === tagValue;
                    })

                    // 태그 중복 검사
                    if (result.length == 0) {
                    $("#tag-list")
                        .append("<li class='tag-item'>" + tagValue + "<span class='del-btn' idx='" + counter + "'>x</span></li>");
                    addTag(tagValue);
                    self.val("");
                    } else {
                    alert("해시태그 중복입니다");
                    }
                }
                e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
                }
            });

            // 삭제 버튼
            // 삭제 버튼은 비동기적 생성이므로 document 최초 생성시가 아닌 검색을 통해 이벤트를 구현시킨다.
            $(document)
            .on("click", ".del-btn", function (e) {
                var index = $(this)
                .attr("idx");
                tag[index] = "";
                $(this)
                .parent()
                .remove();
            });
        })
    </script>

    <!-- 폼 Enter 비활성화 -->
    <script>
        document.myform.addEventListener("keydown", evt =>{
            if(evt.code === "Enter") evt.preventDefault();
        });
    </script>

</body>
</html>
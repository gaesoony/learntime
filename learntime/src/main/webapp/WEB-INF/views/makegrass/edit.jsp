<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
        width: 1004px;
        margin: 0 auto;
        margin-top: 50px;
    }
    .title{
        border: none;
        text-decoration: none;
        width: 100%;
        height: 5vh;
        font-size: 28px;
        font-weight: 550;
        outline: none;
        margin-bottom: 20px;
     }
     .hashtag{
        border: none;
        text-decoration: none;
        width: 100%;
        height: 5vh;
        font-size: 18px;
        color: #AAAAAA;
        outline: none;
        margin-bottom: 20px;
     }
     .worktime{
        border: none;
        text-decoration: none;
        width: 100%;
        height: 5vh;
        font-size: 16px;
        outline: none;
        margin-bottom: 20px;
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
        cursor: pointer;
     }
     .write{
        width: 5vw;
        height: 5vh;
        font-size: 18px;
        background-color: #5ECC80;
        color: white;
        border: #5ECC80;
        border-radius: 10px;
        cursor: pointer;
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

    #tag{
        text-align: center;
        border: none;
        background-color: white;
        color: #37774A;
        outline: none;
    }
    #tag:hover{
        background-color: #5ECC80;
        color: white;
    }

</style>

<link
    href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
    rel="stylesheet"
/>

</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>

    <div class="mainbox">
	    <form action="${path}/makegrass/edit" method="post" name="myform" onkeydown="return event.key != 'Enter';">
	    	<div class="maintitle">
	            <input type="text" name="title" class="title" value="${mvo.title}" />
	            <input type="text" name="learnTime" class="worktime" value="${mvo.learnTime}" />

	            <div class="content">
	                <div>
	                    <input type="text" id="tagNo" placeholder="해시태그를 입력하세요" />
	                </div>
	                <ul id="tag-list">
	                </ul>
	            </div>
	
	            <textarea class="summernote" name="content">${mvo.content}</textarea>
	
	            <input type="button" onClick="history.back();" class="cancle" value="취소">
	            <input type="submit" class="write" value="수정">
	            
	        </div>
	    </form>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '- 공부한 내용을 남겨주세요. <br><br> - 잠깐! 런타임 서비스 운영 관련 문의는 1:1 문의 게시판을 이용해주세요.',
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
                        .append("<li class='tag-item'><input type='text' id='tag' name='tag' value='" + tagValue + "'' />" + "<span class='del-btn' idx='" + counter + "'>x</span></li>");
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

        // const tagList = document.querySelector("#tag-list");
        // tagList.innerHTML += str;
    </script>

    <!-- 폼 Enter 비활성화 -->
    <script>
        document.myform.addEventListener("keydown", evt =>{
            if(evt.code === "Enter") evt.preventDefault();
        });
    </script>

</body>
</html>
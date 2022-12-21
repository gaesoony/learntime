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
        color: #AAAAAA;
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
        <div class="maintitle">
            <input type="text" name="title" class="title" placeholder="제목을 입력하세요">
            <input type="text" name="hashtag" class="hashtag" placeholder="해시태그를 입력하세요">
            <input type="text" name="worktime" class="worktime" placeholder="공부한 시간 | ex) 120분">

            <textarea class="summernote" name="editordata"></textarea>

            <input type="button" onClick="history.back();" class="cancle" style='cursor:pointer;' value="취소">
            <input type="submit" onclick="location.href='/app/makegrass/list'" class="write" style='cursor:pointer;' value="등록">
            
        </div>
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

</body>
</html>
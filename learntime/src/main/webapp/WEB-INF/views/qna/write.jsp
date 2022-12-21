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
        color: #AAAAAA;
        outline: none;
        margin-top: 25px;
        margin-bottom: 25px;
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
     .selectbox{
        position: relative;
        width: 110px;
        height: 35px;
        border-radius: 4px;
        border: 1px solid #5ECC80;
     }
     .selectbox .select{
        width: inherit;
        height: inherit;
        background: transparent;
        border: 0 none;
        outline: 0 none;
        padding: 0 5px;
        position: relative;
        z-index: 3;
        font-size: 16px;
        color: #5ECC80;
        font-weight: 550;
     }
     .selectbox .select option{
        background: #5ECC80;
        color: white;
        padding: 3px 0;
        font-size: 16px;
     }
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <!-- 상단 초록색 바-->
    <div class="banner"></div>

    <div class="mainbox">
        <div class="maintitle">
            <div class="selectbox">
                <select class="select">
                    <option value="stac">기술</option>
                    <option value="career">커리어</option>
                </select>
            </div>
            </div>
            <input type="text" name="title" class="title" placeholder="제목을 입력하세요">
            <input type="text" name="hashtag" class="hashtag" placeholder="해시태그를 입력하세요">

            <textarea class="summernote" name="editordata"></textarea>

            <input type="button" onClick="history.back();" class="cancle" style='cursor:pointer;' value="취소"></input>
            <input type="submit" onclick="location.href='/app/qna/list'" class="write" style='cursor:pointer;' value="등록"></input>
            
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
            placeholder: '- 학습 관련 질문을 남겨주세요. (상세히 작성하면 더 좋아요!) <br><br> - 먼저 유사한 질문이 있는지 검색해보세요. <br><br> - 싫어요 누적 개수 10개 시, 해당 게시물이 블라인드 처리될 수도 있습니다. <br><br> - 잠깐! 런타임 서비스 운영 관련 문의는 1:1 문의 게시판을 이용해주세요.',
            lang: "ko-KR",
            disableResizeEditor: true,
        });
    </script>

</body>
</html>
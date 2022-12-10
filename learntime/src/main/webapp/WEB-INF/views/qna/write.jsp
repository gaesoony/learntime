<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .banner{
        height: 61px;
        background-color: #5ECC80;
    }
    .mainbox{
        width: 1084px;
        margin: 0 auto;
        margin-top: 50px;
    }
    .title{
        border: none;
        text-decoration: none;
        width: 100%;
        height: 5vh;
        font-size: 33px;
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
        font-size: 22px;
        color: #AAAAAA;
        outline: none;
        margin-bottom: 20px;
     }
     .cancle{
        width: 5vw;
        height: 4vh;
        border: 2px solid #5ECC80;
        background-color: white;
        font-size: 20px;
        color: #37774A;
        border-radius: 10px;
        margin-left: 885px;
     }
     .write{
        width: 5vw;
        height: 4vh;
        font-size: 20px;
        background-color: #5ECC80;
        color: white;
        border: #5ECC80;
        border-radius: 10px;
     }
     .content{
        width: 1084px;
        height: 50vh;
        margin-bottom: 30px;
     }
     .selectbox{
        position: relative;
        width: 150px;
        height: 35px;
        border-radius: 4px;
        border: 1px solid #5ECC80;
        margin-bottom: 20px;
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
        font-size: 18px;
        color: #5ECC80;
        font-weight: 550;
     }
     .selectbox .select option{
        background: #5ECC80;
        color: white;
        padding: 3px 0;
        font-size: 18px;
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

            <textarea class="content" name="content" placeholder="에디터 넣을 예정"></textarea>

            <button type="button" onClick="history.back();" class="cancle" style='cursor:pointer;'>취소</button>
            <button type="button" onclick="location.href='/app/qna/list'" class="write" style='cursor:pointer;'>등록</button>
            
        </div>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

</body>
</html>
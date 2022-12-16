<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/community/adminCommunityModify.css">
<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
</head>
<style>
#content-wrap{
    background-color: #efefef;
}

#admin-category-title{
    padding: 0 20px;
    color: black;
    background-color: white;
    box-shadow: 0px 2px 2px #c5c5c5;

    height: 55px;
    line-height: 55px;
    font-size: 18px;
}

.shadow-light{
    box-shadow: 0 2px 2px #c5c5c5;
}
    </style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            게시물 관리
        </div>

        <div id="content-main-wrap" class="shadow-light">
            <div id="form-wrap">
                <form action="">
                <div id="cate-txt">카테고리</div>
                <div id="cate-select-box">
                    <select name="" id="">
                        <option value="" disabled selected>카테고리를 선택해주세요</option>
                        <option value="cate1">카테고리1</option>
                        <option value="cate2">카테고리2</option>
                        <option value="cate3">카테고리3</option>
                    </select>
                </div>
                <div id="title-txt">제목</div>
                <div id="title-input-box">
                    <input type="text" placeholder="제목을 입력해주세요">
                </div>
                <div id="content-txt">내용</div>
                <textarea class="summernote" name="editordata"></textarea>
        
                <div id="btn-box">
                    <div id="cancel-btn">취소</div>
                    <input id="write-btn" type="submit" value="저장하기">
                </div>
                </form>
            </div>
        </div>


        
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 450,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR"
        });
    </script>


    

</body>
</html>
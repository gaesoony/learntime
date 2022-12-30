<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/community/adminCommunityModify.css">
<link rel="stylesheet" href="/app/resources/css/summernote/summernote-lite.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>
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
                <form action="${pageContext.request.contextPath}/admin/community/modify" method= "post">

                <div id="cate-txt">카테고리</div>
                <div id="cate-select-box">
                    <select name="cateNo" id="">
                        <option value="" disabled selected>카테고리를 선택해주세요</option>
                        <!-- 카테고리 받아오기 -->
                        <c:forEach var="cate" items="${cateList}">
                            <option value="${cate.no}">${cate.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div id="title-txt">제목</div>
                <div id="title-input-box">
                    <input type="text" name= "title" value = "${bv.title}">
                </div>
                <div id="content-txt">내용</div>
                <textarea class="summernote" name="content">
                    ${bv.content}
                </textarea>
        
                <div id="btn-box">
                    <div id="cancel-btn">취소</div>
                    <input type="hidden" name="no" value="${bv.no}">
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
            lang: "ko-KR"
        });
    </script>

    <script>
        // 카테고리 선택
        var cateNo = ${bv.cateNo};
        $("#cate-select-box select option:eq("+cateNo+")").attr("selected", "selected");
    </script>


    

</body>
</html>
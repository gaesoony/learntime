<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARN TIME | MY PAGE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">

<style>
    #mypage-box{
        width: 1200px;
        height: 100%;
        margin: auto;
        
    }

    #mypage{
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: 300px 900px;
        
    }

    #home-area{
        padding: 40px;
        display: grid;
        grid-template-rows: 230px 210px 210px;
    }

    #intro-area,#badge-area,#grass-area{
        display: grid;
        grid-template-columns: 4fr 1fr;
        grid-template-rows:45px;
       
    }

    #intro-editor, #have-badge,#makegrass{
        grid-column: span 2;
        display: flex;
        margin-top: 10px;
    }

    #intro, #intro-btn{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

    #intro,#badge,#grass{
        font-size: 18px;
        font-weight: 700;
        color: #5ECC80;
    }

    #intro-btn{
        justify-content: flex-end;
    }

    #edit, #save{
        background: inherit ; 
        border:none; 
        box-shadow:none; 
        border-radius:0; 
        padding:0; 
        overflow:visible; 
        cursor:pointer;

        width: 58px;
        height: 30px;
        border: 1px solid #5ECC80;
        color: #5ECC80;
        border-radius: 4px;
        margin-left: 10px;
    }

   

    #badge-area{
        margin-top: 10px;
        justify-content: center;
    }

    #have-badge{
        display: flex;
        justify-content: space-between;
        width: 100%;
    }

    #badge,.more,#grass{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #000000;
    }

    .more{
        justify-content: flex-end;
    }

    .more a{
        display: flex;
        align-items: center;
    }

    .badge{
        width: 130px;
        height: 130px;
        background-color: #D9D9D9;
        margin-top: 10px;
        
    }

    #makegrass{
        background-color: #D9D9D9;
    }


    
   
</style>
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>



<div id="mypage-box">
    <div id="mypage">
        <div id="bin"></div>
        <div id="home-area">
           <div id="intro-area">
                <div id="intro">소개글</div>
                <div id="intro-btn">
                    <button id="edit" class="btn btn-primary" onclick="edit()" type="button">편집</button>
                    <button id="save" class="btn btn-primary" onclick="save()" type="button">저장</button>    
                </div>
                <div id="intro-editor">
                    <div class="click2edit"></div>
                </div>
                
           </div>

           <div id="badge-area">
                <div id="badge">보유한 뱃지</div>
                <div class="more">
                    <a href="/app/member/mypage/badge">전체보기<span class="material-symbols-outlined">chevron_right</span></a>
                </div>
                <div id="have-badge">
                    <div class="badge"></div>
                    <div class="badge"></div>
                    <div class="badge"></div>
                    <div class="badge"></div>
                    <div class="badge"></div>
                </div>
           </div>
           <div id="grass-area">
            <div id="grass">MAKE GRASS</div>
            <div class="more">
                <a href="/app/member/mypage/makegrass">전체보기<span class="material-symbols-outlined">chevron_right</span></a>
            </div>
            <div id="makegrass">
                
            </div>
            </div>
        </div>
    </div>
    
</div>

<%@include file="/WEB-INF/views/common/mypage-side.jsp" %>
<%@include file="/WEB-INF/views/common/footer2.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 서머노트 로딩-->
<script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<script>
    var edit = function() {
    $('.click2edit').summernote({
        toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			   
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],

            width:820,
            height: 100,                 // 에디터 높이
            minHeight: 100,             // 최소 높이
            maxHeight: 100,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
    
        });
    };

    var save = function() {
    var markup = $('.click2edit').summernote('code');
    $('.click2edit').summernote('destroy');
    };
    
</script>
</body>
</html>
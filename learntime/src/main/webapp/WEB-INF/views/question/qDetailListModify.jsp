<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/qDetailList.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<form action="" method="get">
	<div class="list-main-m">
    <div class="q-detail-list-m">
        <div class="q-sign-m">
            <div class="line1-m">
                <div class="line-a-m"></div>
            </div>
            <div class="name-q-m">1:1 문의게시판 </div>
            <div class="line2-m">
                <div class="line-b-m"></div>
            </div>
        </div>
        <div class="q-title-date-m">
            <div class="gathering-divs-d">
                <div class="q-title-cate">
                    <div class="category-q">
	                    <select name="category" id="categories">
			                <option value="1">전체</option>
			                <option value="2">스터디</option>
			                <option value="3">공부인증</option>
			                <option value="4">Q&A</option>
			                <option value="5">멘토링</option>
			                <option value="6">커뮤니티</option>
			                <option value="7">스킨샵</option>
			            </select>
			            </div>
                    <div class="title-q-m " name="title">${vo.title}</div>
                </div>
                <div class="q-enrollDate-comment">
                    <div class="q-nick" name="writer">${vo.writer}</div>
                    <div class="date-q-m" name="enrollDate">${vo.enrollDate}</div>
                </div>
            </div>
        </div>
        <div class="empty1-m"></div>
        <div class="q-content-m">
            <textarea class="summernote" name="editordata"></textarea>
        </div>
        <div class="backBtn-m">
            <a href="/app/question/qDetailListModify"><div class="btn-to-m" id="btn-modify">수정</div></a>
            <input type="button" value="삭제" name="btn-to-m" class="btn-to-m" id="btn-to-m">
            <a href="/app/question/questionList"><div class="btn-to-m">글목록</div></a>
        </div>   
    </div>
    </div>
</div>
	
</form>
<%@ include file = "/WEB-INF/views/common/footer.jsp" %>









<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR",
            disableResizeEditor: true
        });


        // $(document).ready(function(){
        //     $('.hide-reply').click(function(){
        //         $('.comment-b-for-a').toggle('slow');
        //     });
        // });
        
        //대댓글 쓰기
       /*  $('.write-reply').click(function(){
            $('.hide-comment').slideToggle();
        });


        
        
        // 댓글 펼치기
        $('.hide-reply').click(function(){
            $('.comment-b-for-a').slideToggle();
        });
 */
		//좋아요 싫어요 버튼
		/* function count(type){
            const result = document.getElementsByClassName('.middleBtn');
            let number = result.innertext;

            if(type === 'plus'){
                number=parseInt(number) + 1;
            }else if(type === 'minus'){
                number = parseInt(number) - 1;

            }

            result.innertext=number;
            
			
		} */


    
    </script>

</body>
</html>
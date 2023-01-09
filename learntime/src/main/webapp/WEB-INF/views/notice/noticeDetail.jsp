<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/notice/noticeDetail.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>


<div class="list-main">
    <div class="banner-section">
        <div class="banner">
            <div id="banner-title1"><span>공지사항</span></div>
            <div id="banner-title2"><span>런타임의 새로운 소식들!</span></div>
        </div>
    </div>
    <div class="notice-detail-list">
        <div class="notice-sign">
            <div class="line1">
                <div class="line-a"></div>
            </div>
            <div class="name-notice">공지사항</div>
            <div class="line2">
                <div class="line-c"></div>
            </div>
        </div>
        <div class="notice-title">
            <div class="profile-info-etc">
                <div class="admin-info" name="writer">${vo.writer}</div>
                <div class="info-etc">
                    <div class="enroll-date-a"name="enrollDate">${vo.enrollDate }</div>
                    <div class="views-a" name="hit"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png"> &nbsp;${vo.hit }</div>
                    <div class="reply-no" name="cmt"><img width="15px" height="15px" class="messages-notice" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">&nbsp; ${vo.cmt}</div>
                </div>
                <div class="title-cate-etc">
                    <div class="cate-notice-a"name="name">${vo.cateName }</div>
                    <div class="title-info" name="title">${vo.title}</div>
                </div>
            </div>
        </div>
        <div class="notice-content">${vo.content}</div>
    </div>
    	<div class="notice-comments">
	        <div class="reply-section">
	            <div class="reply-num" name="cmt">${vo.cmt}개의 댓글</div>
	            <div class="leave-comment">
	                <div class="div-box-a">
	                    <div class="div-box-b">
	                        <div class="profile-box">${ncv.writer} 님</div>
	                        <div class="div-box-d"><textarea class="reply-textarea" ></textarea> </div>
	                    </div>
	                    <form action="/app/notice/noticeDetail" method="post">
		                    <div class="div-box-c">
		                        <input type="button" value="댓글쓰기" class="writeComment">
		                    </div>
	                    </form>
	                </div>
	            </div>
	            <div class="comment-box">
	                <div class="gathering-boxes">
	                    <div class="comment-a">
	                        <div class="profile-etc">
	                            <div class="profile-id" name="writer">${ncv.writer}님</div>
	                        </div>
	                        <div class="leaved-comment"name="content">${ncv.content}</div>
	                    </div>
	                </div>
	            </div>
	        </div>
    	</div>
 	</div>
</div>






<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

<script>
/* $('.writeComment').click(function(){

    const no = ${vo.no};
    const writer = ${vo.writer};
    const content = ${ncv.content};
    $.ajax({
        url:"/app/notice/noticeDetail",
        type:"post",
        data:{"no":no,
        	  "writer":writer,
        	  "content":content
    },
    success:function(x){
        alert('댓글 등록되었습니다.');
        
        
    },
    error:function(){
        alert('에러가 발생했습니다.');
    }
   

    });
    
    
});

     */

</script>
</body>
</html>
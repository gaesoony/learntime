<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="/app/.css"> -->
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

.list-main-m{
    width:1200px;
    height:auto;
    margin:0 auto;
    display:flex;
    flex-direction: column;
    
    
}
/* div 박스 간격 조절 */
.making-gap{
    margin-top: 100px;
}
.making-gap-a{
    margin-top: 50px;
}

.making-gap-b{
    margin-top: 30px;
}
.q-detail-list-m{
  
    height:750px;
    display: grid;
    grid-template-rows:100px 100px 50px 400px 100px;
}
.q-sign-m{
    width: 100%;
    height: 100%;
    display: flex;

}
.line1-m{
    width: 100px;
    height: 100%;

}
.name-q-m{
    width: 150px;
    height: 100%;
    font-size: xx-large;
    font-weight: 900;
    display: flex;
    justify-content: center;
    align-items: center;
}
.line2-m{
    width: 900px;
    height: 100%;
}
.line-a-m{
    width: 100%;
    height: 50%;
    border-bottom:5px solid gray;
}
.line-b-m{
    width: 100%;
    height: 50%;
    border-bottom:5px solid gray;
}
.q-title-date-m{
    width: 100%;
    height: 100px;
    border-bottom:2px solid lightgray;
    display: flex;
    flex-direction: column;

}
.q-title-cate{
    width: 100%;
    height: 50px;
    display: flex;
    align-items: flex-end;
}
.category-q-m{
    width: 100px;
    height: 100%;
    line-height: 80px;
    font-weight: 600;

   
}
.title-q-m{
    width: 750px;
    height: 100%;
    line-height: 80px;
    font-weight: 600;
    
    
}
.q-enrollDate-comment{
    width: 100%;
    height: 50px;
    display: flex;

}
.q-nick{
    width: 100px;
    height: 100%;
    line-height: 50px;
    font-size: smaller;
    color: gray;


}

.date-q-m{
    width: 800px;
    height: 100%;
    line-height: 50px;
    font-size: smaller;
    color: gray;
    

}



.q-content-m{
    width: 100%;
    height: 400px;
    border-top: 2px solid lightgray;
    border-bottom:2px solid lightgray; ;
    
}
.backBtn-m{
    display: flex;
    justify-content: flex-end;
    align-items: center;
}
.btn-to-m{
    width: 100px;
    height: 50px;
    background-color: #5ECC80;
    color: white;
    font-weight: 600;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;
   
    
}
#btn-to-m{
    width: 100px;
    height: 50px;
    border:none;
    outLine:none;
    background-color: #5ECC80;
    color: white;
    font-weight: 600;
    font-size:medium;
    text-align: center;
    line-height: 50px;
   
   
    
}
/* 내용 */
textarea{
    width: 1200px;
    height: 350px;
}





</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            카테고리
        </div>
        <form action="">
        	<div class="list-main-m">
	            <div class="q-detail-list-m">
	                <div class="q-sign-m">
	                    <div class="line1-m">
	                        <div class="line-a-m"></div>
	                    </div>
	                    <div class="name-q-m">문의 </div>
	                    <div class="line2-m">
	                        <div class="line-b-m"></div>
	                    </div>
	                </div>
	                <div class="making-gap">
	                    <div class="q-title-date-m">
	                        <div class="q-title-cate">
	                            <div class="category-q-m" name="name">${vo.cateName}</div>
	                            <div class="title-q-m" name="title">${vo.title}</div>
	                        </div>
	                        <div class="q-enrollDate-comment">
	                            <div class="q-nick" name="writer">${vo.writer}</div>
	                            <div class="date-q-m" name="enrollDate">${vo.enrollDate}</div>
	                        </div>
	                    </div>
	                    <div class="empty1-m"></div>
	                    <div class="making-gap-a">
	                        <div class="q-content-m" name="content">${vo.content}</div>
	                        <div class="making-gap-b">
	                            <div class="backBtn-m">
	                                <input type="button" value="공개" name="btn-to-expose" class="btn-to-m" id="btn-to-m">
	                                <input type="button" value="삭제" name="btn-to-delete" class="btn-to-m" id="btn-to-m">
	                                <a href="/app/admin/question/qListAd?p=1"><div class="btn-to-m">글목록</div></a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
    		</div>
        </form>
  	</div>
        


    
</body>
</html>
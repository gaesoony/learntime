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
.q-hit{
    width: 250px;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: smaller;
    color: gray;

}
.q-content-m{
    width: 100%;
    height: 400px;
    border-top: 2px solid lightgray;
    border-bottom: 2px solid lightgray;
    
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
    border-radius: 1rem;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;
   
    
}
/* 내용 */
textarea{
    height: 350px;
    width: 1200px;
    
}

/* 댓글 */
.reply-section{

    width: 100%;
    height: 900px;
    display: flex;
    flex-direction: column;
    align-items: center;
    

}
.reply-num{
    width: 100%;
    height: 50px;
    
}
.leave-comment{
    width: 100%;
    height: 250px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.div-box-a{
    width: 1000px ;
    height: 230px;
    border: 3px solid lightgray;
    box-shadow: 5px lightgray;
    border-radius: 1rem;
    display: flex;
    flex-direction: column;
}
.div-box-b{
    width: 1000px ;
    height: 130px;
    display: flex;
    justify-content: space-evenly;
    align-items: flex-end;
    
}
.div-box-c{
    width: 1000px ;
    height: 100px;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    
   
}
.profile-box{
    width: 70px;
    height: 70px;
    margin-bottom: 20px;
}
   
    

.div-box-d{
    width: 800px ;
    height: 100px;
    border: 3px solid lightgray;
    box-shadow: 5px  lightgray;
    border-radius: 1rem;
   
}

input{
    border: none;
    background-color: #5ECC80;
    font-size: medium;
    font-weight: 600;
    width: 90px;
    color: white;
    text-align: center;
    line-height: 45px;
    border-radius: 1rem;
    margin-right: 40px;


}


    




</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            FAQ
        </div>
        <div class="list-main-m">
            <div class="q-detail-list-m">
                <div class="q-sign-m">
                    <div class="line1-m">
                        <div class="line-a-m"></div>
                    </div>
                    <div class="name-q-m">FAQ </div>
                    <div class="line2-m">
                        <div class="line-b-m"></div>
                    </div>
                </div>
                <div class="making-gap">
                    <div class="q-title-date-m">
                        <div class="q-title-cate">
                            <div class="category-q-m">[멘토링]</div>
                            <div class="title-q-m">멘토링 서비스가 궁금해요</div>
                        </div>
                        <div class="q-enrollDate-comment">
                            <div class="q-nick">user11</div>
                            <div class="date-q-m">2022.12.14</div>
                            <div class="q-hit">
                                <div class="q-reply-num-count">댓글수</div>
                                <div class="q-comment">3</div>
                            </div>
                        </div>
                    </div>
                    <div class="empty1-m"></div>
                    <div class="making-gap-a">
                        <div class="q-content-m"></div>
                        <div class="making-gap-b">
                            <div class="backBtn-m">
                                <div class="btn-to-m">공개</div>
                                <div class="btn-to-m">수정</div>
                                <div class="btn-to-m">삭제</div>
                                <div class="btn-to-m">글목록</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


        
</body>
</html>
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
    border-radius: 1rem;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;
   
    
}
/* 내용 */
textarea{
    width: 1200px;
    height: 350px;
}



/* 댓글 */
.reply-section{
    width: 100%;
}
.profile-etc-re{
    width: 970px;
    height: 90px;
    display: flex;
    align-items: center;
   

}
.profile-pic-re{
    width: 70px;
    height: 70px;
    
}


.profile-id-re{
    width: 660px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-left: 30px;
 
}
.good-or-bad-re{
    width: 200px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-right: 40px;
 
    
    

}
.leaved-comment-re{
    width: 970px;
    height: 100px;
    color: black;
    font-size: medium;
    font-weight: 100px;


}
.hide-comment-re{
    width: 970px;
    height: 40px;
    font-size: small;
    color: gray;
    font-weight: 600;
    

}
.backBtn-m{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-bottom: 570px;
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
/* 댓글 */
.reply-section{

    width: 100%;
    height: 600px;
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
.comment-box{
    width: 1000px;
    height: 500px;
    display: flex;
    margin-top: 100px;
    
}
.gathering-boxes{
    width: 1000px;
    height: 100%;
    

}
.comment-a{
    width: 100%;
    height: 150px;
    display: flex;
    flex-direction: column;
    

}
.profile-etc{
    width: 100%;
    height: 90px;
    display: flex;
    align-items: center;
   

}
.profile-pic{
    width: 70px;
    height: 70px;
   
  
}
.profile-id{
    width: 660px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-left: 30px;
   
}
.good-or-bad{
    width: 200px;
    height: 90px;
    display: flex;
    align-items: center;

}
.btn-good-or-bad{
    width: 200px;
    height: 70px;
    display: flex;
   
    
}
.btn-good-or-bad-re{
    width: 200px;
    height: 70px;
    display: flex;
    margin-left: 10px;
    
}
.downBtn{
    width: 55px;
    height: 70px;
    border: 3px solid lightgray;
    text-align: center;
    line-height: 70px;
    border-top-left-radius: 1rem;
    border-bottom-left-radius: 1rem;
}
.middleBtn{
    width: 90px;
    height: 70px;
    border: 3px solid lightgray;
    text-align: center;
    line-height: 70px;
    font-size: x-large;
    font-weight: 600;;
    color: black;
    
}
.upBtn{
    width: 55px;
    height: 70px;
    border: 3px solid lightgray;
    text-align: center;
    line-height: 70px;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;

}
.leaved-comment{
    width: 100%;
    height: 30px;
    

}
.hide-comment{
    width: 100%;
    height: 30px;
    display: flex;
    flex-direction: row-reverse;

}
.hide-reply{
    width: 12%;
    color: skyblue;
    line-height: 40px;
    font-size: small;
    font-weight: 600;
  

}
.write-reply{
    width: 88%;
    color: gray;
    line-height: 40px;
    font-size: small;
    font-weight: 600;


}
.comment-b-for-a{
    width: 100%;
    height: 250px;
    display: flex;
    flex-direction: row-reverse;
    justify-content: flex-end;
    margin-top: 100px;
    font-weight: 400;


}
.reply-reply{
    width: 970px;
    height: 230px;
    display: flex;
    flex-direction: column;
    margin-left: 20px;


}
.profile-etc-re{
    width: 970px;
    height: 90px;
    display: flex;
    align-items: center;
   

}
.profile-pic-re{
    width: 70px;
    height: 70px;
    
   
   
  
}


.profile-id-re{
    width: 660px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-left: 30px;
 
}
.good-or-bad-re{
    width: 200px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-right: 40px;
 
    
    

}
.leaved-comment-re{
    width: 970px;
    height: 100px;
    color: black;
    font-size: medium;
    font-weight: 100px;


}
.hide-comment-re{
    width: 970px;
    height: 40px;
    font-size: small;
    color: gray;
    font-weight: 600;
    

}
/* 댓글 */

.notice-comments{
    width: 1200px;
    height: 1200px;
    margin: 0 auto;
}

.reply-num{
    width: 1200px;
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
.comment-box{
    width: 1000px;
    height: 1000px;
    display: flex;
    margin-top: 100px;
    
}
.gathering-boxes{
    width: 1000px;
    height: 1000px;
    

}
.comment-a{
    width: 100%;
    height: 150px;
    display: flex;
    flex-direction: column;
    

}
.profile-etc{
    width: 100%;
    height: 90px;
    display: flex;
    align-items: center;
   

}
.profile-pic{
    width: 70px;
    height: 70px;
   
  
}
.profile-id{
    width: 660px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-left: 30px;
   
}
.good-or-bad{
    width: 200px;
    height: 90px;
    display: flex;
    align-items: center;

}
.btn-good-or-bad{
    width: 150px;
    height: 50px;
    display: flex;
   
    
}
.btn-good-or-bad-re{
    width: 150px;
    height: 50px;
    display: flex;
    margin-left: 10px;
    
}
.downBtn{
    width: 40px;
    height: 50px;
    border: 2px solid lightgray;
    text-align: center;
    line-height: 50px;
    border-top-left-radius: 1rem;
    border-bottom-left-radius: 1rem;
}
.middleBtn{
    width: 70px;
    height: 50px;
    border: 2px solid lightgray;
    text-align: center;
    line-height: 50px;
    font-size: x-large;
    font-weight: 600;;
    color: black;
    
}
.upBtn{
    width: 40px;
    height: 50px;
    border: 2px solid lightgray;
    text-align: center;
    line-height: 50px;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;

}
.leaved-comment{
    width: 100%;
    height: 30px;
    

}
.hide-comment{
    width: 1000px;
    height: 300px;
    display: flex;
    flex-direction: row-reverse;

}
.hide-reply{
    width: 12%;
    color: skyblue;
    line-height: 40px;
    font-size: small;
    font-weight: 600;
  

}
.hide-write-reply{
    display: flex;
}
.write-reply{
    width: 88%;
    color: gray;
    line-height: 40px;
    font-size: small;
    font-weight: 600;


}
.write-reply-reply{
    display: flex;
    align-items: center;
}
.comment-b-for-a{
    width: 100%;
    height: 250px;
    display: flex;
    flex-direction: row-reverse;
    justify-content: flex-end;
    margin-top: 100px;
    font-weight: 400;


}
.reply-reply{
    width: 970px;
    height: 230px;
    display: flex;
    flex-direction: column;
    margin-left: 20px;


}
.reply-section{
    width: 100%;
}
.profile-etc-re{
    width: 970px;
    height: 90px;
    display: flex;
    align-items: center;
   

}
.profile-pic-re{
    width: 70px;
    height: 70px;
    
   
  
}


.profile-id-re{
    width: 660px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-left: 30px;
 
}
.good-or-bad-re{
    width: 200px;
    height: 90px;
    display: flex;
    align-items: center;
    margin-right: 40px;
 
    
    

}
.leaved-comment-re{
    width: 970px;
    height: 100px;
    color: black;
    font-size: medium;
    font-weight: 100px;


}


</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            문의
        </div>
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
                                <div class="btn-to-m">삭제</div>
                                <div class="btn-to-m">글목록</div>
                            </div>
                            <div class="reply-section">
                                <div class="reply-num">6개의 댓글</div>
                                <div class="leave-comment">
                                    <div class="div-box-a">
                                        <div class="div-box-b">
                                            <div class="profile-box"><img width="70px" height="70px" src="/app/resources/img/main/Ellipse 2.png"></div>
                                            <div class="div-box-d"></div>
                                        </div>
                                        <div class="div-box-c">
                                            <div class="input-box"><input type="button" value="댓글쓰기"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-box">
                                    <div class="gathering-boxes">
                                        <div class="comment-a">
                                            <div class="profile-etc">
                                                <div class="profile-pic"><img width="70px" height="70px" src="/app/resources/img/faq/image 127.png"></div>
                                                <div class="profile-id"><img width="200px" height="70px" src="/app/resources/img/faq/image 91.png"></div>
                                                <div class="good-or-bad">
                                                    <div class="btn-good-or-bad">
                                                        <div class="downBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/32/32195.png"></div>
                                                        <div class="middleBtn">3</div>
                                                        <div class="upBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/271/271239.png"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="leaved-comment">접속이 잘 안되네요</div>
                                            <div class="hide-write-reply">
                                                <div class="hide-reply">댓글 모두 숨기기</div>
                                                <div class="write-reply">댓글 쓰기 </div>
                                            </div>
                                        </div>
                                        <div class="hide-comment">
                                            <div class="write-reply-reply">
                                                <div class="leave-comment">
                                                    <div class="div-box-a">
                                                        <div class="div-box-b">
                                                            <div class="profile-box"><img width="70px" height="70px" src="/app/resources/img/main/Ellipse 2.png"></div>
                                                            <div class="div-box-d"></div>
                                                        </div>
                                                        <div class="div-box-c">
                                                            <div class="input-box"><input type="button" value="댓글쓰기"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="comment-b-for-a" >
                                            <div class="reply-reply">
                                                <div class="profile-etc-re">
                                                    <div class="profile-pic-re"><img width="70px" height="70px" src="/app/resources/img/faq/image 130.png"></div>
                                                    <div class="profile-id-re"><img width="200px" height="70px" src="/app/resources/img/faq/image 129.png"></div>
                                                    <div class="good-or-bad-re">
                                                        <div class="btn-good-or-bad-re">
                                                            <div class="downBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/32/32195.png"></div>
                                                            <div class="middleBtn">3</div>
                                                            <div class="upBtn"><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/271/271239.png"></div>
                                                        </div>
                                                    </div> 
                                                </div>
                                                <div class="leaved-comment-re">@겨울의속삭임님<br>해당이슈는 수정하여 반영하였습니다. 감사합니다.</div>
                                                <div class="hide-comment-re"><span>댓글쓰기</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>


    <script>

        //대댓글 쓰기
        $('.write-reply').click(function(){
                $('.hide-comment').slideToggle();
            });
    
    
            
            
            // 댓글 펼치기
            $('.hide-reply').click(function(){
                $('.comment-b-for-a').slideToggle();
            });
    
    </script>

        
</body>
</html>
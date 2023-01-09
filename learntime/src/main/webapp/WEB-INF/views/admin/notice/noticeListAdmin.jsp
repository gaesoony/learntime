<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="/app/.css"> -->
<title>Insert title here</title>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 


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

.main-notice{
    width: 1200px;
    height: auto;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
}

.notice-title-admin{
    width: 1200px;
    height: 300px;
    display: flex;
    align-items: center;
}
.notice-admin-Btns{
    width: 1200px;
    height: 100px;
  
 
}
.notice-list{
    width: 1200px;
    height: 600px;
    margin-top: 80px;
   

}
.page-notice{
    width: 1200px;
    height: 200px;
}

/* 타이틀 */
.notice-sign-m{
    width: 1200px;
    height: 100px;
    display: flex;


}
.line1-m{
    width: 150px;
    height: 100px;
   

}
.name-notice-m{
    width: 150px;
    height: 100px;
    font-size: xx-large;
    font-weight: 900;
    text-align: center;
    line-height: 100px;

}
.line2-m{
    width: 900px;
    height: 100px;
   

}
.line-a-m{
    width: 100%;
    height: 50px;
    border-bottom: 5px solid gray;
}
.line-b-m{
    width: 100%;
    height: 50px;
    border-bottom: 5px solid gray;
    
}
/* 버튼 */
.noticeBtn-etc{
    width: 100%;
    height: 100px;
    display: flex;
    justify-content: flex-end;
}
.setting-Btn{
    width: 300px;
    height: 100%;
   
}
.Btns-noticeAd{
    width: 900px;
    height: 100%;
    display: flex;
    justify-content: flex-end;
    align-items: flex-end;
    
}
.activate-Btn{

    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    color: #5ECC80;
    background-color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;



}
.deactivate-Btn{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    color: #5ECC80;
    background-color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;


}

.delete-notice-Btn{
    width: 100px;
    height: 50px;
    background-color: #5ECC80;
    color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;


}
.activate{
    border:none;
    color: #5ECC80;
    background-color: white;
    font-size: larger;
    font-weight: 600;
    
}
.deactivate{
    border:none;
    color: #5ECC80;
    background-color: white;
    font-size: larger;
    font-weight: 600;
   
}
.delete-lists{
    border:none;
    color: white;
    background-color: #5ECC80;
    font-size: larger;
    font-weight: 600;
   
}

.setting-Btn{
    display: flex;
    align-items: flex-end;
}
/* 리스트 */

.notice-list-twoColored{
    width: 1200px;
    height: 450px;
    display: flex;
    align-items: center;

}
.notice-group{
    width: 100%;
    height: 540px;
    border-top: 3px solid lightgray;

}
.notice-green{
    width: 100%;
    height: 90px;
    border-top:2px solid lightgray;
    border-bottom: 2px solid lightgray;
    display: flex;
    flex-direction: column;
    background-color: #e9fde9;
}
.notice-white{
    width: 100%;
    height: 90px;
    border-bottom: 3px solid lightgray;
    display: flex;
    flex-direction: column;
}

.admin-id-etc{
    width: 100%;
    height: 20px;
    display: flex;
    margin-top: 10px;
    

}
.admin-id{
    width: 100px;
    height: 100%;
    margin-left: 20px;
   
  

}
.enroll-date{
    width: 200px;
    height: 100%;
  

}
.written-notice{
    width:1200px;
    height: 45px;
    display: flex;
    margin-top: 10px;

}
.checkBoxBtn-notice{
    width: 50px;
    height: 45px;
    line-height: 45px;
}
.cate-notice{
    width: 120px;
    height: 100%;
    line-height: 45px;
    font-weight: 600;
    font-size: x-large;
}
.posted-notice{
    width: 900px;
    height: 100%;
    line-height: 45px;
    font-weight: 600;
    font-size: x-large;

}
.views-etc{
   
    height: 25px;
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
    margin-top: 20px;

}
.views{
    width: 70px;
    height: 100%;
}
.replies{
    width: 70px;
    height: 100%;

}
.checkBoxBtn{
    width: 30px;
    height: 30px;
}




.empty{
	height: 15px;
}
.title-sec{
	font-size:large;
	font-weight:600;
	width:170px;
	height:50px;
	display:flex;
	justify-content:center;
	align-items:center;
	
}
.line-a{
	width:50px;
	height:50px;
	display:flex;
	align-items:flex-end;


}

.line-a-a{

	border-top:3px solid gray;
	width:50px;
	height:25px;
}
.line-b{
	width:250px;
	height:50px;
	display:flex;
	flex-direction:rows;
	align-items:flex-end;
	
	

}
.line-b-a{
	border-top:3px solid gray;
	height:25px;
	width:250px;
}
.notice-line{
	display:flex;
	height:50px;
}
.cate-btn{
	width:100px;
	height:25px;
	border:none;
	background-color:#5ECC80;
	font-weight: 600;
	color:white;
}
.notice-green{

background-color: #e9fde9;

}

/*페이징  */

.page-question{
	margin:0 auto;
	display:flex;
	justify-content:center;
	align-items:center;
	
}
.page-faq{

	display:flex;
	justify-content:center;
	align-items:center;
	
}	
.paging-btn{
	
	width:40px;
	height:40px;
	border-radius:1rem;
	border:2px solid lightgray;
	text-align:center;
	line-height:40px;
	margin-right:10px;
}
</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            공지사항
        </div>
        <div class="main-notice">
            <div class="notice-title-admin">
                <div class="notice-sign-m">
                    <div class="line1-m">
                        <div class="line-a-m"></div>
                    </div>
                    <div class="name-notice-m">공지사항 </div>
                    <div class="line2-m">
                        <div class="line-b-m"></div>
                    </div>
                </div>
            </div>
            <form action="/app/admin/notice/noticeListAdmin" method="get">
            	<input type="hidden" value="${cateNo}" name="cateNo">
				<input type="hidden" value="${p}" name="p">
                <input type="hidden" value="${no}" name="no">
            	<div class="notice-admin-Btns">
                <div class="noticeBtn-etc">
                    <div class="Btns-noticeAd">
                        <div class="activate-Btn"><input class="activate" type="button" value="활성화" name="activate" ></div>
                        <div class="deactivate-Btn"><input class="deactivate" type="button" value="비활성화" name="deactivate" ></div>
                        <div class="delete-notice-Btn"><input class="delete-lists" type="button" value="삭제" name="deleteList"></div>
                    </div>
                </div>
            </div>
            <div class="notice-list">
                <div class="notice-list-twoColored">
                    <div class="notice-group">
                        <c:forEach var="list" items="${list}" varStatus="status">
                        	<div class="gathering-divs">
	                        	<c:if test="${status.index >2}">
	                        	 	<div class="notice-white"></a>
	                        	</c:if>
	                        	<c:if test="${status.index <= 2 }">
	                            	<div class="notice-green"></a>
	                        	</c:if>
	                                <div class="admin-id-etc">
	                                    <div class="admin-id" name="nick">${list.writer}</div>
	                                    <div class="enroll-date" name="enrollDate">${list.enrollDate}</div>
	                                </div>
	                                <div class="written-notice">
										<div class="checkBoxBtn-notice"><input type="checkbox"  id="checkBoxBtn" value="${list.no}"></div>
		                                <div class="cate-notice" name="name">${list.cateName}</div>
		                                <a href="/app/notice/noticeDetail?no=${list.no}"><div class="posted-notice" name="title">${list.title}</div></a>
	                                    <div class="views-etc">
	                                        <div class="views" name="hit"><img width="15px" height="15px" class="view" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">${list.hit}</div>
	                                        <div class="replies" name="cmt"><img width="15px" height="15px"class="message" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">${list.cmt}</div>
	                                    </div>
	                                </div>
	                            </div>
                        	</div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="page-notice">
            	<div class="page-question">
				  	<div class="page-faq">
					  	<c:if test="${pv.startPage != 1}">
		                  <div class="paging-btn" id="prev-btn">
		                    <a
		                      href="${path}/admin/notice/noticeListAdmin?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
		                      >이전</a
		                     >
		                  </div>
	                	</c:if>
	                <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
	                  <div class="paging-btn" id="${i}">
	                    <a
	                      href="${path}/admin/notice/noticeListAdmin?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                      >${i}</a
	                    >
	                  </div>
	                </c:forEach>
		                <c:if test="${pv.endPage < pv.maxPage}">
		                  <div class="paging-btn" id="next-btn">
		                    <a
		                      href="${path}/admin/notice/noticeListAdmin?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
		                      >다음</a
		                    >
		                  </div>
		                </c:if>
				   </div>
			    </div>
            </div>
            </form>
        </div>
    </div>
    
   
<script type="text/javascript">
	
	
	/*상단고정버튼  */
	
   $('input[name="activate"]').click(function(){

       let activate = $('input[name="activate"]').val();
       
       let valueArr = new Array();
       let list = $("#checkBoxBtn:checked");
       
       for(let i = 0; i <list.length; i++){
           if(list[i].checked){
               valueArr.push(list[i].value);
               
           }
       }
       console.log(valueArr);
    
       var chk = confirm("활성화 하시겠습니까?");
       $.ajax({
           url:"/app/admin/notice/noticeListAdmin",
           type:"post",
           data:{"activate":activate,
                   "valueArr":valueArr
       },
       success:function(x){
    	   Swal.fire({
    		   icon: 'success',
    		   title: 'success!',
    		   text: '활성화 되었습니다!',
    		   
    		 })
       },
       error:function(){
           alert('에러가 발생했습니다.');
       }
    
       });
   })

   


   $('input[name="deactivate"]').click(function(){

       let deactivate = $('input[name="deactivate"]').val();
       let valueArr = new Array();
       let list = $("#checkBoxBtn:checked");
       for(let i = 0; i <list.length; i++){
           if(list[i].checked){
               valueArr.push(list[i].value);
               console.log(valueArr);
           }
       }
    
       var chk = confirm("비활성화 하시겠습니까?");
       $.ajax({
           url:"/app/admin/notice/noticeListAdmin",
           type:"post",
           data:{"deactivate":deactivate,
                   "valueArr":valueArr
       },
       success:function(x){
    	   Swal.fire({
    		   icon: 'success',
    		   title: 'success!',
    		   text: '비활성화 되었습니다!',
    		   
    		 })
       },
       error:function(){
           alert('에러가 발생했습니다.');
       }
    
       });
       
   })

   $('input[name="deleteList"]').click(function(){

        let deleteList = $('input[name="deleteList"]').eq(0).val();
        console.log($('input[name="deleteList"]').get(0));
        let valueArr = new Array();
        let list = $("#checkBoxBtn:checked"); 
        for(let i = 0; i <list.length; i++){
        	console.log(list[i]);
            if(list[i].checked){
                valueArr.push(list[i].value);
            }
        }

        var chk = confirm("삭제 하시겠습니까?");
        
        $.ajax({
            url:"/app/admin/notice/noticeListAdmin",
            type:"post",
            data:{"deleteList":deleteList,
                    "valueArr":valueArr
        },
        success:function(x){
        	Swal.fire({
     		   icon: 'success',
     		   title: 'success!',
     		   text: '삭제 되었습니다!',
     		   
     		 })
     		 
     		 
     		 
     		 
     		 
     		 
            location.reload();
            
        },
        error:function(){
            alert('에러가 발생했습니다.');
        }
       

        });
        
        
    });
    
 
 
	
	</script>


        
</body>
</html>
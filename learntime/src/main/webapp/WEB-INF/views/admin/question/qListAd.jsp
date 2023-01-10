<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="/app/.css"> -->
<title>Insert title here</title>
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

.main-admin-q{
    width: 1200px;
    height: auto;
    margin: 0 auto;
}
.line-on-the-top{
    width: 100%;
    height: 300px;
    display: flex;
}
.box-for-line-a{
    width: 150px;
    height: 100%;
   

}
.half-box-a{
    width: 100%;
    height: 50%;
    border-bottom: 5px solid gray;
}
.half-box-b{
    width: 100%;
    height: 50%;
    border-bottom: 5px solid gray;
}
.title-box{
    width: 150px;
    height: 100%;
    text-align: center;
    line-height:300px ;
    font-size: xx-large;
    font-weight: 900;


}
.box-for-line-b{
    width: 900px;
    height: 100%;
   

}
.deleteBtn{
    width: 100%;
    height: 100px;
    display: flex;
    justify-content: flex-end;
    align-items: center;

}
#erase{
    border: 3px solid lightgray;
    width: 100px;
    height: 50px;
    font-size: larger;
    font-weight: 600;
    background-color: white;
    color: #5ECC80;
    
}
.listed-q{
    width: 1200px;
    height: 500px;
    border-top: 3px solid lightgray;;
    display: flex;
    flex-direction: column;
   

}
.faqlistAd{
    width: 1200px;
    height: 45px;
    border-bottom: 3px solid lightgray;
    display: grid;
    grid-template-columns:1fr, 1fr, 10fr,4fr,4fr,2fr;
    justify-items: center;

    
 
}

.gathering-divs-ad{
    display: flex;
    align-items: center;
    border-bottom: 3px solid lightgray;

}



.check-Btn{
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;


}
.del{
	border:none;
	outline:none;
	font-size:medium;
	font-weight:600;
}
.category-faq-ad{
    width: 150px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.title-faq-ad{
    width: 550px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
    display:flex;
}

.nickname-faq-ad{
    width: 200px;
    height: 100%;
    font-weight: 600;
}
.enrollDate-faq-ad{
    width: 400px;
    height: 100%;
    font-weight: 600;
    
}
.deleteBtn-faq-ad{
    width: 100px;
    height: 100%;
}
#delete-ad{
    border: none;
    font-size: medium;
    font-weight: 600;

}
.page-qList-ad{
    width: 100%;
    height: 200px;
    display:flex;
   

}


/*페이징  */

.page-qList-ad{
	margin:0 auto;
	display:flex;
	justify-content:center;
	align-items:center;
	
}
.page-questionAd{

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
            문의
        </div>
        <div class="main-admin-q">
	        <form action="/app/admin/question/qListAd?p=1" method="get">
	        	<input type="hidden" value="${cateNo}" name="cateNo">
				<input type="hidden" value="${p}" name="p">
	        	<div class="line-on-the-top">
	                <div class="box-for-line-a">
	                    <div class="half-box-a"></div>
	                </div>
	                <div class="title-box">문의</div>
	                <div class="box-for-line-b">
	                    <div class="half-box-b"></div>
	                </div>
	            </div>
	            <div class="deleteBtn">
	                <input type="button" value="삭제" id="erase" class="del">
	            </div>
	            <div class="listed-q">
	                <c:forEach var="list" items="${list}"  >
	                    <div class="faqListAd">
	                        <div class="gathering-divs-ad">
	                            <div class="check-Btn"><input type="checkbox" id="checkBtn" value="${list.no}"></div>
	                            <div class="category-faq-ad" name="name">${list.cateName}</div>
	                            <a href="/app/admin/question/qDetailListAdmin?no=${list.no}"><div class="title-faq-ad" name="title">${list.title}</div></a>
	                            <div class="nickname-faq-ad" name="writer">${list.writer}</div>
	                            <div class="enrollDate-faq-ad" name="enrollDate">${list.enrollDate}</div>
	                            <div class="deleteBtn-faq-ad"><input type="button" value="삭제" id="deleteAd" class="del"></div>
	                        </div>
	                    </div>
	                </c:forEach>
	            </div>
	            <div class="page-qList-ad">
					 <div class="page-questionAd">
					  	<c:if test="${pv.startPage != 1}">
		                  <div class="paging-btn" id="prev-btn">
		                    <a
		                      href="${path}/admin/question/qListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
		                      >이전</a
		                    >
		                  </div>
		                </c:if>
		                <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
		                  <div class="paging-btn" id="${i}">
		                    <a
		                      href="${path}/admin/question/qListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
		                      >${i}</a
		                    >
		                  </div>
		                </c:forEach>
		                <c:if test="${pv.endPage < pv.maxPage}">
		                  <div class="paging-btn" id="next-btn">
		                    <a
		                      href="${path}/admin/question/qListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
		                      >다음</a
		                    >
		                  </div>
	                	</c:if>
				   </div>
	            </div>
       		</form>
       	</div>   
    </div>

<script type="text/javascript">
	
	/*체크박스 삭제  */
	 
	$('.del').click(function(){

        let deleteList = $('.del').eq(0).val();
        console.log($('.del').get(0));
        let valueArr = new Array();
        let list = $("#checkBtn:checked"); 
        for(let i = 0; i <list.length; i++){
        	console.log(list[i]);
            if(list[i].checked){
                valueArr.push(list[i].value);
            }
        }

        var chk = confirm("삭제 하시겠습니까?");
        
        $.ajax({
            url:"/app/admin/question/qListAd",
            type:"post",
            data:{"deleteList":deleteList,
                    "valueArr":valueArr
        },
        success:function(x){
            alert('삭제되었습니다.');
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
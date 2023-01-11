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


.listed-q{
    width: 100%;
    height: 550px;
    display: flex;
    flex-direction: column;
   

}
.faqlistAd{
    width: 1200px;
    height: 45px;
    border-bottom: 2px solid lightgray;
    display: grid;
    grid-template-columns:1fr, 1fr, 3fr,10fr,1fr,3fr,3fr,2fr ;
    justify-items: center;

    
 
}

.gathering-divs-ad{
    display: flex;
    align-items: center;
    border-bottom: 2px solid lightgray;

}

.mark-ad{
    width: 50px;
    height: 45px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.checkBox-Btn{
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;


}
.no-faq-ad{
    width: 50px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.category-faq-ad{
    width: 100px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.title-faq-ad{
    width: 620px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}

.nickname-faq-ad{
    width: 130px;
    height: 100%;
    font-weight: 600;
    
}
.enrollDate-faq-ad{
    width: 180px;
    height: 100%;
    font-weight: 600;
    margin-left:25px;
    
}
.deleteBtn-faq-ad{
    width: 80px;
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
    justify-content:center;
   

}

.green-circle{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: #5ECC80;
    color: white;
    text-align: center;
    line-height: 30px;
}
/* 검색창 */

.search-delete-section{
    width: 1200px;
    height: 50px;
    display: flex;
    margin-right: 5px;
    margin-bottom: 30px;

   
}
.cate-search-ad{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    background-color:transparent;
    
}
.search-box-ad{
    width: 890px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;

}
.search-btn-ad{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    

}
.deleteBtn{
    width: 100px;
    height: 50px;
    border: 2px solid lightgray;
    margin-right: 5px;
    
    

}
#erase{
    
    width: 100px;
    height: 50px;
    border:none;
    font-size: larger;
    font-weight: 600;
    background-color: white;
    color: #5ECC80;
    
}
.search-green-box{
    width: 100px;
    height: 50px;
    border: none;
    font-size: larger;
    font-weight: 600;
    background-color: #5ECC80;
    color: white;

}
.categories{
	background-color:transparent;
    border: none;
    width: 100px;
    height: 50px;
    font-size: larger;
    font-weight: 600;
    text-align: center;

}
.search-box{
	background-color:transparent;
	border:none;
	outLine:none;
	height:40px;
	font-size:medium;
}
/* 글 카테고리 */
.list-faq-ad{
    border-bottom: 2px  solid lightgray;
    width: 1200px;
    height: 50px;
    display: flex;
    flex-direction: row;

}
.no-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 60px;
    font-weight: 800;
    color: gray;
}
.cate-faq-admin{
  
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left:45px ;
    font-weight: 800;
    color: gray;
}
.title-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left:310px ;
    font-weight: 800;
    color: gray;
}
#deleteAd{
	border:none;
	outline:none;
	font-size:medium;
	font-weight:600;
}

.nick-faq-admin{
  
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 320px;
    font-weight: 800;
    color: gray;
    margin-right:20px;
}
.enrollDate-faq-admin{
   
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 55px;
    font-weight: 800;
    color: gray;
}
.delete-yn{
    
    height: 50px;
    text-align: center;
    line-height: 50px;
    margin-left: 87px;
    font-weight: 800;
    color: gray;
}


/*페이징  */

.page-qList-ad{
	margin:0 auto;
	display:flex;
	justify-content:center;
	align-items:center;
	
}
.page-faqAd{

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

`
</style>
<body>
	<%@include file="/WEB-INF/views/common/admin-side.jsp"%>
    <div id="content-wrap">
        <div id="admin-category-title" class="shadow-light">
            FAQ
        </div>
        <div class="main-admin-q">
	        <form action="/app/admin/faq/faqListAd">
	        	<input type="hidden" value="${cateNo}" name="cateNo">
	        	<div class="line-on-the-top">
	                <div class="box-for-line-a">
	                    <div class="half-box-a"></div>
	                </div>
	                <div class="title-box">FAQ</div>
	                <div class="box-for-line-b">
	                    <div class="half-box-b"></div>
	                </div>
	            </div>
	            <div class="search-delete-section">
	                <div class="cate-search-ad">
	                    <select name="category" class="categories">
	                        <option value="title">제목</option>
	                        <option value="content">내용</option>
	                    </select>
	                </div>
	                <div class="search-box-ad"><input type="text" name= "keyword" class="search-box" size="100"></div>
	                <div class="search-btn-ad">
	                    <input type="submit" value="검색" class="search-green-box">
	                </div>
	                <div class="deleteBtn">
	                    <input type="submit" value="삭제" id="erase" onclick="deleteList();">
	                </div>
	            </div>
	            <div class="listed-q">
	                <div class="list-faq-ad">
	                    <div class="no-faq-admin">글번호</div>
	                    <div class="cate-faq-admin">카테고리</div>
	                    <div class="title-faq-admin">제목</div>
	                    <div class="nick-faq-admin">닉네임</div>
	                    <div class="enrollDate-faq-admin">작성일시</div>
	                    <div class="delete-yn">삭제</div>
	                </div>
	                <c:forEach var="list" items="${list}" >
	                    <div class="faqListAd">
	                        <div class="gathering-divs-ad">
	                            <div class="checkBox-Btn"><input type="checkbox" name="faqAd" value="${list.no}" id="checkBoxBtn"></div>
	                            <div class="mark-ad">
	                                <div class="green-circle">Q</div>
	                            </div>
	                            <div class="no-faq-ad" name="no">${list.no}</div>
	                            <div class="category-faq-ad" name="name">${list.cateName}</div>
	                            <a href = "/app/admin/faq/faqDetailListAdmin?no=${list.no}"><div class="title-faq-ad" name="title">${list.title}</div></a>
	                            <div class="nickname-faq-ad" name="writer">${list.writer}</div>
	                            <div class="enrollDate-faq-ad" name="enrollDate">${list.enrollDate}</div>
	                            <div class="deleteBtn-faq-ad"><input type="button" value="삭제" id="deleteAd" onclick="delNotice('${list.no}');"></div>
	                        </div>
	                    </div>
	                </c:forEach>
	            </div>
	            <div class="page-qList-ad">
	            	<div class="page-faqAd">
					  	<c:if test="${pv.startPage != 1}">
	                  <div class="paging-btn" id="prev-btn">
	                    <a
	                      href="${path}/admin/faq/faqListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                      >이전</a
	                    >
	                  </div>
	                </c:if>
	                <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
	                  <div class="paging-btn" id="${i}">
	                    <a
	                      href="${path}/admin/faq/faqListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                      >${i}</a
	                    >
	                  </div>
	                </c:forEach>
	                <c:if test="${pv.endPage < pv.maxPage}">
	                  <div class="paging-btn" id="next-btn">
	                    <a
	                      href="${path}/admin/faq/faqListAd?cateNo=${cateNo}&p=${i}&keyword=${keyword}&category=${category}"
	                      >다음</a
	                    >
	                  </div>
	                </c:if>
				   </div>
	            </div>
	        </form>
        </div>
    </div>

<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

 
<script type="text/javascript">

function deleteList(){
	
	/* Swal.fire({
  	  title: '삭제하시겠습니까?',
  	  showDenyButton: true,
  	  confirmButtonText: '네',
  	  denyButtonText: '아니오',
  	}).then((result) => {
  	 /* Read more about isConfirmed, isDenied below */
  	 
  	/* if (result.isConfirmed) {
  		Swal.fire('삭제되었습니다.', '', 'success')
  	} else if (result.isDenied) {
  		Swal.fire('삭제되지 않았습니다', '', 'info')
  	}
  	}) 
   */ 
	
	  
    let valueArr = [];
    let list = $("#checkBoxBtn:checked"); 
    for(let i = 0; i <list.length; i++){
        if(list[i].checked){
            valueArr.push(list[i].value);
        }
    }
 	
    var chk = confirm("삭제 하시겠습니까?");
    $.ajax({
        url:"/app/admin/faq/faqListAd/deleteList",
        type:"get",
        traditional:true,
        data:{
     	   "valueArr" : valueArr
                
    },
    success:function(x){
    	Swal.fire({
    		  icon: 'success',
    		  title: 'success',
    		  text: '삭제되었습니다!',
    		  
    		})
 		setTimeout(function() {
 			location.reload();
 			 
  			}, 4000);
 		  
        
    },
    error:function(){
        alert('에러가 발생했습니다.');
    }
   

    });
		
		
	}
	
	
function delNotice(no){
    
    Swal.fire({
  title: '삭제하시겠습니까?',
  showDenyButton: true,
  confirmButtonText: '네',
  denyButtonText: '아니오',
}).then((result) => {
	  /* Read more about isConfirmed, isDenied below */
	  if (result.isConfirmed) {
	    Swal.fire('삭제되었습니다.', '', 'success')
	  } else if (result.isDenied) {
	    Swal.fire('삭제되지 않았습니다', '', 'info')
	  }
	}) 
    
    $.ajax({
        url : "/app/admin/faq/faqListAd/delete",
        type : "get",
        data : {
     	   "check" : no
	    },
	    success:function(x){
	    	
	 	 setTimeout(function() {
	 	 	location.reload();
	 	  }, 7000);
	        
	    },
	    error:function(){
	        alert('에러가 발생했습니다.');
	    }
    });
		
		
	}


	
	</script>
        
</body>
</html>
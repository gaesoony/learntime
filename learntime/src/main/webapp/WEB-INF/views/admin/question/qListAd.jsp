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
    border-radius: 1rem;
    font-size: larger;
    font-weight: 600;
    background-color: white;
    color: #5ECC80;
    
}
.listed-q{
    width: 100%;
    height: 675px;
    border-top: 3px solid lightgray;;
    display: flex;
    flex-direction: column;
   

}
.faqlistAd{
    width: 1200px;
    height: 45px;
    border-bottom: 3px solid lightgray;
    display: grid;
    grid-template-columns:1fr, 1fr, 3fr,10fr,1fr,3fr,3fr,2fr ;
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
.category-faq-ad{
    width: 100px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.title-faq-ad{
    width: 200px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-weight: 600;
}
.comment-faq-ad{
    width: 510px;
    height: 10px;
    font-weight: 600;
    margin-bottom: 5px;
}
.nickname-faq-ad{
    width: 100px;
    height: 100%;
    font-weight: 600;
}
.enrollDate-faq-ad{
    width: 160px;
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
    border: 1px solid red;

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
	                <input type="button" value="삭제" id="erase">
	            </div>
	            <div class="listed-q">
	                <c:forEach var="list" items="${list}"  >
	                    <div class="faqListAd">
	                        <div class="gathering-divs-ad">
	                            <div class="check-Btn"><input type="checkbox" id="checkBtn"></div>
	                            <div class="category-faq-ad" name="name">${list.cateName}</div>
	                            <div class="title-faq-ad" name="title">${list.title}</div>
	                            <div class="nickname-faq-ad" name="writer">${list.writer}</div>
	                            <div class="enrollDate-faq-ad" name="enrollDate">${list.enrollDate}</div>
	                            <div class="deleteBtn-faq-ad"><input type="button" value="삭제" id="delete-ad"></div>
	                        </div>
	                    </div>
	                </c:forEach>
	            </div>
	            <div class="page-qList-ad">
					 <ul id="page-nation">
						<li><a href="/app/admin/question/qListAd?p=1" class="first"><<</a></li>
						<li><a class="arrow left"><</a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="arrow right">></a></li>
						<li><a href="/app/admin/question/qListAd?p=${pv.maxPage}" class="last">>></a></li>
					</ul>
	            </div>
       		</form>
       	</div>   
    </div>

<script type="text/javascript">
	const pageNation = document.querySelector('#page-nation');
	const numArr = pageNation.querySelectorAll('.num');
	const left = pageNation.querySelector('.arrow.left');
	const right = pageNation.querySelector('.arrow.right');
	
	
	if(${pv.startPage} > 1){
		left.href = '/app/admin/question/qListAd?p=${pv.startPage})-1';
	}else{
		left.classList.add('none-select');
	}
	
	if(${pv.currentPage} != ${pv.maxPage}){
		left.href = '/app/admin/question/qListAd?p=${pv.currentPage})+1';
	}else{
		right.classList.add('none-select');
	}
	

	let page = ${pv.startPage};

	for (let i = 0; i < numArr.length; i++) {
		const num = numArr[i];
		
		if(page == ${pv.currentPage}){
			num.classList.add('current');
		}
		
		if(page<1 || page > ${pv.maxPage}){
			num.classList.add('p-none');
		}else{
			num.href = '/app/admin/question/qListAd?p='+page;
		}
		num.classList.remove('p-none');
        $(num).attr('onclick','/app/admin/question/qListAd?p=('+page+')');
        
		num.innerHTML = page;
		page++;
	}
	
	</script>

        
</body>
</html>
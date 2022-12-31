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
    height: 1000px;
   

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
    border-radius: 1rem;
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
    border-radius: 1rem;
    color: #5ECC80;
    background-color: white;
    text-align: center;
    line-height: 50px;
    margin-left: 20px;


}

.delete-notice-Btn{
    width: 100px;
    height: 50px;
    border-radius: 1rem;
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
    height: 600px;
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
    width: 100px;
    height: 100%;
    line-height: 45px;
    font-weight: 600;
    font-size: x-large;
}
.posted-notice{
    width: 1050px;
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
            	<div class="notice-admin-Btns">
                <div class="noticeBtn-etc">
                    <a href="#"><div class="setting-Btn"><img src="/app/resources/img/faq/image 116.png"></div></a>
                    <div class="Btns-noticeAd">
                        <div class="activate-Btn"><input class="activate" type="button" value="활성화" name="activate"></div>
                        <div class="deactivate-Btn"><input class="deactivate" type="button" value="비활성화" name="deactivate"></div>
                        <div class="delete-notice-Btn"><input class="delete-lists" type="button" value="삭제" name="delete"></div>
                    </div>
                </div>
            </div>
            <div class="notice-list">
                <div class="notice-list-twoColored">
                    <div class="notice-group">
                        <c:forEach var="list" items="${list}">
                            <div class="notice-white">
                                <div class="admin-id-etc">
                                    <div class="admin-id" name="writer">${list.writer}</div>
                                    <div class="enroll-date" name=enrollDate>${list.enrollDate}</div>
                                </div>
                                <div class="written-notice">
                                    <div class="checkBoxBtn-notice"><input type="checkbox"  id="checkBoxBtn"></div>
                                    <div class="cate-notice" name="name">${list.cateName}</div>
                                    <div class="posted-notice" name="title">${list.title}</div>
                                    <div class="views-etc">
                                        <div class="views" name="hit"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/1472/1472411.png">${list.hit }</div>
                                        <div class="replies" name="cmt"><img width="15px" height="15px" src="https://cdn-icons-png.flaticon.com/128/66/66933.png">${list.cmt}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="page-notice">
            	<div class="page-question">
				  	<ul id="page-nation">
						<li><a href="/app/notice/noticeList?p=1&cateNo=0" class="first"><<</a></li>
						<li><a class="arrow left"><</a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="num"></a></li>
						<li><a class="arrow right">></a></li>
						<li><a href="/app/notice/noticeList?p=${pv.maxPage}&cateNo=0" class="last">>></a></li>
					</ul>
			    </div>
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
		left.href = '/app/notice/noticeList?p=${pv.startPage})-1';
	}else{
		left.classList.add('none-select');
	}
	
	if(${pv.currentPage} != ${pv.maxPage}){
		left.href = '/app/notice/noticeList?p=${pv.currentPage})+1';
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
			num.href = '/app/notice/noticeList?p='+page;
		}
		num.classList.remove('p-none');
        $(num).attr('onclick','/app/notice/noticeList?p=('+page+')');
        
		num.innerHTML = page;
		page++;
	}
	
	</script>


        
</body>
</html>
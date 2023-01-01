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
    width: 1200px;
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
/* .comment-faq-ad{
    width: 510px;
    height: 10px;
    font-weight: 600;
    margin-bottom: 5px;
} */
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
   

}

/*페이징  */

.page-question{
	margin:0 auto;
	display:flex;
	justify-content:center;
	align-items:center;
	
}
	#page-nation{
        list-style: none;
        display: inline-block;
        padding: 0;
        margin-top: 20px;
    }

    #page-nation li{
        display: inline;
        text-align: center;
        margin:0 10px;
      
    }
/* 페이지 버튼~ */
    #page-nation li a{
        text-decoration: none;
        color: #999999;
        font-size: 15px;
        font-family: var(--sans);
        

    }

    #page-nation .first:hover,  #page-nation .last:hover,  #page-nation .right:hover,  #page-nation .left:hover{
        color:#5ECC80;
    }


    #page-nation a:active{
        cursor: default;
        color: white;
    }

    #page-nation .num{
        padding: 0;
        width: 30px;
        height: 30px;
        display: inline-block;
        border-radius: 100%;
        line-height: 30px;
         text-align: center;
    }

    #page-nation .num:hover{
        background-color: #5ECC80;
        color: white;
       
    }

    #page-nation .num:active{
        background-color: #5ECC80;
        cursor: pointer;
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
	                <input type="button" value="삭제" id="erase" onclick="deleteValue();">
	            </div>
	            <div class="listed-q">
	                <c:forEach var="list" items="${list}"  >
	                    <div class="faqListAd">
	                        <div class="gathering-divs-ad">
	                            <div class="check-Btn"><input type="checkbox" id="checkBtn" value="${list.no}"></div>
	                            <div class="category-faq-ad" name="name">${list.cateName}</div>
	                            <a href="app/admin/question/qDetailListAdmin?no=${list.no}"><div class="title-faq-ad" name="title">${list.title}</div></a>
	                            <div class="nickname-faq-ad" name="writer">${list.writer}</div>
	                            <div class="enrollDate-faq-ad" name="enrollDate">${list.enrollDate}</div>
	                            <div class="deleteBtn-faq-ad"><input type="button" value="삭제" id="delete-ad" onclick="deleteValue();"></div>
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
	
	/*체크박스 삭제  */
	 
	function deleteValue(){
		var url="qListAd";
        var valueArr = new Array();
        var list = $("checkBtn");
        for(var i = 0; i <list.length; i++){
            if(list[i].checked){
                valueArr.push(list[i].value);
            }
        }

        var chk = confirm("삭제하시겠습니까?");
        $.ajax({
            url: url,
            type:'post',
            traditional:true,
            data:{
                valueArr:valueArr
            },
            success:function(jdata){
                if(jdata = 1){
                    alert("삭제되었습니다.");

                }else{
                    alert("삭제되지 않았습니다.");
                }
            }
        });
    
		
	}
	
	</script>

        
</body>
</html>
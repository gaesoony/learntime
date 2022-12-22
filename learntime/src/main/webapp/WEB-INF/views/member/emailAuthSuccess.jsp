<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  
<head>
<meta charset="UTF-8">
<title>LEARN TIME | 메일 인증 완료</title>
<style>

    #success-area{
        width: 100%;
        height: 70vh;
       
    }
</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<div id="success-area">
    <script>
        Swal.fire({
            icon: 'success',
            title: '이메일 인증이 완료 되었습니다!',
            text: '로그인 후 다양한 러너들과 소통하세요!',
            confirmButtonColor: '#5ECC80', 
            
        }).then(function(){
            location.href="${pageContext.request.contextPath}/main"
        });


</script>   
</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>
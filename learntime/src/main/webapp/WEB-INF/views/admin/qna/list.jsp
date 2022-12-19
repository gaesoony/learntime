<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #content-wrap {
    background-color: #efefef;
  }
  #admin-category-title {
    padding: 0 20px;
    color: black;
    background-color: white;
    box-shadow: 0px 2px 2px #c5c5c5;

    height: 55px;
    line-height: 55px;
    font-size: 18px;
  }

  /* 통계 */
  .set-box{
    margin-top: 30px;
    margin-left: 30px;
    display: flex;
  }
  .box{
    width: 265px;
    height: 91px;
    border-radius: 10px;
    border: 1px solid #909090;
    margin-right: 20px;
  }
  .box-icon{
    color: purple;
    float: left;
    margin-top: 23px;
    margin-left: 70px;
    margin-right: 10px;
  }
  .box-icon2{
    color: rgb(61, 61, 178);
    float: left;
    margin-top: 23px;
    margin-left: 60px;
    margin-right: 10px;
  }
  .box-icon3{
    color: gray;
    float: left;
    margin-top: 23px;
    margin-left: 60px;
    margin-right: 10px;
  }
  .box-icon4{
    color: green;
    float: left;
    margin-top: 23px;
    margin-left: 60px;
    margin-right: 10px;
  }
  .box-title{
    font-size: 15px;
    margin-top: 20px;
  }
  .box-number{
    font-size: 27px;
    font-weight: 550;
    margin-top: 5px;
  }

  /* 본문 box */
  .main-box{
    width: 1200px;
    margin: 0 auto;
    margin-top: 30px;
    border: 1px solid #9D9D9D;
    background-color: white;
    border-radius: 10px;
  }

  /* 중간 바 */
  .middle-wrap{
    display: flex;
    height: 120px;
  }

  /* 카테고리 */
  .category-box{
    width: 200px;
    margin-top: 115px;
    margin-left: 30px;
    float: left;
  }
  .category{
    border: none;
    font-size: 15px;
    color: #9D9D9D;
    background-color: white;
  }
  .active{
    color: black;
  }

  /* warning */
  .warning-box{
    width: 420px;
    height: 40px;
    border: 1px solid #F87171;
    background-color: #FEF2F2;
    border-radius: 10px;
    margin-left: 85px;
    margin-right: 20px;
    margin-top: 95px;
  }
  .warning{
    color: #7F1D1D;
    font-size: 12px;
    text-align: center;
    margin-top: 15px;
  }

  /* 검색바 */
  .search-box{
    width: 400px;
    height: 40px;
    background-color: white;
    border: 1px solid #D4D4D4;
    display: flex;
    border-radius: 5px;
    margin-top: 95px;
  }
  #search{
    width: 470px;
    height: 38px;
    font-size: 15px;
    border: none;
    margin: 0 auto;
    outline: none;
    margin-left: 5px;
  }
  .search-btn{
    height: 38px;
    border: none;
    font-size: 20px;
    background-color: white;
    text-align: center;
    margin-right: 5px;
    cursor: pointer;
  }

  /* 게시판 목록 부분 */
  .content-section {
    background-color: white;
    margin-top: 30px;
    border-top: 1px solid rgb(219, 219, 219);
  }
  .grid {
    display: grid;
    grid-template-columns: 0.8fr 5fr 2fr 2fr 1fr 1fr 1fr 1fr;
    margin-bottom: 5px;
  }
  .grid div {
    height: 45px;
    border-bottom: 1px solid rgb(219, 219, 219);
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 14px;
  }
  .grid-title {
    font-weight: 600;
  }
  .main-color {
    color: #5ecc80;
  }
  .btn-area {
    padding: 10px;
    margin-bottom: 200px;
  }
  .btn-area input {
    background-color: white;
    border: 1px solid #5ecc80;
    width: 90px;
    height: 35px;
    color: #5ecc80;
    cursor: pointer;
  }
  .relative {
    position: relative;
  }

  /* paging */
  #paging{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        margin: auto;
        margin-top: 40px;
        margin-bottom: 30px;
        width: 400px;
    }
    
    .paging-btn{
        height: 25px;
        width: 25px;
        border: 1px solid #aeaeae;
        border-radius: 2px;
        text-align: center;
        line-height: 24px;
        color: #535353;
        cursor: pointer;
    }
    .paging-btn:hover{
        background-color: #535353;
        color: white;
    }
    
    #next-btn{
        width: 40px;
    }
</style>
</head>
<body>
  <%@include file="/WEB-INF/views/common/admin-side.jsp"%>
  <div id="content-wrap">
    <div id="admin-category-title" class="shadow-light">Learning 관리</div>

    <!-- 본문 box -->
    <div class="main-box">
      <!-- 통계 -->
      <div class="set-box">
        <div class="box">
          <div class="box-icon"><i class="fa-solid fa-list fa-3x"></i></div>
          <div class="box-title">Total Post</div>
          <div class="box-number">154</div>
        </div>

        <div class="box">
          <div class="box-icon2"><i class="fa-solid fa-users fa-3x"></i></div>
          <div class="box-title">Total Writer</div>
          <div class="box-number">154</div>
        </div>

        <div class="box">
          <div class="box-icon3"><i class="fa-solid fa-list fa-3x"></i></div>
          <div class="box-title">Total Delete Post</div>
          <div class="box-number">154</div>
        </div>

        <div class="box">
          <div class="box-icon4"><i class="fa-solid fa-list fa-3x"></i></div>
          <div class="box-title">Total Blind Post</div>
          <div class="box-number">154</div>
        </div>
      </div>

      <!-- 중간 바 -->
      <div class="middle-wrap">
        <!-- 카테고리 -->
        <div class="category-box">
          <button class="category" style="cursor: pointer;">· 등록</button>
          <button class="category" style="cursor: pointer;">· 삭제</button>
          <button class="category" style="cursor: pointer;">· 블라인드</button>
        </div>

        <div class="warning-box">
          <div class="warning"><i class="fa-solid fa-circle-info"></i> 이미 블라인드 처리된 게시물은 공개 여부 활성화가 불가능합니다.</div>
        </div>

        <div class="search-box">
          <input type="text" id="search" placeholder="  Search...">
          <button class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
      </div>

      <section class="content-section">
        <div class="grid">
          <div class="grid-title">번호</div>
          <div class="grid-title">제목</div>
          <div class="grid-title">작성자</div>
          <div class="grid-title">작성일시</div>
          <div class="grid-title">조회수</div>
          <div class="grid-title">댓글수</div>
          <div class="grid-title">스크랩수</div>
          <div class="grid-title">상태</div>

          <% for(int i=1; i<=10; i++) {%>
          <div>1</div>
          <div>
            <a href="${pageContext.request.contextPath}/admin/qna/detail"
              >Learning 관리자 페이지</a
            >
          </div>
          <div>nick01</div>
          <div>2022-10-10 12:12:12</div>
          <div>100</div>
          <div>100</div>
          <div>100</div>
          <div>블라인드</div>

          <%}%>
        </div>
      </section>

      <!-- 버튼 -->
      <div id="paging">
        <div class="paging-btn">1</div>
        <div class="paging-btn">2</div>
        <div class="paging-btn">3</div>
        <div class="paging-btn">4</div>
        <div class="paging-btn">5</div>
        <div class="paging-btn">6</div>
        <div class="paging-btn">7</div>
        <div class="paging-btn">8</div>
        <div class="paging-btn">9</div>
        <div class="paging-btn">10</div>
        <div class="paging-btn" id="next-btn">다음</div>
      </div>
    </div>
  </div>


  <script>
    // 카테고리 버튼
    $('.category-box .category').on("click",function(){
            $(".category-box .category.active").removeClass('active');
            $(this).addClass("active");
        });
  </script>

  <script src="https://kit.fontawesome.com/4b219bc5a3.js" crossorigin="anonymous"></script>

</body>
</html>
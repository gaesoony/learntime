<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"
    />
    <title>Insert title here</title>
    <link rel="stylesheet" href="/app/resources/css/reset.css" />
    <link rel="stylesheet" href="/app/resources/css/notice/noticeWrite.css" />
  </head>
  <body>
    <%@ include file = "/WEB-INF/views/common/header.jsp" %>
    <form action="/app/notice/noticeWrite" method="post">
      <div class="list-main">
        <div class="banner-section">
          <div class="banner">
            <div id="banner-title1"><span>공지사항</span></div>
            <div id="banner-title2"><span>런타임의 새로운 소식들!</span></div>
          </div>
        </div>
        <div class="notice-detail-list">
          <div class="notice-sign">
            <div class="line1">
              <div class="line-a"></div>
            </div>
            <div class="name-notice">공지사항</div>
            <div class="line2">
              <div class="line-c"></div>
            </div>
          </div>
          <div class="gathering-divs">
            <div class="cate-select-box">
              <div class="cate-selection">
                <div class="cate-pin">상단고정</div>
                <div class="activated">
                  <div class="all-cate">
                    <input type="radio" name="status" value="1" />전체
                  </div>
                  <div class="activate">
                    <input type="radio" name="status" value="2" />활성화
                  </div>
                  <div class="non-activated">
                    <input type="radio" name="status" value="3" />비활성화
                  </div>
                </div>
              </div>
            </div>
            <div class="notice-cate-content">
              <div class="notice-title-date">
                <div class="category-notice">
                  <select name="cateNo" id="categories">
                    <option value="1">전체</option>
                    <option value="2">스터디</option>
                    <option value="3">공부인증</option>
                    <option value="4">Q&A</option>
                    <option value="5">멘토링</option>
                    <option value="6">커뮤니티</option>
                    <option value="7">스킨샵</option>
                  </select>
                </div>
                <input type="text" name="title" class="title-input" size="100"/>
                <div class="title-notice"></div>
                <div class="date-notice"></div>
              </div>
              <div class="empty1"></div>
              <div class="notice-content">
                <textarea class="summernote" name="content"></textarea>
              </div>
              <div class="backBtn">
                <div class="btn-to">
                  <input type="submit" value="등록" class="sub-btn" />
                </div>
                
                <a href="/app/notice/noticeList"
                  ><div class="btn-to">글목록</div></a >
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
                $(".summernote").summernote({
                  height: 350,
                  width: 1000,
                  placeholder: "내용을 작성하세요",
                  lang: "ko-KR",
                  disableResizeEditor: true,
                });
              </script>

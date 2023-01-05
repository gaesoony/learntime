<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/mystudy/board/detail.css"
    />
    <link
      href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
      rel="stylesheet"
    />

    <!-- include summernote css/js-->
    <link
    rel="stylesheet"
    href="/app/resources/css/summernote/summernote-lite.css"
  />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main class="space-between">
      <%@ include file="/WEB-INF/views/mystudy/common/side.jsp" %>

      <article class="mystudy-article">
        <div class="mystudy-board-title">${cateName}</div>
        <article class="study-detail">
          <section class="study-detail-title-area">
            <h1 class="bold700">${boardOne.TITLE}</h1>
            <div class="space-between study-detail-title-bottom">
              <div class="flex">
                <div class="user-profile">
                  <img src="/app/resources/img/study/profile.png" alt="" />
                </div>
                <div class="user-nick flex">
                  <div>${boardOne.NICK}</div>
                  <img src="/app/resources/img/study/flower.png" alt="" />
                </div>
                <div class="soft-gray study-detail-title__date">
                  | ${boardOne.ENROLL_DATE} |
                </div>
                <ul class="flex soft-gray hit-cmt-scrap">
                  <li>
                    <i class="fa-regular fa-eye"></i
                    ><span>${boardOne.HIT}</span>
                  </li>
                  <li>
                    <i class="fa-regular fa-comment-dots"></i><span>5</span>
                  </li>
                </ul>
              </div>
              <div>
                <a
                  href="${path}/mystudy/board/edit?gno=${groupOne.NO}&ctno=${ctno}&bno=${bno}"
                  >수정</a
                >
                <a onclick="deleteBoard();">삭제</a>
              </div>
            </div>
            <div class="study-info-content">
              <div class="study-detail-info-content">${boardOne.CONTENT}</div>
            </div>
          </section>
        </article>
        <div class="cmt-div">
          <main class="middle">
            <section class="cmt-area">
              <div class="cmt-input">
                <div class="cmt-input-top flex">
                  <c:if test="${loginMember.nick == null}">
                    <img
                      src="${path}/resources/upload/common/profile_default.png"
                      alt=""
                    />
                    <div class="bold700">로그인하고 댓글을 남겨보세요!</div>
                  </c:if>
                  <c:if test="${loginMember.nick != null}">
                    <c:if test="${loginMember.imgPath == null}">
                      <img
                        src="/app/resources/upload/common/profile_default.png"
                        alt=""
                      />
                    </c:if>
                    <c:if test="${loginMember.imgPath != null}">
                      <img
                        src="/app/resources/upload/common/${loginMember.imgPath}"
                        alt=""
                      />
                    </c:if>
                    <div class="bold700">
                      ${loginMember.nick}님, 댓글을 남겨보세요!
                    </div>
                  </c:if>
                </div>
                <c:if test="${loginMember != null}">
                  <form action="${path}/mystudy/board/detail/writeCmt" method="post">
                    <input type="hidden" name="gno" value="${groupOne.NO}">
                    <input type="hidden" name="mno" value="${loginMember.no}">
                    <input type="hidden" name="ctno" value="${ctno}">
                    <input type="hidden" name="bno" value="${bno}">
                    <div class="cmt-area">
                      <textarea name="cmt" class="summernote"></textarea>
                    </div>
                    <div class="cmt-btn-area relative">
                      <input type="submit" value="답변 등록"/>
                    </div>
    
                  </form>
    
                </c:if>
              </div>
              <ul class="cmt-list">
                <c:forEach items="${groupCmtList}" var="map">
                  <li>
                    <div class="cmt-top">
                        <div class="cmt-top-div cmt-profile-img"><img src="${path}/resources/upload/common/profile_default.png" alt=""></div>
                        <div class="cmt-top-div cmt-info">
                          <div class="flex">
                            
                         
                            <div class="member-nick">${map.NICK}</div>
    
                          </div>
                          <div>
                            <span class="enroll-date">${map.ENROLL_DATE}</span>
                            
                            <c:if test="${loginMember != null && loginMember.no == map.WRITER}">
                              <a href="" class="cmt-edit">수정</a>
                              <a href="" class="cmt-edit">삭제</a>
    
                            </c:if>
                          </div>
                        </div>
                        <div class="cmt-top-div">
                               
                        </div>
                      </div>
                      <div class="cmt-content">
                         ${map.CMT_CONTENT}
                      </div>
                      <div class="cmt-reply"> 
                        <div class="cmt-reply-top">
                          <div>댓글</div>
                          <div ><span class="cmt-toggle-btn">더보기</span><i class="fa-solid fa-chevron-down"></i></div>
                        </div>
                      </div>
                      <div class="cmt-reply-detail hidden">
                        <ul class=cmt-reply-list>
                          <c:forEach items="${map.groupCmtReplyList}" var="reply">
                            <li>
                              <div class="cmt-reply-member-profile">
                                <div><img src="${path}/resources/upload/common/profile_default.png" alt=""></div>
                                <div></div>
                              </div>
                              <div class="cmt-reply-content">
                                <div class="cmt-reply-content-top">
                                  <div class="flex">
                                    <div class="cmt-reply-member-nick">${reply.NICK}</div>
                                    <c:if test="${loginMember != null && loginMember.no == reply.WRITER}">
                                    <a href="" class="cmt-edit">수정</a>
                                    <a href="" class="cmt-edit">삭제</a>
                                    </c:if>
                                  </div>
                                  <div class="cmt-reply-enroll-date">${reply.ENROLL_DATE}</div>
                                </div>
                                <div class="cmt-reply-content-bottom">${reply.CMT_CONTENT}</div>
                              </div>
                              <div >
                                    
                            </div>
                            </li>
                          </c:forEach>
                          
                        </ul>
                        <div class="cmt-write-btn">
                            <span>댓글작성</span>
                        </div>
                        <form action="${path}/mystudy/board/detail/writeCmtReply" method="post">
                          <input type="hidden" name="gno" value="${groupOne.NO}">
                          <input type="hidden" name="bno" value="${bno}">
                          <input type="hidden" name="ctno" value="${ctno}">
                          <input type="hidden" name="mno" value="${loginMember.no}">
                          <div class="cmt-reply-btn hidden">
                            <div class="cmt-reply-area">
                                <textarea name="cmt" class="summernote"></textarea> 
                                <input type="hidden" name="group" value="${map.GROUP}"> 
                            </div>
                            <div class="cmt-btn-area relative">
                              <input type="submit" value="답변 등록" />
                            </div>
                          </div>
        
                        </form>
        
                      </div>
                  </li>
                </c:forEach>
               
              </ul>
            </section>
            <script src="${path}/resources/js/summernote/summernote-lite.js"></script>
            <script src="${path}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
            <script>
              $(document).ready(function () {
                //여기 아래 부분
                $(".summernote").summernote({
                  height: 150, // 에디터 높이
                  minHeight: null, // 최소 높이
                  maxHeight: null, // 최대 높이
                  focus: false, // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR", // 한글 설정
                  placeholder: "", //placeholder 설정
                  disableResizeEditor: true,
                });
              });
    
              //글쓰기 버튼 클릭 시 로그인모달 띄우기
              function login() {
                $(".blackBG").addClass("show");
              }
              function deleteBoard() {
                Swal.fire({
                  title: "게시글을 삭제하시겠습니까?",

                  icon: "warning",
                  showCancelButton: true,
                  confirmButtonColor: "#3085d6",
                  cancelButtonColor: "#d33",
                  confirmButtonText: "삭제",
                  cancelButtonText: "취소",
                }).then((result) => {
                  if (result.isConfirmed) {
                    location.href =
                      "${path}/mystudy/board/delete?ctno=${ctno}&gno=${groupOne.NO}&bno=${bno}";
                  }
                });
              }
            </script>
            <script>
             
           
              const cmtToggleBtn = document.querySelectorAll('.cmt-toggle-btn');
              cmtToggleBtn.forEach((o)=>{
                o.addEventListener('click', (event)=>{
                  const span = event.target.innerHTML;
                  if(span == '더보기') {
                    event.target.innerHTML = '접기';
                  }
                  if(span == '접기') {
                    event.target.innerHTML = '더보기';
                  }
                  const icon = event.target.nextSibling;
                  icon.classList.toggle('fa-chevron-down');
                  icon.classList.toggle('fa-chevron-up');
                  const cmtReply = event.target.parentNode.parentNode.parentNode;
                  const cmtReplyDetail = cmtReply.nextSibling.nextSibling;
                  cmtReplyDetail.classList.toggle('hidden');
                })
              })
        
              const cmtWriteBtnSpan = document.querySelectorAll('.cmt-write-btn span');
              cmtWriteBtnSpan.forEach((o)=>{
                o.addEventListener('click', (event)=>{
                  const cmtWriteBtn = event.target.parentNode;
                  const cmtReplyBtn = cmtWriteBtn.nextSibling.nextSibling.querySelector('.cmt-reply-btn');
                  
                  if("${loginMember}" == "") {
                    login();
                  }else {
                    cmtWriteBtn.classList.add('hidden');
                    cmtReplyBtn.classList.remove('hidden');
        
                  }
         
                })
              })
        
             
        
            </script>
          </main>
        </div>
           
            
      </article>
    </main>
  </body>
</html>

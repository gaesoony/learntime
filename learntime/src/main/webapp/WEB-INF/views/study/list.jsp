<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="${path}/resources/css/study/list.css?ver=7" />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <section class="study-banner middle">
      <div>
        <div class="bold700">스터디와 사이드 프로젝트를 찾는</div>
        <div class="bold700">가장 쉬운 방법</div>
        <div class="flex">
          <img src="${path}/resources/img/study/study-banner-logo.png" alt="" />
          <span>에서 함께할 개발자를 찾으세요</span>
        </div>
      </div>
    </section>
    <form action="${path}/study/list" method="get" name="form">
      <div class="middle">
        <main class="study-main">
          <aside class="my-study-aside">
            <div class="my-study">
              <h1>
                <i class="fa-solid fa-users gray1"></i>
                <span class="bold700 gray1">내가 가입한 모임</span>
              </h1>
              <ul class="my-study-list">
                <c:if test="${myGroupList.size() == 0 or myGroupList == null}">
                  <a href=""></a>
                  <span>아직 가입된 모임이 없습니다</span>
                </c:if>
                <c:forEach items="${myGroupList}" var="map">
                  <li class="my-study-list-detail flex">
                    <c:if test="${map.IMG_PATH == null }">
                      <img
                        src="${path}/resources/upload/mystudy/default_profile.png"
                        alt=""
                      />
                    </c:if>
                    <c:if test="${map.IMG_PATH != null }">
                      <img
                        src="${path}/resources/upload/mystudy/profile/${map.IMG_PATH}"
                        alt=""
                      />
                    </c:if>

                    <a
                      href="${path}/mystudy/main?gno=${map.NO}"
                      class="my-study-title gray1"
                      >${map.NAME}</a
                    >
                  </li>
                </c:forEach>
              </ul>
            </div>
          </aside>
          <article class="study-article">
            <section class="study-search-area">
              <div class="relative">
                <i class="fa-solid fa-magnifying-glass gray1"></i>
                <c:if test="${keyword == null}">
                  <input
                    class="study-search-name"
                    type="text"
                    placeholder="관심 스터디/프로젝트를 검색해보세요!"
                    name="keyword"
                    onkeypress="press(this.form)"
                  />
                </c:if>
                <c:if test="${keyword != null}">
                  <input
                    class="study-search-name"
                    type="text"
                    value="${keyword}"
                    name="keyword"
                    onkeypress="press(this.form)"
                  />
                </c:if>
                <input type="submit" value="검색" />
              </div>
              <div class="relative">
                <div class="study-search-tag-div">
                  <i class="fa-solid fa-hashtag gray1"></i>
                  <div class="tag-list">
                    <c:forEach items="${tagList}" var="item">
                      <div
                        class="relative cursor tag-div"
                        onclick="deleteTag(event)"
                      >
                        <input
                          onclick="deleteTag2(event)"
                          name="tag"
                          type="text"
                          readonly
                          style="width:${(fn:length(item) + 2) * 9}px;"
                          value="${item}"
                          class="tag-btn cursor"
                        />
                        <i
                          class="fa-solid fa-xmark"
                          onclick="deleteTag2(event)"
                        ></i>
                      </div>
                    </c:forEach>
                  </div>
                  <input
                    class="study-search-tag"
                    type="text"
                    placeholder="태그로 검색해보세요!"
                  />
                </div>
                <input
                  type="reset"
                  value="초기화"
                  class="reset-btn"
                  onclick="resetTag()"
                /><i
                  class="fa-solid fa-rotate-left cursor"
                  onclick="resetTag()"
                ></i>
              </div>
            </section>

            <section class="study-tech-area">
              <ul class="tech-category-list flex bold700">
                <li class="tech-category relative">
                  <label>
                    <input type="radio" name="techType" value="인기" checked />
                    <div>인기</div>
                    <div class="bar"></div>
                  </label>
                </li>
                <li class="tech-category tech-unClicked relative">
                  <label>
                    <input type="radio" name="techType" value="프론트엔드" />
                    <div>프론트엔드</div>
                    <div class="bar"></div>
                  </label>
                </li>
                <li class="tech-category tech-unClicked relative">
                  <label>
                    <input type="radio" name="techType" />
                    <div>백엔드</div>
                    <div class="bar"></div>
                  </label>
                </li>
                <li class="tech-category tech-unClicked relative">
                  <label>
                    <input type="radio" name="techType" value="모바일" />
                    <div>모바일</div>
                    <div class="bar"></div>
                  </label>
                </li>
                <li class="tech-category tech-unClicked relative">
                  <label>
                    <input type="radio" name="techType" value="기타" />
                    <div>기타</div>
                    <div class="bar"></div>
                  </label>
                </li>
                <li class="tech-category tech-unClicked relative">
                  <label>
                    <input type="radio" name="techType" value="모두보기" />
                    <div>모두보기</div>
                    <div class="bar"></div>
                  </label>
                </li>
              </ul>
              <ul class="tech-list">
                <c:forEach items="${popularTechStackList}" var="map">
                  <li>
                    <div class="flex">
                      <img
                        src="${pageContext.request.contextPath}/resources/upload/techStack/${map.IMG_PATH}"
                        alt=""
                      />
                      <span>${map.NAME}</span>
                    </div>
                  </li>
                </c:forEach>
              </ul>
              <ul class="selected-tech-list">
                <c:forEach items="${techStackList}" var="item">
                  <div
                    class="relative cursor tag-div"
                    onclick="deleteTag(event)"
                  >
                    <input
                      onclick="deleteTag2(event)"
                      name="techStack"
                      type="text"
                      readonly
                      style="width:${(fn:length(item) + 2 )* 6}px;"
                      value="${item}"
                      class="tag-btn cursor"
                    />
                    <i
                      class="fa-solid fa-xmark"
                      onclick="deleteTag2(event)"
                    ></i>
                  </div>
                </c:forEach>
              </ul>
            </section>
            <section class="study-area">
              <div class="space-between">
                <ul class="study-type-list bold700 flex">
                  <li class="study-type relative">
                    <label onclick="form.submit();">
                      <input type="radio" name="type" checked value="전체" />
                      <div>전체</div>
                      <div class="bar"></div>
                    </label>
                  </li>
                  <li class="study-type relative">
                    <label onclick="form.submit();">
                      <input type="radio" name="type" value="스터디" />
                      <div>스터디</div>
                      <div class="bar"></div>
                    </label>
                  </li>
                  <li class="study-type relative">
                    <label onclick="form.submit();">
                      <input type="radio" name="type" value="프로젝트" />
                      <div>프로젝트</div>
                      <div class="bar"></div>
                    </label>
                  </li>
                </ul>
                <div class="flex on-off-btn-area">
                  <span class="bold700 on-off-btn-text">모집 중만 보기</span>
                  <input
                    type="checkbox"
                    id="toggle-slider"
                    name="status"
                    value="open"
                    onclick="form.submit()"
                    checked
                  />
                  <label id="toggle-slider-label" for="toggle-slider"
                    >On/Off</label
                  >
                </div>
              </div>
              <div class="study-order-area">
                <ul class="study-order-list">
                  <label onclick="form.submit()">
                    <input type="radio" name="order" value="recent" checked />
                    <span>최신순</span>
                  </label>
                  <!-- <label>
                    <input type="radio" name="order" value="score" />
                    <span>정확도순</span>
                  </label> -->
                  <label onclick="form.submit()">
                    <input type="radio" name="order" value="comment" />
                    <span>댓글순</span>
                  </label>
                  <label onclick="form.submit()">
                    <input type="radio" name="order" value="recommend" />
                    <span>좋아요순</span>
                  </label>
                  <label onclick="form.submit()">
                    <input type="radio" name="order" value="scrap" />
                    <span>스크랩순</span>
                  </label>
                  <label onclick="form.submit()">
                    <input type="radio" name="order" value="hit" />
                    <span>조회순</span>
                  </label>
                  <!-- <label>
                    <input type="radio" name="order" value="interest" />
                    <span>관심언어</span>
                  </label> -->
                </ul>
                <div class="write-btn">
                  <c:if test="${loginMember != null}">
                    <input
                      type="button"
                      value="글쓰기"
                      onClick="location.href='${path}/study/recruit'"
                    />
                  </c:if>
                  <c:if test="${loginMember == null}">
                    <input type="button" value="글쓰기" onClick="login();" />
                  </c:if>
                </div>
              </div>
              <ul class="main-study-detail-list">
                <c:forEach items="${groupList}" var="map">
                  <a
                    href="${path}/study/detail?gno=${map.NO}&keyword=${keyword}&tag=${fn:join(tagList,',')}&techType=${techType}&techStack=${fn:join(techStack,',')}&type=${type}&order=${order}&status=${status}"
                    class="main-study-detail"
                  >
                    <div class="main-study-detail__date-like space-between">
                      <div class="soft-gray">
                        시작 예정일 | ${map.START_DATE}
                      </div>
                      <div>
                        <i class="fa-solid fa-heart like-icon main-color"></i
                        ><span class="soft-gray">${map.LIKE_CNT}</span>
                      </div>
                    </div>
                    <h1 class="bold700">${map.TITLE}</h1>
                    <ul class="study-tag-list flex soft-gray">
                      <li class="study-tag">#${map.TYPE}</li>
                      <li class="study-tag">#${map.WAY}</li>
                      <li class="study-tag">#${map.NUMBER_PEOPLE}명</li>
                      <li class="study-tag">#${map.PERIOD}</li>
                    </ul>
                    <ul class="study-tech-list flex">
                      <c:forEach items="${map.techStackList}" var="ts">
                        <li class="study-tech">
                          <img
                            src="${path}/resources/upload/techStack/${ts.IMG_PATH}"
                            alt=""
                          />
                        </li>
                      </c:forEach>
                    </ul>
                    <section class="flex">
                      <div class="user-profile">
                        <img
                          src="${path}/resources/img/study/profile.png"
                          alt=""
                        />
                      </div>
                      <div class="main-study-detail__profile-hit-cmt-scrap">
                        <div class="user-nick bold700">${map.NICK }</div>
                        <ul class="view-cmt-scrap-list flex soft-gray">
                          <li>
                            <i class="fa-regular fa-eye"></i
                            ><span>${map.HIT }</span>
                          </li>
                          <li>
                            <i class="fa-regular fa-comment-dots"></i
                            ><span>${map.CMT_CNT}</span>
                          </li>
                          <li>
                            <i class="fa-regular fa-bookmark"></i
                            ><span>${map.SCRAP_CNT}</span>
                          </li>
                        </ul>
                      </div>
                    </section>
                  </a>
                </c:forEach>
                <c:if test="${groupList.size()==0}">
                  <div class="not-found">검색 결과가 없습니다.</div>
                </c:if>
              </ul>
            </section>
          </article>
          <aside class="popular-tag-aside">
            <div class="popular-tag">
              <h1 class="popular-tag-title">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span class="bold700 gray1">인기 태그</span>
              </h1>
              <ul class="popular-tag-list">
                <c:forEach items="${popularTagList}" var="map">
                  <li class="popular-tag-list-detail">
                    <i class="fa-solid fa-hashtag gray1"></i>
                    <span>${map.NAME}</span>
                  </li>
                </c:forEach>
              </ul>
            </div>
          </aside>
        </main>
      </div>
    </form>
    <script>
      const typeArr = document.querySelectorAll("input[name=type]");
      const typeStr = "${type}";

      for (let i = 0; i < typeArr.length; i++) {
        const v = typeArr[i].value;
        let result = typeStr.search(v);
        if (result >= 0) {
          typeArr[i].checked = true;
        }
      }

      const techTypeArr = document.querySelectorAll("input[name=techType]");
      const techTypeStr = "${techType}";

      for (let i = 0; i < techTypeArr.length; i++) {
        const v = techTypeArr[i].value;
        let result = techTypeStr.search(v);
        if (result >= 0) {
          techTypeArr[i].checked = true;
        }
      }

      const orderArr = document.querySelectorAll("input[name=order]");
      const orderStr = "${order}";

      for (let i = 0; i < orderArr.length; i++) {
        const v = orderArr[i].value;
        let result = orderStr.search(v);
        if (result >= 0) {
          orderArr[i].checked = true;
        }
      }

      const status = document.querySelector("input[name=status]");
      const statusStr = "${status}";

      if (statusStr == "open") {
        status.checked = true;
      } else {
        status.checked = false;
      }
    </script>
    <script>
      history.scrollRestoration = "auto";
    </script>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script defer src="${path}/resources/js/study/list.js"></script>
  </body>
</html>

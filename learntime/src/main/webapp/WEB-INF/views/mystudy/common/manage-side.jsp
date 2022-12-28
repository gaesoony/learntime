<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


   

    <style>
/* 공통css */

body {
  height: 100vh;
}

/* 참여멤버 */

.study-detail-member-area h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 20px;
  margin-top: 50px;
  padding-bottom: 23px;
  border-bottom: 1px solid rgb(223, 223, 223);
}

.study-member-list li {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.study-member-list img {
  width: 30px;
  height: 30px;
  margin-right: 7px;
}

.study-member-list li div:nth-child(2) {
  font-weight: 700;
  margin-right: 7px;
}

.study-member-list li div:nth-child(3) {
  font-weight: 700;
  color: gray;
}

.soft-gray {
  color: rgb(164, 164, 164);
}

.gray1 {
  color: #535353;
}

.gray2 {
  color: #848484;
}

.relative {
  position: relative;
}

.middle {
  display: flex;
  justify-content: center;
}

.bold700 {
  font-weight: 700;
}

.bold900 {
  font-weight: 900;
}

.main-color {
  color: #5ecc80;
}

.space-between {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.flex {
  display: flex;
  align-items: center;
}

.center {
  display: flex;
  justify-content: center;
  align-items: center;
}

.black {
  color: rgba(0, 0, 0, 0.9);
}

.blue {
  color: rgb(49, 137, 252);
}

.hidden {
  display: none;
}

* {
  font-family: "Noto Sans KR", sans-serif;
  box-sizing: border-box;
}

/* 영역 나누기 (왼쪽사이드 / 메인 / 오른쪽사이드) */
body {
  height: 100vh;
}

input[type=button] {
  cursor: pointer;
}

a {
  cursor: pointer;
}

select {
  cursor: pointer;
}

.mystudy-left-aside {
  display: flex;
  height: 820px;
  position: fixed;
  left: 0;
  top: 75px;
  bottom: 0;
}

.mystudy-img-aside {
  width: 70px;
  border-right: 1px solid rgb(237, 237, 237);
  background-color: #f9f9f9;
}

.mystudy-cate-aside {
  padding: 22px 20px 0px 20px;
  width: 250px;
  border-right: 1px solid rgb(237, 237, 237);
}

.mystudy-cate-aside h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 50px;
}

.mystudy-article {
  position: absolute;
  left: 320px;
  right: 250px;
  top: 75px;
}

.mystudy-right-aside {
  padding: 25px 20px 0px 20px;
  width: 250px;
  height: 820px;
  background-color: #f9f9f9;
  border-left: 1px solid rgb(237, 237, 237);
  position: fixed;
  right: 0;
  top: 75px;
  bottom: 0;
}

/* 제일 왼쪽 내스터디 이미지 리스트 */

.mystudy-img-aside {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 15px;
}

.mystudy-logo {
  background-color: #d9d9d9;
  width: 50px;
  height: 50px;
  border-radius: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 25px;
}

.mystudy-logo img {
  width: 40px;
  height: 40px;
}

.mystudy-list {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.mystudy-list a {
  margin-bottom: 10px;
}

.mystudy-list a img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
}

/* 왼쪽사이드 - 카테고리 */

.mystudy-cate-list a {
  display: block;
  font-size: 17px;
  margin-bottom: 20px;
}

.mystudy-cate-list a i {
  color: rgb(66, 66, 66);
  margin-right: 10px;
}

.mystudy-manage-area {
  position: absolute;
  bottom: 30px;
  font-weight: 700;
}

.mystudy-manage-area i {
  margin-right: 5px;
}

/* 오른쪽 사이드바 - 참여멤버 */

.mystudy-right-aside h1 {
  font-size: 17px;
  font-weight: 700;
  margin-bottom: 30px;
}

.study-member-list li {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.user-profile {
  width: 30px;
  height: 30px;
  margin-right: 8px;
}

.crown {
  width: 20px;
  height: 20px;
}


.mystudy-board-title {
  width: 100%;
  height: 65px;
  border-bottom: 1px solid rgb(230, 230, 230);
  display: flex;
  align-items: center;
  padding-left: 30px;
  font-weight: 700;
  font-size: 18px;
}



    </style>



      <aside class="mystudy-left-aside">
        <div class="mystudy-img-aside">
          <div class="mystudy-logo">
            <img
              src="${pageContext.request.contextPath}/resources/img/mystudy/UsersThree.png"
              alt=""
            />
          </div>
          <div>
            <ul class="mystudy-list">
              <c:forEach items="${myGroupList}" var="map">
                <li class="my-study-list-detail flex">
                  <c:if test="${map.IMG_PATH == null }">
                    <a href="${path}/mystudy/main?gno=${map.NO}">
                      <img
                        src="${path}/resources/upload/mystudy/default_profile.png"
                        alt="${map.NAME}"
                        title="${map.NAME}"
                      />
                    </a>
                  </c:if>
                  <c:if test="${map.IMG_PATH != null }">
                    <a href="${path}/mystudy/main?gno=${map.NO}">
                      <img
                        src="${path}/resources/upload/mystudy/profile/${map.IMG_PATH}"
                        alt="${map.NAME}"
                        title="${map.NAME}"
                      />
                    </a>
                  </c:if>
                  <!-- <a
                    href="${path}/mystudy/main?gno=${map.NO}"
                    class="my-study-title gray1"
                    >${map.NAME}</a
                  > -->
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <div class="mystudy-cate-aside relative">
          <h1><a href="${path}/mystudy/main?gno=${groupOne.NO}">
            ${groupOne.GROUP_NAME}<i class="fa-solid fa-seedling"></i></h1>
          <ul class="mystudy-cate-list">
            <a href="${path}/mystudy/manage/info?gno=${groupOne.NO}"><i class="fa-solid fa-angle-right"></i>스터디 정보 관리</a>
            <a href="${path}/mystudy/manage/profile?gno=${groupOne.NO}"><i class="fa-solid fa-angle-right"></i>프로필 관리</a>
            <a href="${path}/mystudy/manage/member?gno=${groupOne.NO}"><i class="fa-solid fa-angle-right"></i>참여 멤버 관리</a>
            <a href="${path}/mystudy/manage/category?gno=${groupOne.NO}"><i class="fa-solid fa-angle-right"></i>카테고리 관리</a>
          </ul>
          <div class="mystudy-manage-area">
            <a href="${path}/mystudy/manage/info?gno=${groupOne.NO}">
              <i class="fa-solid fa-gear"></i><span>관리</span>

            </a>
          </div>
        </div>
      </aside>

      <aside class="mystudy-right-aside">
        <h1>참여 멤버(${groupOne.memberList.size()}명)</h1>
        <ul class="study-member-list">
          <c:forEach items="${groupOne.memberList}" var="item">
                <li>
                  <img
                    src="${path}/resources/upload/common/profile_default.png"
                    alt=""
                  />
                  <div>${item.NICK}</div>
                  <c:if test="${item.STATUS == 'B'}">
                    <div>모임장</div>
                  </c:if>
                  <c:if test="${item.STATUS == 'C'}">
                    <div>멤버</div>
                  </c:if>
                </li>
              </c:forEach> 
              <li>
           
        </ul>
      </aside>

    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
   
    <script>
      window.addEventListener("resize", function () {
        console.log(window.innerHeight);
        const leftAside = document.querySelector(".mystudy-left-aside");
        const rightAside = document.querySelector(".mystudy-right-aside");
        leftAside.style.height = window.innerHeight - 75 + "px";
        rightAside.style.height = window.innerHeight - 75 + "px";
      });
      console.log(window.innerHeight);
      const leftAside = document.querySelector(".mystudy-left-aside");
      const rightAside = document.querySelector(".mystudy-right-aside");
      leftAside.style.height = window.innerHeight - 75 + "px";
      rightAside.style.height = window.innerHeight - 75 + "px";
    </script>
  </body>
</html>

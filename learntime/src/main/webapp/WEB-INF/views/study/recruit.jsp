<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/app/resources/css/study/recruit.css" />
</head>
<body>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>
     <div class="middle">
      <main class="study-recruit-main">
        <section class="study-info">
          <h1>프로젝트 기본 정보를 입력해주세요</h1>
          <div>
            <ul>
              <li class="container-list">
                <div class="container">
                  <h2>모집구분</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">스터디/프로젝트</div>
                  </div>
                </div>
                <div class="container">
                  <h2>모집인원</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">인원 미정 ~ 10명 이상</div>
                  </div>
                </div>
                <div class="container">
                  <h2>진행방식</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">온라인</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">오프라인</label>
                      </div>
                    </div>

                    <div class="selected">온라인/오프라인</div>
                  </div>
                </div>
                <div class="container">
                  <h2>진행기간</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">기간미정 ~ 6개월이상</div>
                  </div>
                </div>
                <div class="container">
                  <h2>기술스택</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">프로젝트 사용 스택</div>
                  </div>
                </div>
                <div class="container">
                  <h2>시작예정일</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">2022-11-28</div>
                  </div>
                </div>
                <div class="container">
                  <h2>시작시간</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">오후 14:00</div>
                  </div>
                </div>
                <div class="container">
                  <h2>종료시간</h2>

                  <div class="select-box">
                    <div class="options-container">
                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="study"
                          name="category"
                        />
                        <label for="study">스터디</label>
                      </div>

                      <div class="option">
                        <input
                          type="radio"
                          class="radio"
                          id="project"
                          name="category"
                        />
                        <label for="project">프로젝트</label>
                      </div>
                    </div>

                    <div class="selected">오후 17:00</div>
                  </div>
                </div>
              </li>
            </ul>
            <script>
              const selected = document.querySelector(".selected");
              const optionsContainer =
                document.querySelector(".options-container");

              const optionsList = document.querySelectorAll(".option");

              selected.addEventListener("click", () => {
                optionsContainer.classList.toggle("active");
              });

              optionsList.forEach((o) => {
                o.addEventListener("click", () => {
                  selected.innerHTML = o.querySelector("label").innerHTML;
                  optionsContainer.classList.remove("active");
                });
              });
            </script>
          </div>
        </section>
        <section class="study-introduce"></section>
        <section class="study-location"></section>
      </main>
    </div>
         <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
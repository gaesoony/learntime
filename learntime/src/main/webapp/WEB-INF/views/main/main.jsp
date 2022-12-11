<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="/app/resources/css/main/main.css?ver=1" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
      <section class="main-banner container">
        <img src="/app/resources/img/study/banner1.png" alt="메인배너" />
      </section>
      <section class="main-study-section middle">
        <div class="main-study">
          <div class="main-study-title-area">
            <div></div>
            <div class="main-study-title center">
              <span class="bold700">함께 성장할&nbsp</span>
              <span class="main-color bold700">스터디</span
              ><span class="bold700">에 가입해보세요🌱</span>
            </div>
            <div class="main-more">
              <a href=""
                ><span>더보기</span><i class="fa-solid fa-chevron-right"></i
              ></a>
            </div>
          </div>
          <article class="main-study-detail-area">
            <ul class="main-study-detail-list post-wrapper1">
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
            </ul>
          </article>
        </div>
      </section>
      <section class="main-qna-section middle">
        <div class="main-qna">
          <div class="main-qna-title-area">
            <div></div>
            <div class="main-qna-title center">
              <span class="bold700">궁금한건&nbsp</span>
              <span class="main-color bold700">질문</span
              ><span class="bold700">해보세요 💡</span>
            </div>
            <div class="main-more">
              <!-- <a href=""
                ><span>더보기</span><i class="fa-solid fa-chevron-right"></i
              ></a> -->
            </div>
          </div>
          <ul class="qna-btn-list space-between">
            <a class="qna-btn flex-column" href=""
              ><div>궁금한 질문을<br />남겨보세요</div>
              <img src="/app/resources/img/study/Inquiry.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href=""
              ><div>오늘의 질문</div>
              <img src="/app/resources/img/study/Today.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href=""
              ><div>많이 본 질문</div>
              <img src="/app/resources/img/study/Popular.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href=""
              ><div>전체보기</div>
              <img src="/app/resources/img/study/total.png" alt=""
            /></a>
          </ul>
          <section class="main-qna-detail-section flex">
            <div class="main-qna-detail__left">
              <div class="main-qna-detail__header space-between">
                <h1 class="main-qna-detail__title bold700">
                  답변을 기다리는 질문
                </h1>
                <div>
                  <!-- <a href=""><i class="fa-solid fa-chevron-left"></i></a>
                  <a href=""><i class="fa-solid fa-chevron-right"></i></a> -->
                </div>
              </div>
              <div class="flex-start">
                <div class="qna-category">
                  <ul>
                    <li><i class="fa-solid fa-bars"></i>전체</li>
                    <li>
                      <img
                        src="/app/resources/img/study/DevelopmentSkill.png"
                        alt=""
                      />기술
                    </li>
                    <li>
                      <img
                        src="/app/resources/img/study/Resume.png"
                        alt=""
                      />커리어
                    </li>
                  </ul>
                </div>
                <div class="qna-content-left flex post-wrapper2">
                  <ul>
                    <li>
                      <div>
                        <div class="qna-content-title bold700 black">
                          자바스크립트 어떻게 하나요?
                        </div>
                        <div class="qna-content-detail">
                          공부를 해도 모르겠네요ㅜㅜ
                        </div>
                      </div>
                      <div class="flex cmt-date soft-gray">
                        <div>답변 0</div>
                        <div>2022/11/24</div>
                        <div>16:27</div>
                      </div>
                    </li>
                    <li class="border-top">
                      <div>
                        <div class="qna-content-title bold700 black">
                          자바스크립트 어떻게 하나요?
                        </div>
                        <div class="qna-content-detail">
                          공부를 해도 모르겠네요ㅜㅜ
                        </div>
                      </div>
                      <div class="flex cmt-date soft-gray">
                        <div>답변 0</div>
                        <div>2022/11/24</div>
                        <div>16:27</div>
                      </div>
                    </li>
                  </ul>
                  <ul>
                    <li>
                      <div>
                        <div class="qna-content-title bold700 black">
                          자바스크립트 어떻게 하나요?
                        </div>
                        <div class="qna-content-detail">
                          공부를 해도 모르겠네요ㅜㅜ
                        </div>
                      </div>
                      <div class="flex cmt-date soft-gray">
                        <div>답변 0</div>
                        <div>2022/11/24</div>
                        <div>16:27</div>
                      </div>
                    </li>
                    <li class="border-top">
                      <div>
                        <div class="qna-content-title bold700 black">
                          자바스크립트 어떻게 하나요?
                        </div>
                        <div class="qna-content-detail">
                          공부를 해도 모르겠네요ㅜㅜ
                        </div>
                      </div>
                      <div class="flex cmt-date soft-gray">
                        <div>답변 0</div>
                        <div>2022/11/24</div>
                        <div>16:27</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="main-qna-detail__right">
              <div class="main-qna-detail__header space-between">
                <h1 class="main-qna-detail__title bold700">인기 Q&A</h1>
                <div>
                  <!-- <a href=""><i class="fa-solid fa-chevron-left"></i></a>
                  <a href=""><i class="fa-solid fa-chevron-right"></i></a> -->
                </div>
              </div>
              <div>
                <div class="qna-content-right flex post-wrapper3">
                  <ul>
                    <div class="flex">
                      <li>
                        <div>
                          <div class="qna-content-title bold700">
                            <span class="main-color">1</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">2</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                    </div>
                    <div class="flex border-top">
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">3</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">4</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                    </div>
                  </ul>
                  <ul>
                    <div class="flex">
                      <li>
                        <div>
                          <div class="qna-content-title bold700">
                            <span class="main-color">1</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">2</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                    </div>
                    <div class="flex">
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">3</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                      <li>
                        <div>
                          <div class="qna-content-title bold700 black">
                            <span class="main-color">4</span>
                            <span class="black">자바 잘하려면</span>
                          </div>
                          <div class="qna-content-detail flex">
                            <img
                              src="/app/resources/img/study/Down-Right.png"
                              alt=""
                            />
                            하루 6시간 복습하시면 됩니다.
                          </div>
                        </div>
                        <div class="flex hit-cmt soft-gray">
                          <div class="blue">조회수 1,150</div>
                          <div>| 답변 3</div>
                          <div></div>
                        </div>
                      </li>
                    </div>
                  </ul>
                </div>
              </div>
            </div>
          </section>
        </div>
      </section>
      <section class="main-mentor-banner">
        <div>MENTORING</div>
        <div>
          <span>가장 쉽게</span>
          <span class="bold700">지식</span>을
          <span class="bold700">공유</span>하는 방법
        </div>
        <div>나누고 싶은 지식이 있는 누구나 멘토가 될 수 있어요!</div>
        <div>
          업계 후배들 혹은 동료들이더 빨리, 더 멀리 갈 수 있도록 도와주세요!
        </div>
        <div class="flex main-mentor-banner-list">
          <a href="">멘토 지원하기</a>
          <a href="">멘토링 신청하기</a>
        </div>
      </section>
    </main>
    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"
    ></script>
    <script>
      $(".post-wrapper1").slick({
        slide: "a",
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next'><i class='fa-solid fa-chevron-right'></i></button>",
      });

      $(".post-wrapper2").slick({
        slide: "ul",
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev2'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next2'><i class='fa-solid fa-chevron-right'></i></button>",
      });

      $(".post-wrapper3").slick({
        slide: "ul",
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev3'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next3'><i class='fa-solid fa-chevron-right'></i></button>",
      });
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>

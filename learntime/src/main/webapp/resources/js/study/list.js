function getContextPath() {
  var hostIndex = location.href.indexOf(location.host) + location.host.length;
  return location.href.substring(
    hostIndex,
    location.href.indexOf("/", hostIndex + 1)
  );
}

//인기, 프론트엔드, 백엔드, 모바일, 기타, 모두보기
const techCategory = document.querySelectorAll(".tech-category");

//화면이 로드되었을 때 기본으로 인기 항목이 체크되어있으므로
//이미 체크된 항목의 bar 길이 할당
techCategory.forEach((o) => {
  if (o.querySelector("input").checked) {
    const barWidth = o.querySelector("label").offsetWidth;
    o.querySelector(".bar").style.width = barWidth + "px";
  }
});

//항목이 체크되면 bar 길이 할당
techCategory.forEach((o) => {
  o.querySelector("label").addEventListener("click", (e) => {
    const barWidth = e.currentTarget.offsetWidth;
    o.querySelector(".bar").style.width = barWidth + "px";
  });
});

//전체, 스터디, 프로젝트
const studyType = document.querySelectorAll(".study-type");

//화면이 로드되었을 때 기본으로 전체 항목이 체크되어있으므로
//이미 체크된 항목의 bar 길이 할당
studyType.forEach((o) => {
  if (o.querySelector("input").checked) {
    const barWidth = o.querySelector("label").offsetWidth;
    o.querySelector(".bar").style.width = barWidth + "px";
  }
});

//항목이 체크되면 bar 길이 할당
studyType.forEach((o) => {
  o.querySelector("label").addEventListener("click", (e) => {
    const barWidth = e.currentTarget.offsetWidth;
    o.querySelector(".bar").style.width = barWidth + "px";
  });
});

//글쓰기 버튼 클릭 시 로그인모달 띄우기
function login() {
  $(".blackBG").addClass("show");
}

const searchTag = document.querySelector(".study-search-tag");

searchTag.addEventListener("keydown", function () {
  if (window.event.keyCode == 13) {
    makeTag(event);
  }

  if (window.event.keyCode == 8) {
    deleteBeforeTag();
  }
});

function makeTag(event) {
  const value = event.target.value;
  const str =
    '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
    '<input onclick="deleteTag2(event)" name="tag" type="text" readonly style="width:' +
    (value.length + 2) * 9 +
    "px" +
    ';" value="' +
    value +
    '" class="tag-btn cursor" /> ' +
    '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
    "</div>";

  const tagList = document.querySelector(".tag-list");
  tagList.innerHTML += str;

  event.target.value = "";
}

function resetTag() {
  const tagList = document.querySelector(".tag-list");
  tagList.textContent = "";
  form.submit();
}

function deleteTag(e) {
  e.target.remove();
  form.submit();
}

function deleteTag2(e) {
  e.target.parentNode.remove();
  form.submit();
}

function deleteBeforeTag() {
  const lastTag = document.querySelector(".tag-list div:last-child");
  lastTag.remove();
  form.submit();
}

//페이지가 새로고침됐을 때 이미 체크되어있던 항목의 기술스택 불러오기
techCategory.forEach((o) => {
  if (o.querySelector("input").checked) {
    const techList = document.querySelector(".tech-list");

    $.ajax({
      url: getContextPath() + "/study/techStack",
      type: "get",
      data: {
        type: o.querySelector("div").innerHTML.trim(),
      },
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      success: function (data) {
        var obj = JSON.parse(data);

        let str = "";
        for (let i = 0; i < obj.result.length; i++) {
          str =
            str +
            "<li onclick='appendList(event)'><div class='flex'>" +
            "<img src='" +
            getContextPath() +
            "/resources/upload/techStack/" +
            obj.result[i].IMG_PATH +
            "' alt=''/>" +
            "<span>" +
            obj.result[i].NAME +
            "</span>" +
            "</div></li>";
        }

        techList.innerHTML = str;
      },
    });
  }
});

techCategory.forEach((o) => {
  o.addEventListener("click", () => {
    const techList = document.querySelector(".tech-list");

    $.ajax({
      url: getContextPath() + "/study/techStack",
      type: "get",
      data: {
        type: o.querySelector("div").innerHTML.trim(),
      },
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      success: function (data) {
        var obj = JSON.parse(data);

        let str = "";
        for (let i = 0; i < obj.result.length; i++) {
          str =
            str +
            "<li onclick='appendList(event)'><div class='flex'>" +
            "<img src='" +
            getContextPath() +
            "/resources/upload/techStack/" +
            obj.result[i].IMG_PATH +
            "' alt=''/>" +
            "<span>" +
            obj.result[i].NAME +
            "</span>" +
            "</div></li>";
        }

        techList.innerHTML = str;
      },
    });
  });
});

let techList = document.querySelectorAll(".tech-list li");
let selectedTechList = document.querySelector(".selected-tech-list");

techList.forEach((o) => {
  o.addEventListener("click", function () {
    const value = o.querySelector("span").innerHTML;
    selectedTechList.innerHTML +=
      '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
      '<input onclick="deleteTag2(event)" name="techStack" type="text" readonly style="width:' +
      (value.length + 3) * 50 +
      "px" +
      ';" value="' +
      value +
      '" class="tag-btn cursor" /> ' +
      '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
      "</div>";

    form.submit();
  });
});

function appendList(e) {
  const value = e.currentTarget.querySelector("span").innerHTML;
  selectedTechList.innerHTML +=
    '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
    '<input onclick="deleteTag2(event)" name="techStack" type="text" readonly style="width:' +
    (value.length + 2) * 6 +
    "px" +
    ';" value="' +
    value +
    '" class="tag-btn cursor" /> ' +
    '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
    "</div>";
  form.submit();
}

function press(f) {
  if (f.keyCode == 13) {
    //13이 enter키를 의미함
    form.submit(); //formname에 사용자가 지정한 form의 name입력
  }
}

// const typeArr = document.querySelectorAll("input[name=type]");
// typeArr.forEach((o) => {
//   o.addEventListener("click", () => {
//     form.submit();
//   });
// });

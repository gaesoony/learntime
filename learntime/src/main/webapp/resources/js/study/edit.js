//datepicker
$.datepicker.setDefaults({
  dateFormat: "yy.mm.dd",
  prevText: "이전 달",
  nextText: "다음 달",
  monthNames: [
    "1월",
    "2월",
    "3월",
    "4월",
    "5월",
    "6월",
    "7월",
    "8월",
    "9월",
    "10월",
    "11월",
    "12월",
  ],
  monthNamesShort: [
    "1월",
    "2월",
    "3월",
    "4월",
    "5월",
    "6월",
    "7월",
    "8월",
    "9월",
    "10월",
    "11월",
    "12월",
  ],
  dayNames: ["일", "월", "화", "수", "목", "금", "토"],
  dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
  dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
  showMonthAfterYear: true,
  yearSuffix: "년",
});

$(function () {
  $(".datepicker").datepicker();
});

//썸머노트
$("#summernote").summernote({
  height: 500, // 에디터 높이
  minHeight: null, // 최소 높이
  maxHeight: null, // 최대 높이
  focus: false, // 에디터 로딩후 포커스를 맞출지 여부
  lang: "ko-KR", // 한글 설정
  placeholder: "프로젝트에 대해 소개해주세요!", //placeholder 설정
  disableResizeEditor: true,
});

//태그 생성
function makeTag(e) {
  const value = e.target.value;
  const str =
    '<div class="relative cursor tag-div" onclick="deleteTag(event)">' +
    '<input onclick="deleteTag2(event)" type="text" name="tag" style="width:' +
    (value.length + 2) * 12 +
    "px" +
    ';" value="' +
    value +
    '" class="tag-btn cursor" /> ' +
    '<i class="fa-solid fa-xmark" onclick="deleteTag2(event)"></i>' +
    "</div>";

  const tagList = document.querySelector(".tag-list");
  tagList.innerHTML += str;

  e.target.value = "";
}

//태그 초기화
function resetTag() {
  const tagList = document.querySelector(".tag-list");
  tagList.textContent = "";
}

//태그 삭제1 (클릭)
function deleteTag(e) {
  e.target.remove();
}

//태그 삭제2 (클릭)
function deleteTag2(e) {
  e.target.parentNode.remove();
}

//태그 삭제 (백스페이스)
function deleteBeforeTag() {
  const input = document.querySelector(".study-search-tag").value;
  if (input == "") {
    const lastTag = document.querySelector(".tag-list div:last-child");
    lastTag.remove();
  }
}

//장소 키워드 검색
function searchKeyWordLocation() {
  // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
  var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
    mapOption = {
      center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
      level: 3, // 지도의 확대 레벨
    };

  // 지도를 생성합니다
  var map = new kakao.maps.Map(mapContainer, mapOption);

  // 주소-좌표 변환 객체를 생성합니다
  var geocoder = new kakao.maps.services.Geocoder();

  // 장소 검색 객체를 생성합니다
  var ps = new kakao.maps.services.Places();

  // 키워드로 장소를 검색합니다
  ps.keywordSearch(document.querySelector(".myAddress").value, placesSearchCB);

  // 키워드 검색 완료 시 호출되는 콜백함수 입니다
  function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
      // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
      // LatLngBounds 객체에 좌표를 추가합니다
      var bounds = new kakao.maps.LatLngBounds();

      for (var i = 0; i < data.length; i++) {
        displayMarker(data[i]);
        bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
      }

      // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
      map.setBounds(bounds);
    }
  }

  // 지도에 마커를 표시하는 함수입니다
  function displayMarker(place) {
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
      map: map,
      position: new kakao.maps.LatLng(place.y, place.x),
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, "click", function () {
      const placeName = document.querySelector("#place-name");
      // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
      infowindow.setContent(
        '<div style="padding:5px;font-size:12px;">' +
          place.place_name +
          "</div>"
      );
      placeName.value = place.place_name;
      infowindow.open(map, marker);

      searchDetailAddrFromCoords(place, function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
          var detailAddr = !!result[0].road_address
            ? "" + result[0].road_address.address_name + ""
            : "";

          var content = detailAddr;

          // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
          let box = document.querySelector(".detailAddress");
          box.value = content;
        }
      });
    });
  }

  function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.x, coords.y, callback);
  }
}

const numberPeople = document.querySelector("input[name=numberPeople]");
const startDate = document.querySelector("input[name=startDate]");
const title = document.querySelector("input[name=title]");
const studyLocation = document.querySelector(".study-location");

numberPeople.addEventListener("blur", function (event) {
  if (event.target.value < 2 && event.target.value !== "") {
    event.target.value = 2;
  }

  if (event.target.value > 30) {
    event.target.value = 30;
  }
});

const selectedType = document.querySelector(".selected-type");
const selectedWay = document.querySelector(".selected-way");
const selectedPeriod = document.querySelector(".selected-period");
const selectedTech = document.querySelector(".tech-btn-list");
const selectedTech2 = document.querySelector(
  ".selected-tech:not(.tech-btn-list .tech-btn )"
);

const optionsContainerType = document.querySelector(".options-container-type");
const optionsContainerWay = document.querySelector(".options-container-way");
const optionsContainerPeriod = document.querySelector(
  ".options-container-period"
);
const optionsContainerTech = document.querySelector(".options-container-tech");

//submit시 유효성 검사
function checkValidate() {
  const content = document.querySelector("textarea[name=intro]");
  let flagType = false;
  let flagWay = false;
  let flagTech = false;
  let flagPeriod = false;
  let flagPeople = false;
  let flagStartDate = false;
  let flagTitle = false;
  let flagContent = false;
  let flagQuestion = true;
  let flagPlace = true;

  const studyWay = document.querySelector(".selected-way");
  if (studyWay.innerHTML == "오프라인") {
    const place = document.querySelector("input[name=place]");
    if (place.value == "") {
      flagPlace = false;
    }
  }

  optionsContainerType
    .querySelectorAll("input[type=radio]")
    .forEach(function (item) {
      if (item.checked) {
        flagType = true;
      }
    });

  optionsContainerWay
    .querySelectorAll("input[type=radio]")
    .forEach(function (item) {
      if (item.checked) {
        flagWay = true;
      }
    });

  optionsContainerPeriod
    .querySelectorAll("input[type=radio]")
    .forEach(function (item) {
      if (item.checked) {
        flagPeriod = true;
      }
    });

  optionsContainerTech
    .querySelectorAll("input[type=checkbox]")
    .forEach(function (item) {
      if (item.checked) {
        flagTech = true;
      }
    });

  const question = document.querySelectorAll("input[name=question]");
  question.forEach(function (item) {
    if (item.value === "") {
      flagQuestion = false;
    }
  });

  if (numberPeople.value !== "") {
    flagPeople = true;
  }

  if (startDate.value !== "") {
    flagStartDate = true;
  }

  if (title.value !== "") {
    flagTitle = true;
  }

  if (content.value.length !== 0) {
    flagContent = true;
  }

  if (flagType == false) {
    alert("모집구분을 선택해주세요");
    return false;
  }

  if (flagPeople == false) {
    alert("모집인원을 작성해주세요");
    return false;
  }

  if (flagWay == false) {
    alert("진행방식을 선택해주세요");
    return false;
  }

  if (flagPeriod == false) {
    alert("진행기간을 선택해주세요");
    return false;
  }

  if (flagTech == false) {
    alert("기술스택을 선택해주세요");
    return false;
  }

  if (flagStartDate == false) {
    alert("시작예정일을 선택해주세요");
    return false;
  }

  if (flagTitle == false) {
    alert("제목을 입력해주세요");
    return false;
  }

  if (flagContent == false) {
    alert("내용을 입력해주세요");
    return false;
  }

  if (flagQuestion == false) {
    alert("가입질문을 입력해주세요");
    return false;
  }

  if (flagPlace == false) {
    alert("장소를 입력해주세요");
    return false;
  }

  let flag =
    flagType &&
    flagWay &&
    flagTech &&
    flagPeriod &&
    flagPeople &&
    flagStartDate &&
    flagTitle &&
    flagQuestion &&
    flagPlace;

  return flag;
}

const optionsListType = document.querySelectorAll(".option-type");
const optionsListWay = document.querySelectorAll(".option-way");
const optionsListPeriod = document.querySelectorAll(".option-period");
const optionsListTech = document.querySelectorAll(".option-tech");
const optionsListTechLabel = document.querySelectorAll(".option-tech label");

selectedType.addEventListener("click", () => {
  optionsContainerType.classList.toggle("active");
});

selectedWay.addEventListener("click", () => {
  optionsContainerWay.classList.toggle("active");
});

selectedPeriod.addEventListener("click", () => {
  optionsContainerPeriod.classList.toggle("active");
});

selectedTech2.addEventListener("click", () => {
  optionsContainerTech.classList.toggle("active");
});

optionsListType.forEach((o) => {
  o.addEventListener("click", () => {
    selectedType.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerType.classList.remove("active");
  });
});

optionsListType.forEach((o) => {
  if (o.querySelector("input").checked) {
    selectedType.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerType.classList.remove("active");
  }
});

optionsListWay.forEach((o) => {
  o.addEventListener("click", () => {
    selectedWay.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerWay.classList.remove("active");
  });
});

optionsListWay.forEach((o) => {
  if (o.querySelector("input").checked) {
    selectedWay.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerWay.classList.remove("active");
  }
});

optionsListPeriod.forEach((o) => {
  o.addEventListener("click", () => {
    selectedPeriod.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerPeriod.classList.remove("active");
  });
});

optionsListPeriod.forEach((o) => {
  if (o.querySelector("input").checked) {
    selectedPeriod.innerHTML = o.querySelector("label").innerHTML;
    optionsContainerPeriod.classList.remove("active");
  }
});

optionsListTech.forEach((o) => {
  o.addEventListener("click", (event) => {
    if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
      selectedTech.innerHTML = "";
    }

    selectedTech.innerHTML +=
      "<div class='tech-btn-div' onclick='deleteTech(event)'>" +
      "<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
      o.querySelector("label").innerHTML +
      "'>" +
      "<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
      "</div>";
  });
});

optionsListTech.forEach((o) => {
  if (o.querySelector("input").checked) {
    if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
      selectedTech.innerHTML = "";
    }
    selectedTech.innerHTML +=
      "<div class='tech-btn-div' onclick='deleteTech(event)'>" +
      "<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
      o.querySelector("label").innerHTML +
      "'>" +
      "<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
      "</div>";
  }
});

optionsListTechLabel.forEach((o) => {
  o.addEventListener("click", (event) => {
    event.stopPropagation();
    if (selectedTech.innerHTML.trim() == "프로젝트 사용 스택") {
      selectedTech.innerHTML = "";
    }

    selectedTech.innerHTML +=
      "<div class='tech-btn-div' onclick='deleteTech(event)'>" +
      "<input onclick='deleteTech2(event)' class='tech-btn' type='button' value='" +
      o.innerHTML +
      "'>" +
      "<i class='fa-solid fa-xmark' onclick='deleteTech2(event)'></i>" +
      "</div>";
  });
});

//기술스택 삭제1
function deleteTech(e) {
  e.stopPropagation();
  e.target.remove();
  const value = e.target.querySelector("input").value;

  const option = document.querySelector("#option-" + value);
  option.parentNode.classList.toggle("hidden");
  const selectedTech = document.querySelector(".tech-btn-list");
  if (selectedTech.innerHTML.trim() == "") {
    selectedTech.innerHTML = "프로젝트 사용 스택";
  }
  const input = optionsContainerTech.querySelector("#" + value);

  input.checked = false;
}

//기술스택 삭제2
function deleteTech2(e) {
  e.stopPropagation();
  e.target.parentNode.remove();
  const value = e.target.parentNode.querySelector("input").value;

  const option = document.querySelector("#option-" + value);
  option.parentNode.classList.toggle("hidden");
  const selectedTech = document.querySelector(".tech-btn-list");
  if (selectedTech.innerHTML.trim() == "") {
    selectedTech.innerHTML = "프로젝트 사용 스택";
  }
  const input = optionsContainerTech.querySelector("#" + value);
  input.checked = false;
}

function hiddenTag(e) {
  e.target.parentNode.classList.add("hidden");
}

function hiddenTag2(e) {
  e.stopPropagation();
  e.target.parentNode.parentNode.classList.add("hidden");
}

function stop(e) {
  e.stopPropagation();
}

//장소검색 on, off
function locationOnOff(e) {
  let studyWay = document.querySelector(".selected-way");
  let studyWayStr = e.target.querySelector("label").innerHTML;

  let studyLocation = document.querySelector(".study-location");
  const place = document.querySelector("input[name=place]");
  const address = document.querySelector("input[name=address]");
  if (studyWayStr == "온라인" || studyWayStr == "온라인/오프라인") {
    studyLocation.classList.add("hidden");
    place.setAttribute("disabled", "disabled");
    address.setAttribute("disabled", "disabled");
  }

  if (studyWayStr == "오프라인") {
    studyLocation.classList.remove("hidden");
    place.removeAttribute("disabled");
    address.removeAttribute("disabled");
  }
}

function locationOnOff2(e) {
  let studyWay = document.querySelector(".selected-way");
  let studyWayStr = e.target.parentNode.querySelector("label").innerHTML;

  let studyLocation = document.querySelector(".study-location");
  const place = document.querySelector("input[name=place]");
  const address = document.querySelector("input[name=address]");
  if (studyWayStr == "온라인" || studyWayStr == "온라인/오프라인") {
    studyLocation.classList.add("hidden");
    place.setAttribute("disabled", "disabled");
    address.setAttribute("disabled", "disabled");
  }

  if (studyWayStr == "오프라인") {
    studyLocation.classList.remove("hidden");
    place.removeAttribute("disabled");
    address.removeAttribute("disabled");
  }
}

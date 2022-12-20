window.onload = function () {
  //datepicker
  $.datepicker.setDefaults({
    dateFormat: "yy-mm-dd",
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

  //timepicker - 시작시간
  $(function () {
    $("#time1").timepicker({
      timeFormat: "h:mm p",
      interval: 30,
      minTime: "0",
      maxTime: "11:30pm",
      defaultTime: "12",
      startTime: "12:00",
      dynamic: false,
      dropdown: true,
      scrollbar: true,
    });
  });

  //timepicker - 종료시간
  $(function () {
    $("#time2").timepicker({
      timeFormat: "h:mm p",
      interval: 30,
      minTime: "0",
      maxTime: "11:30pm",
      defaultTime: "12",
      startTime: "12:00",
      dynamic: false,
      dropdown: true,
      scrollbar: true,
    });
  });

  //썸머노트
  $("#summernote").summernote({
    height: 500, // 에디터 높이
    minHeight: null, // 최소 높이
    maxHeight: null, // 최대 높이
    focus: false, // 에디터 로딩후 포커스를 맞출지 여부
    lang: "ko-KR", // 한글 설정
    placeholder: "", //placeholder 설정
    disableResizeEditor: true,
  });
};

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

function resetTag() {
  const tagList = document.querySelector(".tag-list");
  tagList.textContent = "";
}

function deleteTag(e) {
  e.target.remove();
}

function deleteTag2(e) {
  e.target.parentNode.remove();
}

function deleteBeforeTag() {
  const lastTag = document.querySelector(".tag-list div:last-child");
  lastTag.remove();
}

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

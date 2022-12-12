window.onload = function () {
  chartDraw();
  setLegendOnClick();
};

let mentorTypeData = {
  labels: [
    "개발/프로그래밍",
    "보안/네트워크",
    "데이터사이언스",
    "게임개발",
    "커리어",
    "커리어",
    "커리어",
    "커리어",
    "커리어",
    "커리어",
  ],
  datasets: [
    {
      data: [95, 12, 13, 7, 13, 1, 1, 1, 1, 1],
      backgroundColor: [
        "#5ecc80",
        "#fe8d6f",
        "#fdc453",
        "#dfdd6c",
        "#9adbc5",
        "#5ecc80",
        "#fe8d6f",
        "#fdc453",
        "#dfdd6c",
        "#9adbc5",
      ],
    },
  ],
};

let mentorJobTypeData = {
  labels: [
    "개발",
    "프론트엔드/웹퍼블리셔",
    "SW엔지니어",
    "안드로이드 개발자",
    "IOS 개발자",
  ],
  datasets: [
    {
      data: [1, 1, 1, 1, 1],
      backgroundColor: ["#5ecc80", "#fe8d6f", "#fdc453", "#dfdd6c", "#9adbc5"],
    },
  ],
};

let mentorJobData = {
  labels: [
    "백엔드/서버 개발자",
    "프론트엔드/웹퍼블리셔",
    "SW엔지니어",
    "안드로이드 개발자",
    "IOS 개발자",
  ],
  datasets: [
    {
      data: [95, 12, 13, 7, 13],
      backgroundColor: ["#5ecc80", "#fe8d6f", "#fdc453", "#dfdd6c", "#9adbc5"],
    },
  ],
};

let mentorCareerData = {
  labels: [
    "신입(1년이하)",
    "주니어(1~3년)",
    "미들(4~8년)",
    "시니어(9년이상)",
    "Lead레벨",
  ],
  datasets: [
    {
      data: [95, 12, 13, 7, 13],
      backgroundColor: ["#5ecc80", "#fe8d6f", "#fdc453", "#dfdd6c", "#9adbc5"],
    },
  ],
};

let chartDraw = function () {
  let chartMentorType = document
    .getElementById("chart-mentor-type")
    .getContext("2d");

  let barMentorType = document
    .getElementById("bar-mentor-type")
    .getContext("2d");

  window.pieChart = new Chart(chartMentorType, {
    type: "pie",
    data: mentorTypeData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
      legendCallback: customLegend,
    },
  });

  new Chart(barMentorType, {
    type: "bar",
    data: mentorTypeData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
    },
  });

  document.getElementById("legend-mentor-type").innerHTML =
    window.pieChart.generateLegend();

  let chartMentorJobType = document
    .getElementById("chart-mentor-job-type")
    .getContext("2d");

  let barMentorJobType = document
    .getElementById("bar-mentor-job-type")
    .getContext("2d");

  window.pieChart = new Chart(chartMentorJobType, {
    type: "pie",
    data: mentorJobTypeData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
      legendCallback: customLegend,
    },
  });

  new Chart(barMentorJobType, {
    type: "bar",
    data: mentorJobTypeData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
    },
  });

  document.getElementById("legend-mentor-job-type").innerHTML =
    window.pieChart.generateLegend();

  let chartMentorJob = document
    .getElementById("chart-mentor-job")
    .getContext("2d");

  let barMentorJob = document.getElementById("bar-mentor-job").getContext("2d");

  window.pieChart = new Chart(chartMentorJob, {
    type: "pie",
    data: mentorJobData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
      legendCallback: customLegend,
    },
  });

  new Chart(barMentorJob, {
    type: "bar",
    data: mentorJobData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
    },
  });

  document.getElementById("legend-mentor-job").innerHTML =
    window.pieChart.generateLegend();

  let chartMentorCareer = document
    .getElementById("chart-mentor-career")
    .getContext("2d");

  let barMentorCareer = document
    .getElementById("bar-mentor-career")
    .getContext("2d");

  window.pieChart = new Chart(chartMentorCareer, {
    type: "pie",
    data: mentorCareerData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
      legendCallback: customLegend,
    },
  });

  new Chart(barMentorCareer, {
    type: "bar",
    data: mentorCareerData,
    options: {
      responsive: false,
      legend: {
        display: false,
      },
    },
  });

  document.getElementById("legend-mentor-career").innerHTML =
    window.pieChart.generateLegend();
};

let customLegend = function (chart) {
  let ul = document.createElement("ul");
  let color = chart.data.datasets[0].backgroundColor;

  chart.data.labels.forEach(function (label, index) {
    ul.innerHTML += `<li data-index="${index}"><span style="background-color: ${color[index]}"></span>${label}</li>`;
  });

  return ul.outerHTML;
};

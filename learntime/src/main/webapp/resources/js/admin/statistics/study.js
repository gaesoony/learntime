window.onload = function () {
  chartDraw();
  // setLegendOnClick();
};

let mentorTypeData = {
  labels: [
    "JavaScript",
    "TypeScript",
    "React",
    "Vue",
    "Svelte",
    "Nextjs",
    "Nodejs",
    "Java",
    "Spring",
    "Go",
    "Nestjs",
    "Kotlin",
    "Express",
    "MySQL",
    "MongoDB",
    "Python",
    "Django",
    "php",
    "GraphQL",
    "Firebase",
    "Flutter",
    "Swift",
    "ReactNative",
    "Unity",
    "AWS",
    "Kubernetes",
    "Docker",
    "Git",
    "Figma",
    "Zeplin",
    "Jest",
    "자격증",
  ],
  datasets: [
    {
      data: [
        35, 12, 13, 7, 13, 1, 1, 1, 1, 10, 1, 2, 3, 40, 5, 6, 7, 8, 9, 10, 1, 2,
        3, 4, 5, 6, 7, 8, 9, 10, 1,
      ],
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
        "#dfdd6c",
        "#5ecc80",
      ],
    },
  ],
};

let mentorJobTypeData = {
  labels: ["온라인", "오프라인"],
  datasets: [
    {
      data: [1, 1],
      backgroundColor: ["#CDF2CA", "#FFDEFA"],
    },
  ],
};

let mentorJobData = {
  labels: ["스터디", "프로젝트"],
  datasets: [
    {
      data: [95, 12],
      backgroundColor: ["#4ea1d3", "#FFB2A6"],
    },
  ],
};

let mentorCareerData = {
  labels: ["모집중", "모집완료"],
  datasets: [
    {
      data: [95, 12],
      backgroundColor: ["#CAB8FF", "#CCF3EE", "#fdc453", "#dfdd6c", "#9adbc5"],
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

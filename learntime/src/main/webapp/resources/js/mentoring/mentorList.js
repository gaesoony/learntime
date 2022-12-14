//input 에 글자 넣을때 마다 placeholder에 있는 글자가 사라지게 하는 함수
function inputFocus() {
    var input = document.getElementById("search");
    var placeholder = document.getElementById("placeholder");
    if (input.value == placeholder.innerHTML) {
        input.value = "";
    }
}


//드래그 해서 div 크기 조절 가능하게 하는 제이쿼리함수
$(function () {
    $(".modal-profile-img").resizable();
});

//체크박스 선택하면 체크박스에 체크가 되고, div 의 색이 바뀌게 하는 제이쿼리 함수
$(function () { // document ready
    $('.checkbox').on('click', function () {
        $(this).toggleClass('checked');
    });
});

//한장 씩 자동으로 왼쪽으로 넘어가는 슬라이드 함수
$(function () {
    var $slider = $('.slider');
    var $slideContainer = $slider.find('.slides');
    var $slides = $slideContainer.find('.slide');
    var interval;
    var currentIndex = 0;
    var slideCount = $slides.length;
    var duration = 500;
    var interval = 3000;

    function startSlider() {
        interval = setInterval(function () {
            $slideContainer.animate({
                'margin-left': '-=100%'
            }, duration, function () {
                currentIndex++;
                if (currentIndex === slideCount) {
                    currentIndex = 0;
                    $slideContainer.css('margin-left', 0);
                }
            });
        }, interval);
    }

    function stopSlider() {
        clearInterval(interval);
    }

    $slider.on('mouseenter', stopSlider).on('mouseleave', startSlider);

    startSlider();
});

//한장 씩 자동으로 왼쪽으로 넘어가는 슬라이드 제이쿼리 함수
$(function () {
    var $slider = $('.slider');
    var $slideContainer = $slider.find('.slides');
    var $slides = $slideContainer.find('.slide');
    var interval;
    var currentIndex = 0;
    var slideCount = $slides.length;
    var duration = 500;
    var interval = 3000;

    function startSlider() {
        interval = setInterval(function () {
            $slides.animate({
                'margin-left': '-=100%'
            }, duration, function () {
                currentIndex++;
                if (currentIndex === slideCount) {
                    currentIndex = 0;
                    $slides.css('margin-left', 0);
                }
            });
        }, interval);
    }

    function stopSlider() {
        clearInterval(interval);
    }

    $slider.on('mouseenter', stopSlider).on('mouseleave', startSlider);

    startSlider();
});






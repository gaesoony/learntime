let date = new Date();

const renderCalendar = () => {
    const currentDate = new Date();

    const viewYear = date.getFullYear();
    const viewMonth = date.getMonth();

    $('.year-month').text(`${viewYear}.  ${viewMonth + 1}`);

    const preLast = new Date(viewYear, viewMonth, 0);
    const thisLast = new Date(viewYear, viewMonth + 1, 0);

    const PLDate = preLast.getDate();
    const PLDay = preLast.getDay();

    const TLDate = thisLast.getDate();
    const TLDay = thisLast.getDay();

    const prevDates = [];
    const thisDates = [...Array(TLDate + 1).keys()].slice(1);
    const nextDates = [];

    if (PLDay !== 6) {
        for (let i = 0; i < PLDay + 1; i++) {
            prevDates.unshift(PLDate - i);
        }
    }

    for (let i = 1; i < 7 - TLDay; i++) {
        nextDates.push(i);
    }

    const dates = prevDates.concat(thisDates, nextDates);
    const firstDateIndex = dates.indexOf(1);
    const lastDateIndex = dates.lastIndexOf(TLDate);

    dates.forEach((date, i) => {
        const year = viewYear;
        const month = viewMonth + 1;
        let formattedMonth = month;

        if (month < 10) {
            formattedMonth = `0${month}`;
        }

        let formattedDate = date;

        if (date < 10) {
            formattedDate = `0${date}`;
        }

        const formattedDateString = `${year}-${formattedMonth}-${formattedDate}`;
        const condition = i >= firstDateIndex && i < lastDateIndex + 1 ? 'this' : 'other';

        //요일
        const dateObject = new Date(`${year}-${formattedMonth}-${formattedDate}`);
        const dayOfWeek = dateObject.getDay();
        let dayOfWeekClass = 'sun';
        if (dayOfWeek === 1) {
            dayOfWeekClass = 'mon';
        } else if (dayOfWeek === 2) {
            dayOfWeekClass = 'tue';
        } else if (dayOfWeek === 3) {
            dayOfWeekClass = 'wed';
        } else if (dayOfWeek === 4) {
            dayOfWeekClass = 'thu';
        } else if (dayOfWeek === 5) {
            dayOfWeekClass = 'fri';
        } else if (dayOfWeek === 6) {
            dayOfWeekClass = 'sat';
        }

        // 두달 뒤 날짜 가져오기
        const twoMonthlater = new Date();
        twoMonthlater.setMonth(twoMonthlater.getMonth() + 2);
        // format 날짜 가져오기
        const formattedDateReal = new Date(formattedDateString);

        // 비교해서 disabled
        
        if (currentDate.getDate() == formattedDateReal.getDate() && currentDate.getMonth() == formattedDateReal.getMonth() && currentDate.getFullYear() == formattedDateReal.getFullYear()) {
            // 오늘
            dates[i] = `<div class="date ${dayOfWeekClass}" id="${formattedDateString}"><span class="${condition}">${date}</span></div>`;
        } else if (currentDate > formattedDateReal) { 
            // 오늘 이전
            dates[i] = `<div class="date ${dayOfWeekClass} disabled" id="${formattedDateString}"><span class="${condition}">${date}</span></div>`;
        }else if (twoMonthlater < formattedDateReal) {
            // 두달 뒤
            dates[i] = `<div class="date ${dayOfWeekClass} disabled" id="${formattedDateString}"><span class="${condition}">${date}</span></div>`;
        } else {
            // 오늘 이후 두달 이전
            dates[i] = `<div class="date ${dayOfWeekClass}" id="${formattedDateString}"><span class="${condition}">${date}</span></div>`;
        }
    });


    $('.dates').html(dates.join(''));

    const today = new Date();
    if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
        $('.this').each((index, date) => {
            if (+date.innerText === today.getDate()) {
            $(date).addClass('today');
            return false;
            }
        });
    }

    $('.date').each((index, date) => {
        $(date).click((e) => {
            if ($(e.target).hasClass('disabled')) {
                return;
            }
            if ($(e.target).hasClass('date') && !$(e.target).find('.other').length) {
                $('.date').each((index, date) => {
                    $(date).removeClass('back-green');
                });
                $(e.target).addClass('back-green');

                $('#date-input').val(e.target.id);
            }
        });
    });

    $('.other').parent().addClass('disabled');

}

renderCalendar();

const prevMonth = () => {
    date.setMonth(date.getMonth() - 1);
    renderCalendar();
};

const nextMonth = () => {
    date.setMonth(date.getMonth() + 1);
    renderCalendar();
};

const goToday = () => {
    date = new Date();
    renderCalendar();
};


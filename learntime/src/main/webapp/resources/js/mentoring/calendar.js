let date = new Date();

const renderCalendar = () => {

    const viewYear = date.getFullYear();
    const viewMonth = date.getMonth();

    document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

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
        dates[i] = `<div class="date" id="${formattedDateString}"><span class="${condition}">${date}</span></div>`;
    });

    document.querySelector('.dates').innerHTML = dates.join('');

    const today = new Date();
    if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
        for (let date of document.querySelectorAll('.this')) {
            if (+date.innerText === today.getDate()) {
                date.classList.add('today');
                break;
            }
        }
    }

    const dateDiv = document.querySelectorAll('.date');
    dateDiv.forEach((date) => {
        date.addEventListener('click', (e) => {
            if (e.target.classList.contains('date') && !e.target.querySelector('.other')) {
                const dateDiv = document.querySelectorAll('.date');
                dateDiv.forEach((date) => {
                    date.classList.remove('back-green');
                });
                e.target.classList.add('back-green');

                const dateInput = document.querySelector('#date-input');
                dateInput.value = e.target.id;
            }
            
        });
        
    });

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


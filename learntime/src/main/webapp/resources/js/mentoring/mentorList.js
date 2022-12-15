// 일주일을 30분 단위로 시간을 선택 할 수 있는 테이블을 html 로 구성 한다.
function makeTimeTable() {
    var table = document.createElement('table');
    table.setAttribute('class', 'table table-bordered');
    table.setAttribute('id', 'timeTable');
    var thead = document.createElement('thead');
    var tbody = document.createElement('tbody');
    var tr = document.createElement('tr');
    var th = document.createElement('th');
    th.setAttribute('class', 'text-center');
    th.innerHTML = '시간';
    tr.appendChild(th);
    for (var i = 0; i < 7; i++) {
        var th = document.createElement('th');
        th.setAttribute('class', 'text-center');
        th.innerHTML = dayOfWeek[i];
        tr.appendChild(th);
    }
    thead.appendChild(tr);
    for (var i = 0; i < 48; i++) {
        var tr = document.createElement('tr');
        var td = document.createElement('td');
        td.setAttribute('class', 'text-center');
        td.innerHTML = time[i];
        tr.appendChild(td);
        for (var j = 0; j < 7; j++) {
            var td = document.createElement('td');
            td.setAttribute('class', 'text-center');
            td.setAttribute('id', 'time' + i + 'day' + j);
            td.setAttribute('onclick', 'clickTimeTable(this)');
            tr.appendChild(td);
        }
        tbody.appendChild(tr);
    }
    table.appendChild(thead);
    table.appendChild(tbody);
    document.getElementById('timeTableDiv').appendChild(table);
}

// 해당 시간을 선택하면 배경색을 변경한다.
function clickTimeTable(obj) {
    if (obj.style.backgroundColor == 'rgb(255, 255, 255)') {
        obj.style.backgroundColor = '#d9edf7';
    } else {
        obj.style.backgroundColor = 'white';
    }
}



const days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];
const numSlotsPerDay = 24 * 2; 

for (let i = 0; i < numSlotsPerDay; i++) {
    //시간표시 30분 단위로 24시간
    let timeSlotStart = Math.floor(i / 2) < 10 ? '0' + Math.floor(i / 2) + ':' + (i % 2 === 0 ? '00' : '30') : Math.floor(i / 2) + ':' + (i % 2 === 0 ? '00' : '30');
    let timeSlotLabel = timeSlotStart;

    let row = $('<tr>');
    let timeSlotColumn = $('<td>').text(timeSlotLabel);
    row.append(timeSlotColumn);

    for (let j = 0; j < days.length; j++) {
        let timeSlotValue = days[j] + '-' + timeSlotStart
        let checkboxId = days[j] + '-' + (i + 1);
        
        let checkbox = $('<input>', {
        type: 'checkbox',
        name: 'time',
        id: checkboxId,
        value: timeSlotValue
        });
        
        let label = $('<label>', {
        for: checkboxId,
        text: ''
        });

        let cell = $('<td>', {
        class: 'time-slot'
        });
        cell.append(checkbox);
        cell.append(label);
        row.append(cell);
    }

    $('#schedule-table tbody').append(row);
}

// 스케줄
$(document).ready(function() {
    //초기값 1
    var selectedTime = 1;

    //선택한 value값 가져오기
    $('#time-select').on('change', function() {
        selectedTime = $(this).val();

        // 초기화 알림(체크박스에 체크되어있는게 있을때
        if ($('input[type="checkbox"]').is(':checked')) {
            if (confirm("스케줄이 초기화 됩니다. 초기화 하시겠습니까?")) {
                // 초기화
                $('input[type="checkbox"]').prop('checked', false);
                $('input[type="checkbox"]').next().removeClass('back-green');
            } else {
                // 초기화 취소
                return false;
            }
        }

    });

    $('input[type="checkbox"]').change(function() {
        // 요일가져오기
        var Day = $(this).val().substring(0, 3);

        // 숫자들고오기
        var num = $(this).attr('id').split('-')[1];
        
        
        //시간 선택값만큼 비워주기
        if ($('#' + Day + '-' + num).next().hasClass('back-green')) {
            if(!$('#' + Day + '-' + num).is(':checked')){
                $('#' + Day + '-' + num).prop('checked', false);

                for (var i = 0; i < selectedTime; i++) {
                        checkboxId = Day + '-' + (Number(num) + i);
                        // $('#' + checkboxId).prop('checked', false);
                        $('#' + checkboxId).next().removeClass('back-green');
                    }
                return false;
            }else{
                $('#' + Day + '-' + num).prop('checked', false);
                return false;
            }
        } 

        // 중복 시간 체크
        for (var i = 1; i < selectedTime; i++) {
            checkboxId = Day + '-' + (Number(num) + i);
            //back-green 체크(중복 시간 체크)
            if ($('#'+checkboxId).next().hasClass('back-green')) {
                alert('이미 선택된 시간입니다.');
                $('#' + Day + '-' + num).prop('checked', false);
                return false;
            }
        }

        // 시간 체크
        $('#' + Day + '-' + num).prop('checked', true);

        // 시간 선택값만큼 채워주기
        for (var i = 0; i < selectedTime; i++) {
            checkboxId = Day + '-' + (Number(num) + i);
            // $('#' + checkboxId).prop('checked', true);
            $('#' + checkboxId).next().addClass('back-green');
        }

        //체크된 체크박스 log로 찍어보기
        var checked = [];
        $('input[type="checkbox"]:checked').each(function() {
            checked.push($(this).val());
        });
        console.log(checked);
            
    });

});
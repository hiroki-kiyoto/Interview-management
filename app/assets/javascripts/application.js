// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require moment
//= require fullcalendar
//= require bootstrap-sprockets
//= require_tree .

$(function () {
    // 画面遷移を検知
    $(document).on('turbolinks:load', function () {
        
        // lengthを呼び出すことで、#calendarが存在していた場合はtrueの処理がされ、無い場合はnillを返す
        if ($('#calendar').length) {
            function eventCalendar() {
                return $('#calendar').fullCalendar({
                });
            };
            function clearCalendar() {
                $('#calendar').html('');
            };
            $('#calendar').fullCalendar({
                events: '/events.json',
                //カレンダー上部を年月で表示させる
                titleFormat: 'YYYY年 M月 DD日',
                //曜日を日本語表示
                dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
                //ボタンのレイアウト
                header: {
                    left: 'today prev,next',
                    center: 'title',
                    right: 'month agendaWeek agendaDay',
                },
                //イベントの時間表示を２４時間に
                timeFormat: "HH:mm",
                //イベントの色を変える
                eventColor: '#63ceef',
                //イベントの文字色を変える
                eventTextColor: '#000000',
            });
        }
    });
});

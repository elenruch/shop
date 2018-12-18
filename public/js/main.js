var chatId = 0;
var chatUpdateTime = 2000;
var chatTimer = setInterval(chatUpdate, chatUpdateTime);

$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.ml-auto a').on('mouseover', function () {
        var name = $(this).attr('data-name');
        var body = $(this).attr('data-body');
        var color = $(this).attr('data-color');
        console.log(color);
        $('#navbarResponsive').css('background', color);
        $('.bg-dark').css('background', color);
        $('#name').text(name);
        $('#body').text(body);
    });

    var $chat = $('#chat');
    $chat.find('.card-header').on('click', function () {
        $chat.toggleClass('opened');
    });

    $('#chat-form')
        .keydown(function (event) {
            if (event.ctrlKey && event.keyCode === 13) {
                $(this).trigger('submit');
            }
        })
        .on('submit', function (e) {
            e.preventDefault();

            $.ajax({
                type: 'post',
                url: $(this).attr('action'),
                data: $(this).serialize(),
                processData: false,
                success: function () {
                    $('#chat').removeClass('with-name');
                    $('#chat-form')
                        .find('input[name="name"]').attr('type', 'hidden').end()
                        .trigger('reset');
                    document.cookie = 'chat-name=' + $('#chat-form').find('input[name="name"]').val();
                    clearInterval(chatTimer);
                    chatUpdate();
                    chatTimer = setInterval(chatUpdate, chatUpdateTime);
                }
            });

            return false;
        });
});

function chatUpdate() {
    $.ajax({
        url: '/chat/get?id=' + chatId,
        dataType: 'json',
        success: function (data) {
            if (data.length > 0) {
                data.forEach(function (item) {
                    $('#chat').find('.chat-messages ul').append('<li><span class="name">' + item['name'] + ':</span> <span class="message">' + item['message'] + '</span><div class="dt">' + dtFormat(new Date(item['dt'] * 1000)) + '</div></li>');
                    chatId = item['id'];
                });

                $('#chat').find('.chat-messages ul')[0].scrollIntoView(false);
            }
        }
    });
}

function dtFormat(dt) {
    var day = dt.getDate();
    if (day < 10) {
        day = '0' + day;
    }

    var month = dt.getMonth() + 1;
    if (month < 10) {
        month = '0' + month;
    }

    var hours = dt.getHours();
    if (hours < 10) {
        hours = '0' + hours;
    }

    var minutes = dt.getMinutes();
    if (minutes < 10) {
        minutes = '0' + minutes;
    }

    var seconds = dt.getSeconds();
    if (seconds < 10) {
        seconds = '0' + seconds;
    }

    return day + '.' + month + '.' + dt.getFullYear() + ' ' + hours + ':' + minutes + ':' + seconds;
}
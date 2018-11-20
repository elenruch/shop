$(function () {
    var fx = {
        "initModal": function () {
            var $modal_window = $(".modal-window");
            if ($modal_window.length === 0) {
                return $("<div>")
                    .addClass("modal-window")
                    .html('<div class="modal-content"><div class="modal-header"><div class="close-modal">&times;</div><h4 class="modal-title"></h4></div><div class="modal-scroll"><div class="modal-body"></div></div></div>')
                    .appendTo("body");
            }
            else {
                return $modal_window;
            }
        }
    };
    $("a.prod_more").on("click", function (event) {
        event.preventDefault();
        var $modal = fx.initModal();
        $modal.show();
        $.ajax({
            url: "/ajax/" + $(this).attr("data-id"),
            dataType: 'json',
            success: function (data) {
                $modal.find('.modal-title').text(data.title);
                $modal.find('.modal-body').html(data.body);
                $modal.find('.modal-content').fadeIn(400);
            },
            error: function () {
                $modal.find('.modal-title').text("Ошибка");
                $modal.find('.modal-body').html("Что-то пошло не так :(");
                $modal.find('.modal-content').fadeIn(400);
            }
        });
    });
    $(document).on("click", ".modal-window, .close-modal", function (e) {
        if ($(e.target).is('.modal-window') || $(e.target).is('.close-modal')) {
            $(".modal-window")
                .hide()
                .find('.modal-content').hide();
        }
    });
});
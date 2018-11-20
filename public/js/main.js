$(function(){
    $('.ml-auto a').on('mouseover',function(){
        var name = $(this).attr('data-name');
        var body = $(this).attr('data-body');
        var color = $(this).attr('data-color');
        console.log(color);
        $('#navbarResponsive').css('background',color);
        $('.bg-dark').css('background',color);
        $('#name').text(name);
        $('#body').text(body);
    })
})
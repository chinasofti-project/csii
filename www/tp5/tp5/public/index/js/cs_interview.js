$(function () {
    $("#joinDate").datepicker({
        changeMonth: true,
        changeYear: true
    });
    //星评处理
    var stars = $('.star-box');
    var Len = stars.length;
    for(i=0;i<Len;i++){
        stars.eq(i).find('i').click(function(){
            var num = $(this).index();
            clearAll($(this));
            $(this).addClass('choose').prevAll('i').addClass('choose');
            $(this).siblings('input').val(num);
        });
        stars.eq(i).find('i').mouseover(function(){
            var num = $(this).index();
            clearAll($(this));
            $(this).addClass('choose').prevAll('i').addClass('choose');
        });
        stars.eq(i).find('i').mouseout(function(){
            clearAll($(this));
            var score = $(this).siblings('input').val();
            for(i=0;i<score;i++){
                $(this).parent().find('i').eq(i).addClass('choose');
            }
        });
    }
});
function clearAll(obj){
    obj.parent().children('i').removeClass('choose');
}

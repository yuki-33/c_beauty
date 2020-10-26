/*toppage notice*/
$(document).ready(function() {
        $(".top-notice").fadeIn().queue(function() {
            setTimeout(function(){$(".top-notice").dequeue();
            }, 3000);
        });
        $(".top-notice").fadeOut(1000);
});

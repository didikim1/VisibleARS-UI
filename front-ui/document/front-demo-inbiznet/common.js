$(".menu-item").click(function(e){
    location.href = $(this).attr("data-src");
});
/* Tabs */
$('.tab-content').hide();
$('.tab-content:last-child').css("display", "flex");
$('.tabs-nav li').click(function () {
    $('.tabs-nav li').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').hide();
    var activeTab = $(this).find('a').attr('data-id');
    $(activeTab).css("display", "flex");
});

$(".language_current").click(function() {
    $(this).parent().find(".language_list").toggleClass("show")
})
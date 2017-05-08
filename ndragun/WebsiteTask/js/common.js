//header
$(window).scroll(function() {
	var toTop= $(document).scrollTop();
	if(toTop < 150){
		$('.header').removeClass('header-top');
	}else{
		$('.header').addClass('header-top');
	}
})

$('.nav>li,.language-box,.btn-play').hover(function(){
	var self = $(this).find('.drop-list');
		if(!self.is(':animated')){
			self.slideDown(400);
		}
	},function(){
		$(this).find('.drop-list').slideUp(400);
	})

//header-playnow
$('.btn-download').on('click',function(){
	$(this).find('.drop-list').fadeIn(800);
})
$(document).on('click', function(event){
	if($(event.target).is('.btn-download')){
		return;
	}
    if(!$(event.target).closest('.btn-download .drop-list').length){
        $('.btn-download .drop-list').fadeOut(800);
    }
});





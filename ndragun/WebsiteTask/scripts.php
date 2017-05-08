<script>
	var gsConfig = {
		id: 368,
		findUs: {
			facebook: 'https://www.facebook.com/EvilEmpireCabal',
			google: '.',
			twitter: '.'
		}
	};
</script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/gs.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<script>
$(function(){
	$('.vedio').click(function(){
		$('.pop-vedio').show().next().show();
		$('.pop-vedio iframe').attr('src', $(this).attr('data-vedio'));
		return false;
	});
	$('.popup-alert .iclose').click(function(){
		$(this).parent().hide().next().hide();
		var iframe = $(this).parent().find('iframe');
		var c = iframe.clone();
		c.attr('src', '');
		iframe.after(c).remove();
	});
});
</script>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
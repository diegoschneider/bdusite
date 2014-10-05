var asdasd;
$(document).ready(function() {
	$(".msg input[type=button").click(function() {
		button = this;
		$.post("msg.php",{id:this.id},function(result) {
			response = JSON.parse(result);
			if(response.result == true) {
				msg=$(button).closest(".msg");
				$(msg).animate({height:0,margin:0,padding:0,opacity:0},500,
					function() { $(msg).remove(); });

			}
		});
	});

});
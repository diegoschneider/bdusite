login = function() {

	var userin = $('#user').val();
	var passin = $('#pass').val();

	if(userin == "" || passin == "") {
		writeerror("Petición inválida");
		return false;
	}

	$.post("login.php",{user:userin,pass:passin},function(result) {
		response = JSON.parse(result);
		if(response.errno == 1) {
			document.location = "/";
		} else {
			writeerror(response.errstr);
		}
	});

	// Never submit
	return false;
}

writeerror = function(newtext) {
	if(typeof(newtext) != "string") newtext = "";

	if(newtext == "") {
		if($("#errors").text().length > 1) {
			$("#errors").text($("#errors").text().slice(1));
			setTimeout(function() { writeerror(newtext) });
		} else {
			$("#errors").height(19);
				$("#errors").text("");
				$("#errors").animate({height: '0px'}, 400, function() {
					$("#errors").height('auto');
				} );
		}

	} else {
		if($("#errors").height() == 0) {
			$("#errors").height(0);
			$("#errors").text(newtext);
			$("#errors").animate({height: '19px'}, 400, function() {
					$("#errors").height('auto');
				} );
		} else {
			$("#errors").height(19);
			$("#errors").animate({height: '0px'}, 400, function() {$("#errors").text(newtext); })
				.animate({height: '19px'}, 400, 
					function() { $("#errors").height('auto');}
				);
		}
	}
}
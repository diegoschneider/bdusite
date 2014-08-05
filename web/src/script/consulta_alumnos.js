$(document).ready(function() {
	$("select#curso").change(function() {
		var cur = $("select#curso").val();
		if(cur == "-1") {
			$("select#division").html("<option value=\"-1\">Seleccione un año</option>");
			$("select#division").prop("disabled", "disabled");
			return;
		}
		$.post("consultar.php",{curso: cur}, function(result) {
			try {
				response = JSON.parse(result);
				var options;
				options = "<option value=\"-1\">Seleccione...</option>";
				for (var i = response.length-1; i >= 0; i--) {
					options += "<option value="+response[i]+">"+response[i]+"</option>";
				}
				$("select#division").html(options);
				$("select#division").prop("disabled", false);
				return;
			}
			catch (e) {
				document.location = "/";
			}
		});

	});

});
$(document).ready(function() {

	var inputs = $("input, select").toArray();

	inputs.forEach(function(obj) {
		if(obj.required) {
			$(obj.parentNode.children[0]).addClass("formrequired");
		}
	});

	$('#form').submit(function(event) {

		var selects = $(".campo select");
		for(var i = 0; i < selects.length; i++) {
			if(!selects[i].required) {
				continue;
			}
			
			if(selects[i].value == -1) {
				alert("Complete todos los campos requeridos");
				selects[i].focus();
				event.preventDefault();
				return;
			}
		}
		return;
	});

	$('#logo').bind('click', function(event){ 

		if(event.ctrlKey && event.altKey && event.shiftKey) {
			if(confirm("Que? Esperabas encontrar un huevo de pascua por hacer ésto?\nNo hay mucho que mostrar así que... Bueno, como mucho podemos mostrarte los créditos :D\n\nQuerés ver los créditos?")) {
				document.location = "/credits.html";
			}
		}
	});
});
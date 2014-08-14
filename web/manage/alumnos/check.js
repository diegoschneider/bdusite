$(document).ready(function() {

	$('#form').submit(function(event) {
		hoy = new Date();
		max = new Date();
		max.setFullYear(hoy.getFullYear()-65);
		nac = new Date($("[name='fecnac']").val());

		if(nac > hoy) {
			event.preventDefault();
			alert("Error, el alumno todavía no nació");
			return;
		} else if(nac < max) {
			event.preventDefault();
			alert("Error, me parece que a esa edad ya estaría jubilado (si no muerto D: )");
		}
	});


});
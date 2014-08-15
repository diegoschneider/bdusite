$(document).ready(function() {

	//Caracteres permitidos para CUIL
	cuilperm = "1234567890-";
	//Caracteres permitidos para telefonos
	telperm = "1234567890-+ ";

	$('#form').submit(function(event) {

		//Nro de documento
		nrodoc = $('[name=nrodoc]').val()
		nrodoc = nrodoc.split(".").join("");
		nrodoc = nrodoc.split(",").join("");
		nrodoc = parseInt(nrodoc);
		if(isNaN(nrodoc) || nrodoc < 10000000 || nrodoc > 100000000) {
			event.preventDefault();
			alert("Error, número de documento inválido");
			$('[name=nrodoc]').focus();
			return;
		}

		//Fecha de nacimiento
		hoy = new Date();
		max = new Date();
		max.setFullYear(hoy.getFullYear()-65);
		min = new Date();
		min.setFullYear(hoy.getFullYear()-10);
		nac = new Date($("[name='fecnac']").val());

		if(nac > min) {
			event.preventDefault();
			alert("Error, el alumno es demasiado joven");
			$("[name='fecnac']").focus();
			return;
		} else if(nac < max) {
			event.preventDefault();
			alert("Error, me parece que a esa edad ya estaría jubilado (si no muerto D: )");
			$("[name='fecnac']").focus();
			return;
		}

		//Cuil
		cuil = $('[name=cuil').val();
		for (var i = cuil.length - 1; i >= 0; i--) {
			if($.inArray(cuil[i],cuilperm)!=-1) continue;
			event.preventDefault();
			alert("CUIL inválido: "+i);
			$('[name=cuil').focus();
			return;
		}

		//Teléfono
		tel = $('[name=telefono').val();
		for (var i = tel.length - 1; i >= 0; i--) {
			if($.inArray(tel[i],telperm)!=-1) continue;
			event.preventDefault();
			alert("Teléfono inválido: "+i);
			$('[name=telefono').val();
			return;
		}

		//Celular
		cel = $('[name=celular').val();
		for (var i = cel.length - 1; i >= 0; i--) {
			if($.inArray(cel[i],telperm)!=-1) continue;
			event.preventDefault();
			alert("Celular inválido: "+i);
			$('[name=celular').val();
			return;
		};

		event.preventDefault();
		alert("Se ve bien, por ahora (^w^)\nIgual, ésto es debug, así que no voy a cargar un joraca :3");

	});

	//Solo pedir barrio si es de campana
	$('[name=localidad]').change(function() {
		if($('[name=localidad]').val() != 2804) {
			$('[name=barrio]').val("46");
			$('[name=barrio]').prop("disabled","disabled");
		} else {
			$('[name=barrio]').prop("disabled",false);
		}
	});

});
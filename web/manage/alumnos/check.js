$(document).ready(function() {

	$('[name=nivelescolar]').focus();

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
		cuil1 = $('input#cuil1').val();
		cuil2 = $('input#cuil2').val();
		if(isNaN(cuil1) || isNaN(cuil2)) {
			event.preventDefault();
			alert("CUIL inválido");
			$('input#cuil1').focus();
		} else {
			$('[name=cuil]').val(cuil1+"-"+nrodoc+"-"+cuil2);
		}

		//Teléfono
		tel = $('[name=telefono').val();
		for (var i = tel.length - 1; i >= 0; i--) {
			if($.inArray(tel[i],telperm)!=-1) continue;
			event.preventDefault();
			alert("Teléfono inválido");
			$('[name=telefono').focus();
			return;
		}

		//Celular
		cel = $('[name=celular').val();
		for (var i = cel.length - 1; i >= 0; i--) {
			if($.inArray(cel[i],telperm)!=-1) continue;
			event.preventDefault();
			alert("Celular inválido");
			$('[name=celular').focus();
			return;
		};

		//event.preventDefault();
		//alert("Se ve bien, por ahora (^w^)\nIgual, ésto es debug, así que no voy a cargar un joraca :3");

	});

	//Solo pedir barrio si es de campana
	$('[name=localidad]').change(function() {
		if($('[name=localidad]').val() != 2804) {
			$('[name=barrio]').val("46");
			$('[name=barrio]').prop("disabled","disabled");
		} else {
			$('[name=barrio]').prop("disabled",false);
		}
		$('[name=cp').val($('[name=localidad]').val());
	});

	$('[name=nrodoc]').focusout(function() {
		$('span#cuil').html("-"+$('[name=nrodoc]').val()+"-");
	});

});
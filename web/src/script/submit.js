$(document).ready(function() {

	$(":input[required]").closest(".campo").children(".label").addClass("formrequired");

	$(':input').keypress(function(e) { 
    	// Si se apreta 'Enter'
    	if (e.which == 13) {

        	this.form.tabOrder = $('select:not([disabled]), input:not([type=hidden]):not([disabled])');

            // Si el objeto es un submit, no hacer nada, y permitir el Enter
        	if(this.type === 'submit') {
        		return;
    		} else {
    			e.preventDefault();
    		}

        	// Busca el siguiente elemento y le da foco
        	for (var j = 0, jl = this.form.tabOrder.length; j < jl; j++) {
        		if (this === this.form.tabOrder[j]) {
        			if (j+1 < jl) {
        				if(this.form.tabOrder[j+1].type === 'submit') {
        					this.form.tabOrder[j+1].click();
        				} else {
        					this.form.tabOrder[j+1].focus();
        				}
        					
        			}
        		}
        	}

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
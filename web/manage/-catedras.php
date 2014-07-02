<form class=container action=submit.php method=POST>
	<input type=hidden name=tabla value="catedras">
	<div class=campo>
		<span>Nombre de la materia que se da en la catedra</span>
		<input type=text name="materia">
	</div>
	<div class=campo>
		<span>DNI del docente que da la catedra</span>
		<input type=text name="docente"> 	
	</div>
	<div class=campo>
		<span>dia que se da la catedra</span>
		<input type=text name="dia">
	</div>
	<div class=campo>
		<span>hora que inicia la catedra</span>
		<input type=text name="inicio">
	</div>
	<div class=campo>
		<span>hora de finalizacion de la catedra</span>	
		<input type=text name="fin">
	</div>
	<div class=campo>
		<span>curso para el que se da la catedra</span>
		<input type=text name="curso">
	</div>	
    <input type=submit value=”Enviar”>
</form>

<?php
require_once($_SERVER['DOCUMENT_ROOT']."/src/script/functions.php"); 
?>

<html>
<head>
	<?php style_head(); ?>
	<link rel=stylesheet href="/src/style/msg.css">
</head>
<body>
	<?php style_header(); ?>
	<div id="content">
		<h1>Panel de administrador - Mensajes</h1>
		<?php
		$messages = get_contact_messages();
		foreach ($messages as $msg) {
			
			?>
			<div class=msg>
				<div class=topbar>
					<div class=info>
						<span><b>Fecha y hora:</b> <?php echo $msg['timestamp']; ?></span>
						<span><b>De:</b> <?php echo $msg['username'];?></span>
						<span><b>Asunto:</b> <?php echo $msg['subject'];?></span>
					</div>
					<div class=actions>
						<input type=button value="Borrar mensaje">
					</div>
				</div>
				<div class=message>
					<p><?php echo $msg['message'];?></p>
				</div>
			</div>
			<?php
		}
		?>

	</div>
</body>
</html>
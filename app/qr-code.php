<?php
include_once 'include/header.php';
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Ticket</title>
	<script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs/qrcode.min.js"></script>
	<!-- <link rel="stylesheet" href="qrcode.css"/>-->
	<link rel="stylesheet" href="style/style1.css">

	<style>
		body {
			font-family: 'Helvetica Neue', sans-serif;
			min-height: 100vh;
			/*background-image: linear-gradient(90deg, rgba(201,63,63,1) 0%, rgba(0,0,0,1) 50%, rgba(201,63,63,1) 100%),url(images/background-login.jpeg);*/
			width: 100%;
			height: 100vh;
			background-image: linear-gradient(1deg, rgba(0, 0, 0, 1) 0%, rgba(126, 159, 195, 0.3435749299719888) 100%), url('images/background-login.jpeg');
			background-size: cover;
			background-position: center;
		}
	</style>
</head>

<body onload="generateQRCode(); generateID()"><!-- Appel de la fonction generateQRCode() au chargement de la page -->
	<br><br>


	<div align="center" class="div-qrcode">
		<section class="ticket">
			<br><br>

			<div class="pdf-BOX" id="t-box">
				<br><br>

				<h2 align="center">Scanner le QR code à l'entrée du Cinéma </h2>
				<br><br>

				<div align="center" id="qrcode"></div>
				<br><br>

				<div align="center" id="identifiant"></div>

			</div>

		</section>

		<br><br><br>


		<button class="btnPDF" id="topdf">Télécharger en PDF</button>
	</div>
	<script>
		function generateQRCode() {
			// Générer un QR Code aléatoire
			var qrcode = new QRCode(document.getElementById("qrcode"), {
				text: Math.random().toString(36).substring(2), // Générer une chaîne aléatoire
				width: 120,
				height: 120,
				colorDark: "#000000",
				colorLight: "#ffffff",
				correctLevel: QRCode.CorrectLevel.H
			});
		}

		function generateID() {
			var alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
			var identifiant = 'ID: ';
			for (var i = 0; i < 8; i++) {
				identifiant += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			}
			document.getElementById('identifiant').innerHTML = identifiant;
		}


		const pdf_btn = document.querySelector('#topdf');
		const box = document.querySelector('#t-box');

		const toPDF = function(box) {
			const html_code = `
	<link rel="stylesheet" href="style-profil.css"/>
	<div class = "pdf-BOX">${box.innerHTML} </div>`;


			const new_window = window.open();
			new_window.document.write(html_code);

			setTimeout(() => {
				new_window.print();
				new_window.close();
			}, 200);

		}



		pdf_btn.onclick = () => {
			toPDF(box);
		}
	</script>


</body>

</html>
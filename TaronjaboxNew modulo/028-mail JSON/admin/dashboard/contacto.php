<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Gestión de Mensajes</title>
    <link rel="stylesheet" href="contacto.css">
    <script defer src="contacto.js"></script>
</head>
<body>
    <h1>Gestión de Mensajes</h1>
    <div id="messagesContainer"></div>
</body>
</html>

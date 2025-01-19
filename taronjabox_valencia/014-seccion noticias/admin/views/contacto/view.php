<h1>Mensaje de <?= htmlspecialchars($mensaje['nombre']); ?></h1>
<p><strong>Email:</strong> <?= htmlspecialchars($mensaje['email']); ?></p>
<p><strong>Mensaje:</strong></p>
<p><?= nl2br(htmlspecialchars($mensaje['mensaje'])); ?></p>
<p><strong>Fecha:</strong> <?= htmlspecialchars($mensaje['fecha']); ?></p>
<a href="../controllers/ContactoController.php?action=list">Volver al listado</a>
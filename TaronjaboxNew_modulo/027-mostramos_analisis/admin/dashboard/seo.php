<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php');
    exit;
}

require_once '../../helpers/seo_runner.php';

$urlToAnalyze = "http://localhost/Primero-de-DAM-Luis-Rodriguez/TaronjaboxNew%20modulo/027-mostramos%20analisis/front/index.php";
$seoResults = runSEOTool($urlToAnalyze);
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Análisis SEO</title>
</head>

<body>
    <h1>Análisis SEO</h1>
    <p>Resultados del análisis para: <strong><?php echo $urlToAnalyze; ?></strong></p>
    <div>
        <pre><?php echo $seoResults; ?></pre>
    </div>
</body>

</html>
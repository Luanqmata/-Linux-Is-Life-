<?php
$host = getenv('DB_HOST');
$dbname = getenv('DB_NAME');
$user = getenv('DB_USER');
$pass = getenv('DB_PASS');

try {
    $conn = new PDO("pgsql:host=$host;dbname=$dbname", $user, $pass);
    echo "<h2>✅ Conexão com PostgreSQL bem-sucedida!</h2>";
} catch (PDOException $e) {
    echo "<h2>❌ Erro ao conectar: " . $e->getMessage() . "</h2>";
}
?>


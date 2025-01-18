<?php
class Database {
    private static $connection;

    public static function getConnection() {
        if (!self::$connection) {
            self::$connection = new PDO(
                'mysql:host=localhost;dbname=taronjabox;charset=utf8mb4',
                'taronjabox',  // Update with your DB username
                'taronjabox',      // Update with your DB password
                [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                ]
            );
        }
        return self::$connection;
    }
}
?>

<?php
require_once dirname(__DIR__) . '/config/config.php';

class Database
{
    private $connection;

    public function __construct()
    {
        $this->connection = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($this->connection->connect_error) {
            throw new Exception("Error en la conexión: " . $this->connection->connect_error);
        }
    }

    public function query($query)
    {
        return $this->connection->query($query);
    }

    public function prepare($query)
    {
        return $this->connection->prepare($query);
    }

    public function close()
    {
        $this->connection->close();
    }
}

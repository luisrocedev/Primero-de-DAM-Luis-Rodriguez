<?php
require_once dirname(__DIR__) . '/../config/config.php';

class Database
{
    private $host;
    private $user;
    private $password;
    private $database;
    private $connection;

    public function __construct()
    {
        $this->host = DB_HOST;
        $this->user = DB_USER;
        $this->password = DB_PASSWORD;
        $this->database = DB_NAME;

        $this->connect();
    }

    private function connect()
    {
        $this->connection = new mysqli($this->host, $this->user, $this->password, $this->database);

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

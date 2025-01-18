<?php
class Database
{
    private $host = DB_HOST;
    private $user = DB_USER;
    private $password = DB_PASSWORD;
    private $dbName = DB_NAME;
    private $connection;

    public function __construct()
    {
        $this->connect();
    }

    private function connect()
    {
        $this->connection = new mysqli($this->host, $this->user, $this->password, $this->dbName);

        if ($this->connection->connect_error) {
            die("Error en la conexión a la base de datos: " . $this->connection->connect_error);
        }
    }

    public function getConnection()
    {
        return $this->connection;
    }

    public function close()
    {
        $this->connection->close();
    }
}

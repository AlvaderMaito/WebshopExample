<?php


class Database
{

    protected $url;
    protected $user;
    protected $passw;
    protected $db;
    protected $connection = null;

    public function __construct($url,$user,$passw,$db){
        $this->url = $url;
        $this->user = $user;
        $this->passw = $passw;
        $this->db = $db;
    }

    public function __destruct() {
        if ($this->connection != null) {
            $this->closeConnection();
        }
    }

    protected function makeConnection(){
        //Make a connection
        $this->connection = new mysqli($this->url,$this->user,$this->passw,$this->db);
        if ($this->connection->connect_error) {
            echo "FAIL:" . $this->connection->connect_error;
        }
    }

    protected function closeConnection() {
        //Close the DB connection
        if ($this->connection != null) {
            $this->connection->close();
            $this->connection = null;
        }
    }

    protected function cleanParameters($p) {
        //prevent SQL injection
        $result = $this->connection->real_escape_string($p);
        return $result;
    }

    public function executeQuery($q){

        //Is there a DB connection?
        $this->makeConnection();
        //check for SQL injection

        //execute query
        $results = $this->connection->query($q);

        return $results;

    }

}
<?php
include_once 'Database.php';

class DatabaseFactory
{

    private static $connection;
    public static function getDatabase(){
        if(self::$connection==null){
            self::$connection=new Database("localhost","root","","test");

        }
        return self::$connection;
    }

}
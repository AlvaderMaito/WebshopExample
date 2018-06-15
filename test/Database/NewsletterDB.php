<?php
include_once 'DatabaseFactory.php';
include_once '../DATA/newsletter.php';
class NewsletterDB
{

    private static function getConnection(){
        return DatabaseFactory::getDatabase();
    }


    public static function insertEmail($email){
        return self::getConnection()->executeQuery("INSERT INTO newsletter (email) VALUES ('$email')");
    }
}
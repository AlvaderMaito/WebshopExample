<?php

if(isset($_POST['email'])){
    $email=$_POST['email'];
    include_once '../Database/NewsletterDB.php';
    NewsletterDB::insertEmail($email);
}
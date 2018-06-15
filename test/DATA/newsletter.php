<?php


class newsletter
{

    public $id;
    public $email;

    public function __construct($id,$email)
    {
        $this->id=$id;
        $this->email=$email;
    }
}
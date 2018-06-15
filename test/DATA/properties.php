<?php


class properties
{
    public $id;
    public $title;
    public $description;
    public $images;
    public $price;
    public $street;
    public $number;
    public $zipcode;
    public $city;
    public $country;
    public $bedrooms;
    public $livingrooms;
    public $parking;
    public $kitchen;
    public $type;
    public $propertytype;
    public $featured;
    public $sold;

    public function __construct($id,$title,$description,$images,$price,$street,$number,$zipcode,$city,$country,$bedrooms,$livingrooms,$parking,$kitchen,$type,$propertytype,$featured,$sold)
    {

        $this->id=$id;
        $this->title=$title;
        $this->description=$description;
        $this->images=$images;
        $this->price=$price;
        $this->street=$street;
        $this->number=$number;
        $this->zipcode=$zipcode;
        $this->city=$city;
        $this->country=$country;
        $this->bedrooms=$bedrooms;
        $this->livingrooms=$livingrooms;
        $this->parking=$parking;
        $this->kitchen=$kitchen;
        $this->type=$type;
        $this->propertytype=$propertytype;
        $this->featured=$featured;
        $this->sold=$sold;
    }

}
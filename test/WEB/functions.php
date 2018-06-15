<?php

function getImages($image){
    $imageArray=explode(';',$image);
    return $imageArray;
}
function firstText($text){
    $textArray=explode('.',$text);
    return $textArray[0];
}

function firstImage($image){
    $imageArray=explode(';',$image);
    return $imageArray[0];
}
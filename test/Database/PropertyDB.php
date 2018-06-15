<?php
include_once '../DATA/properties.php';
include_once 'DatabaseFactory.php';

class PropertyDB
{

    private static function getConnection(){
        return DatabaseFactory::getDatabase();
    }




    public static function getSlider(){

        $results=self::getConnection()->executeQuery("SELECT * FROM properties WHERE featured=1 LIMIT 5");
        $resultsArray=array();
        for ( $i=0;$i<$results->num_rows;$i++){
            $row=$results->fetch_array();
            $properties=self::convertRowToObject($row);
            $resultsArray[$i]=$properties;

        }
        return $resultsArray;
    }

    public static function getCheapest($aantal){
        $results=self::getConnection()->executeQuery("SELECT * FROM properties ORDER by price LIMIT $aantal");
        $resultsArray=array();
        for($i=0;$i<$results->num_rows;$i++){
            $row=$results->fetch_array();
            $properties=self::convertRowToObject($row);
            $resultsArray[$i]=$properties;
        }
        return $resultsArray;
    }

    public static function getFilter($type,$price,$propertytype){
        $filter="";


        if($type!=="0"&& $type!=""){
                $filter.="and type='".$type."'";
        }

        if($propertytype!=="0" && $propertytype!=""){
            $filter.="and propertytype='".$propertytype."'";
        }
        if($price !=="0" && $price!=""){
            if($price!=300000){
                $filter.="and price >=".$price." and price < ".($price+50001);
            }else{
                $filter.="and price >=".$price;
            }
        }

        $results=self::getConnection()->executeQuery("SELECT * FROM properties WHERE 1=1 $filter");
        $resultsArray=array();
        for ($i=0;$i<$results->num_rows;$i++){
            $row=$results->fetch_array();
            $properties=self::convertRowToObject($row);
            $resultsArray[$i]=$properties;
        }
        return $resultsArray;
    }


    public static function getAll(){
        $results=self::getConnection()->executeQuery("SELECT * FROM properties");
        $resultsArray=array();
        for ($i=0;$i<$results->num_rows;$i++){
            $row=$results->fetch_array();
            $properties=self::convertRowToObject($row);
            $resultsArray[$i]=$properties;
        }
        return $resultsArray;
    }


    public static function getById($id){

        $results=self::getConnection()->executeQuery("SELECT * FROM properties WHERE id=$id");

        if($results->num_rows==1){
            $row=$results->fetch_array();
            return self::convertRowToObject($row);
        }

}

    public static function convertRowToObject($row){
        return new properties(
          $row['id'],
        $row['title'],
        $row['description'],
            $row['images'],
            $row['price'],
            $row['street'],
            $row['number'],
            $row['zipcode'],
            $row['city'],
            $row['country'],
            $row['bedrooms'],
            $row['livingrooms'],
            $row['parking'],
            $row['kitchen'],
            $row['type'],
            $row['propertytype'],
            $row['featured'],
            $row['sold']


        );
    }
}
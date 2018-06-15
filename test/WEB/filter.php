<?php

$type=$_POST['type'];
$price=$_POST['price'];
$propertytype=$_POST['propertytype'];

include_once 'functions.php';
include "../Database/PropertyDB.php";

$list=PropertyDB::getFilter($type,$price,$propertytype);


foreach ($list as $filter){
?>
<div class="col-lg-4 col-sm-6">
            <div class="properties">
              <div class="image-holder">
                <img src="images/properties/<?php echo firstImage($filter->images)?>" class="img-responsive" alt="properties">
                  <?php
                  if($filter->sold==1){
                  ?>
                <div class="status sold">Sold</div>
                      <?php
                  }
                      ?>
              </div>
              <h4><a href="property-detail.php?id=<?php echo $filter->id?>"><?php echo $filter->title?></a></h4>
              <p class="price">Price: $<?php echo $filter->price?></p>
              <div class="listing-detail">
                  <span data-toggle="tooltip" data-placement="bottom" data-original-title="Bed Room"><?php echo $filter->bedrooms?></span>
                  <span data-toggle="tooltip" data-placement="bottom" data-original-title="Living Room"><?php echo $filter->livingrooms?></span>
                  <span data-toggle="tooltip" data-placement="bottom" data-original-title="Parking"><?php echo $filter->parking?></span>
                  <span data-toggle="tooltip" data-placement="bottom" data-original-title="Kitchen"><?php echo $filter->kitchen?></span>
              </div>
              <a class="btn btn-primary" href="property-detail.php?id=<?php echo $filter->id?>">View Details</a>
            </div>
          </div>
<?php
}
    ?>
<?php include 'templates/header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container">
    <?php
    include_once '../Database/PropertyDB.php';
    $property=PropertyDB::getById($_GET['id']);

    ?>
    <span class="pull-right"><a href="#">Home</a> / <?php echo $property->type?></span>
    <h2> <?php echo $property->type?></h2>
  </div>
</div>
<!-- banner -->


<div class="container">
  <div class="properties-listing spacer">
    <div class="row">
      <div class="col-lg-3 col-sm-4 hidden-xs">
        <div class="hot-properties hidden-xs">
        <h4>Cheapest Properties</h4>
<?php
include_once 'functions.php';
include_once '../Database/PropertyDB.php';
$list=PropertyDB::getCheapest(5);
foreach ($list as $property) {
  ?>
  <div class="row">
    <div class="col-lg-4 col-sm-5">
      <img src="images/properties/<?php echo firstImage($property->images)?>" class="img-responsive img-circle" alt="properties"/>
    </div>
    <div class="col-lg-8 col-sm-7">
      <h5><a href="property-detail.php?id=<?php echo $property->id?>"><?php echo $property->title?></a></h5>
      <p class="price">$ <?php echo $property->price?></p>
    </div>
  </div>
  <?php
}
  ?>
      </div>
      </div>

      <div class="col-lg-9 col-sm-8 ">
<?php
    $property=PropertyDB::getById($_GET['id']);

?>

        <h2><?php echo $property->title?></h2>
        <div class="row">
          <div class="col-lg-8">
            <div class="property-images">
              <?php
              $images=getImages($property->images);
              ?>
              <!-- Slider Starts -->
              <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <ol class="carousel-indicators hidden-xs">
                  <?php
                  for ($i=0;$i<count($images);$i++){
                  ?>
                  <li data-target="#myCarousel" data-slide-to="<?php echo $i?>" <?php echo $i==0 ?'class="active"':''?>></li>
                  <?php
                  }
                    ?>
                </ol>
                <div class="carousel-inner">
                  <?php
                  foreach ($images as $i=>$image){
                  ?>
                  <!-- Item 1 -->
                  <div class="item <?php echo $i==0?'active':''?>">
                    <img src="images/properties/<?php echo $image?>" class="properties" alt="properties" />
                  </div>
                  <?php
                  }
                    ?>


                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
              </div>
              <!-- #Slider Ends -->
            </div>

            <div class="spacer">
              <h4><span class="glyphicon glyphicon-th-list"></span> Properties Detail</h4>
              <?php echo $property->description?>
            </div>
          </div>
          
          <div class="col-lg-4">
            <div class="col-lg-12  col-sm-6">
              <div class="property-info">
                <p class="price">$ <?php echo $property->price?></p>
                <p class="area"><span class="glyphicon glyphicon-map-marker"></span> <?php echo $property->number." ".$property->street.", ".$property->city.", ".$property->country?></p>
              </div>

              <h6><span class="glyphicon glyphicon-home"></span> Availabilty</h6>
              <div class="listing-detail">
                <span data-toggle="tooltip" data-placement="bottom" data-original-title="Bed Room"><?php echo $property->bedrooms?></span>
                <span data-toggle="tooltip" data-placement="bottom" data-original-title="Living Room"><?php echo $property->livingrooms?></span>
                <span data-toggle="tooltip" data-placement="bottom" data-original-title="Parking"><?php echo $property->parking?></span>
                <span data-toggle="tooltip" data-placement="bottom" data-original-title="Kitchen"><?php echo $property->kitchen?></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include'templates/footer.php';?>
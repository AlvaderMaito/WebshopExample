<?php include 'templates/header.php';?>

<div class="">
  <div id="slider" class="sl-slider-wrapper">
    <div class="sl-slider">
      <?php
      include_once '../Database/PropertyDB.php';
      include_once 'functions.php';
      $list=PropertyDB::getSlider();
      foreach ($list as $property){

      ?>
      <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
        <div class="sl-slide-inner">
          <div class="bg-img bg-img-5" style="background-image: url(images/properties/<?php echo firstImage($property->images)?>)"></div>
          <h2><a href="property-detail.php?id=<?php echo $property->id?>"><?php echo $property->title?></a></h2>
          <blockquote>              
            <p class="location"><span class="glyphicon glyphicon-map-marker"></span> <?php echo $property->zipcode." ".$property->city.",".$property->country?></p>
            <p><?php echo firstText($property->description)?></p>
            <cite>$ <?php echo $property->price?></cite>
          </blockquote>
        </div>
      </div>
        <?php
      }
        ?>
    </div><!-- /sl-slider -->

    <nav id="nav-dots" class="nav-dots">
      <span class="nav-dot-current"></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </nav>

  </div><!-- /slider-wrapper -->
</div>

<!-- banner -->
<div class="banner-search">
  <div class="container"> 
    <h3>Buy, Sale & Rent</h3>
    <div class="searchbar">
      <div class="row">
        <div class="col-lg-6 col-sm-6">
          <div class="row">
            <div class="col-lg-3 col-sm-3 ">
              <select class="form-control">
                <option>Type</option>
                <option>Buy</option>
                <option>Rent</option>
                <option>Sale</option>
              </select>
            </div>
            <div class="col-lg-3 col-sm-4">
              <select class="form-control">
                <option>Price</option>
                <option>$150,000 - $200,000</option>
                <option>$200,000 - $250,000</option>
                <option>$250,000 - $300,000</option>
                <option>$300,000 - above</option>
              </select>
            </div>
            <div class="col-lg-3 col-sm-4">
              <select class="form-control">
                <option>Property Type</option>
                <option>Apartment</option>
                <option>Building</option>
                <option>Office Space</option>
              </select>
            </div>
            <div class="col-lg-3 col-sm-4">
              <button class="btn btn-success">Find Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- banner -->

<div class="container">
  <div class="properties-listing spacer"> <a href="buysalerent.php" class="pull-right viewall">View All Listing</a>
    <h2>Cheapest Properties</h2>
    <div id="owl-example" class="owl-carousel">
      <?php
      include_once 'functions.php';
      include_once '../Database/PropertyDB.php';
      $list=PropertyDB::getCheapest(10);
      foreach ($list as $property){
      ?>
      <div class="properties">
        <div class="image-holder">
          <img src="images/properties/<?php echo firstImage($property->images)?>" class="img-responsive" alt="properties"/>
          <?php
          if($property->sold==1) {
            ?>
            <div class="status sold">Sold</div>
            <?php
          }
            ?>
        </div>
        <h4><a href="property-detail.php?id=<?php echo $property->id?>"><?php echo $property->title?></a></h4>
        <p class="price">Price: $<?php echo $property->price?></p>
        <div class="listing-detail">
          <span data-toggle="tooltip" data-placement="bottom" data-original-title="Bed Room"><?php echo $property->bedrooms?></span>
          <span data-toggle="tooltip" data-placement="bottom" data-original-title="Living Room"><?php echo $property->livingrooms?></span>
          <span data-toggle="tooltip" data-placement="bottom" data-original-title="Parking"><?php echo $property->parking?></span>
          <span data-toggle="tooltip" data-placement="bottom" data-original-title="Kitchen"><?php echo $property->kitchen?></span>
        </div>
        <a class="btn btn-primary" href="property-detail.php?id=<?php echo $property->id?>">View Details</a>
      </div>
        <?php
      }
        ?>
    </div>
  </div>
</div>
<?php include'templates/footer.php';?>
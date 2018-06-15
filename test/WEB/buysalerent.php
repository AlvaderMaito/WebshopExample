<?php include 'templates/header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="index.php">Home</a> / Buy, Sale & Rent</span>
    <h2>Buy, Sale & Rent</h2>
  </div>
</div>
<!-- banner -->


<div class="container">
  <div class="properties-listing spacer">
    <div class="row">
      <!-- sidebar -->
      <div class="col-lg-3 col-sm-4 ">
        <div class="search-form"><h4><span class="glyphicon glyphicon-search"></span> Search for</h4>
          <div class="row">
            <div class="col-lg-5" >
              <select class="form-control filter" name="type">
                <option value="0">All</option>
                <option value="buy">Buy</option>
                <option value="rent">Rent</option>
                <option value="sale">Sale</option>
              </select>
            </div>
            <div class="col-lg-7">
              <select class="form-control filter" name="price">
                <option value="0">Price</option>
                <option value="150000">$150,000 - $200,000</option>
                <option value="200000">$200,000 - $250,000</option>
                <option value="250000">$250,000 - $300,000</option>
                <option value="300000">$300,000 - above</option>
              </select>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <select class="form-control filter" name="propertytype">
                <option value="0">Property Type</option>
                <option value="apartment">Apartment</option>
                <option value="building">Building</option>
                <option value="officespace">Office Space</option>
              </select>
            </div>
          </div>
          
        </div>
        
        <div class="hot-properties hidden-xs">
          <h4>Cheapest Properties</h4>
<?php
include_once 'functions.php';
include_once '../Database/PropertyDB.php';
$list=PropertyDB::getCheapest(5);
foreach ($list as $property) {
  ?>
  <div class="row">
    <div class="col-lg-4 col-sm-5"><img src="images/properties/<?php echo firstImage($property->images)?>" class="img-responsive img-circle"
                                        alt="properties"></div>
    <div class="col-lg-8 col-sm-7">
      <h5><a href="property-detail.php?id=<?php echo $property->id?>"><?php echo $property->title?></a></h5>
      <p class="price">$<?php echo $property->price?></p></div>
  </div>
  <?php
}
  ?>

        </div>
      </div>
      <!-- end sidebar -->
      
      <div class="col-lg-9 col-sm-8">
        <div class="row">
          <div id="properties">
            <?php
            if(isset($_GET['type'])){
              $type=$_GET['type'];
              $list=PropertyDB::getFilter($type,0,0);
            }else{
            $list=PropertyDB::getAll();
            }
            foreach ($list as $p){
              ?>
              <div class="col-lg-4 col-sm-6">
                <div class="properties">
                  <div class="image-holder">
                    <img src="images/properties/<?php echo firstImage($p->images)?>" class="img-responsive" alt="properties">
                    <?php
                    if($p->sold==1){
                      ?>
                      <div class="status sold">Sold</div>
                      <?php
                    }
                    ?>
                  </div>
                  <h4><a href="property-detail.php?id=<?php echo $p->id?>"><?php echo $p->title?></a></h4>
                  <p class="price">Price: $<?php echo $p->price?></p>
                  <div class="listing-detail">
                    <span data-toggle="tooltip" data-placement="bottom" data-original-title="Bed Room"><?php echo $p->bedrooms?></span>
                    <span data-toggle="tooltip" data-placement="bottom" data-original-title="Living Room"><?php echo $p->livingrooms?></span>
                    <span data-toggle="tooltip" data-placement="bottom" data-original-title="Parking"><?php echo $p->parking?></span>
                    <span data-toggle="tooltip" data-placement="bottom" data-original-title="Kitchen"><?php echo $p->kitchen?></span>
                  </div>
                  <a class="btn btn-primary" href="property-detail.php?id=<?php echo $p->id?>">View Details</a>
                </div>
              </div>

              <?php
            }
            ?>

          </div>

        </div>
      </div>
    </div>
  </div>
</div>

<?php include 'templates/footer.php';?>
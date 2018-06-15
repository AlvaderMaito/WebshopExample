$(function() {
  $("#owl-example").owlCarousel();
  $('.listing-detail span').tooltip('hide');
    
  var Page = (function() {
    var $nav = $( '#nav-dots > span' ),
        slitslider = $( '#slider' ).slitslider({
          onBeforeChange : function( slide, pos ) {
            $nav.removeClass( 'nav-dot-current' );
            $nav.eq(pos).addClass( 'nav-dot-current' );
          }
        }),

    init = function() {
      initEvents();
    },
    initEvents = function() {
      $nav.each(function(i) {
        $(this).on('click', function( event ) {
          var $dot = $( this );
          if( !slitslider.isActive() ) {
            $nav.removeClass( 'nav-dot-current' );
            $dot.addClass( 'nav-dot-current' );
          }
          slitslider.jump( i + 1 );
          return false;
        });
      });
    };
    
    return { init : init };

  })();

  Page.init();
  
  $('.filter').on('change',function () {
    $type=$("select[name=type]").val();
    $price=$("select[name=price]").val();
    $propertytype=$("select[name=propertytype]").val();
    console.log($type);
    console.log($price);
    console.log($propertytype);

    $.ajax({
      url:'filter.php',
      method:'POST',
      data:{type:$type,price:$price,propertytype:$propertytype},
      datatype:'text',
      success : function (data) {
          $('#properties').html(data);
      },
    })
  })


  $('#newsletter ').on('click',function () {
    $field=$("input[name=email]");
    $value=$field.val();
    console.log($value);

    if($value=="" || !validateEmail($value)){
      $field.css('border-color','red');
      console.log("error");
    }else {
      $.ajax({
        url:'mail.php',
        method:'POST',
        data:{email:$value},
        success:function (data) {

        },
      })
    }
  })


  function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }
});
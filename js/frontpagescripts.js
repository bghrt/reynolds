
/*this is for the popover*/
jQuery(function() {
    var isVisible = false;
    
    var hideAllPopovers = function() {
       $('.popup-marker').each(function() {
            $(this).popover('hide');
        });  
    };
    
    $('.popup-marker').popover({
        html: true,
        trigger: 'manual'
    }).on('click', function(e) {
        // if any other popovers are visible, hide them
        if(isVisible) {
            hideAllPopovers();
        }

        $(this).popover('show');

        <!--handles popover click off anywhere-->
        $('.popover').off('click').on('click', function(e) {
            e.stopPropagation(); // prevent event for bubbling up => will not get caught with document.onclick
        });
        
        isVisible = true;
        e.stopPropagation();
    });

    
    $(document).on('click', function(e) {
        hideAllPopovers();
        isVisible = false;
    });
});

/*this is for the carosel*/

  $(document).ready(function(){
    $('.carousel').carousel();
  });

$('.carousel').carousel({
  interval: 9000
})


/*This is for the feedback tab*/

$( "#fbtabno" ).click(function() {
  $( "#fbtab" ).hide( "slow", function() {
    
  });
});

$( "#fbtabno" ).click(function() {
  $( "#fbtabno" ).hide( "slow", function() {
   
  });
});

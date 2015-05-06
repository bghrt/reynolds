
Spry.Utils.addLoadListener(function() {
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TVVXNM');


  (function() {
    var cx = '010622249790429968557:cceljkmcpg8';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();



function validateForm()
{
        var x=document.forms.primo.query.value;
        if (x==null || x=="")
        {
                alert("Enter your search words");
                return false;
        } else {
                document.forms.primo.query.value="any,contains,"+x;
        }
}



function validateForm()
{
        var x=document.forms.primo.query.value;
        if (x==null || x=="")
        {
                alert("Enter your search words");
                return false;
        } else {
                document.forms.primo.query.value="any,contains,"+x;
        }
}

//tabs jquery
$(document).ready(function ($) {
        $('#tabs').tab();
    });

//userlogin for my reynolds
function validate() {
document.auth.password.value = document.auth.password_temp.value;
document.auth.password_temp.value = "";
return true;
}


//tabs
$(function() {
	$( "#Tabs1" ).tabs(); 
});
$(function() {
	$( "#Tabs1" ).tabs(); 
});

//carasousel initiatie

  $(document).ready(function(){
    $('.carousel').carousel();
  });



$('.carousel').carousel({
  interval: 9000
})

$(function () {
    $('#myTab a:first').tab('show')
  })

//hide fb tab - jquery

$( "#fbtabno" ).click(function() {
  $( "#fbtab" ).hide( "slow", function() {
    
  });
});

$( "#fbtabno" ).click(function() {
  $( "#fbtabno" ).hide( "slow", function() {
   
  });



    

});



 $(document).ready(function(){$( ".s-lc-ea-tb" ).slice( 2, 5 ).hide(); 
 });

// hide extra library workshops


   



// hide popovers on click
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

  

//google analytics
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-42159688-1', 'Reynolds.edu');
  ga('send', 'pageview');



//crazy egg
setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName("script")[0];
a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0018/7044.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);


});


//not currently working

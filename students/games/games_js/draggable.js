

$(document).ready(function() {






$( ".draggable" ).draggable({ snap: ".droppable", snapMode: "inner", revert: "invalid" });
//, snapTolerance: 30

var answered = 0;
function snapDrop(e,ui){
    var snap = $(this);

	snap.closest(".rowWrap , RowWrap2").addClass("rowSelected", 500);
	snap.closest(".rowWrap,  RowWrap2").find(".tick").fadeIn(500);
	
	
$("#lightBox").delay(600).fadeIn(500);
	$("#lightBox").load(snap.data("lightbox"));
		
	// when complete	 
    answered++;
    if(answered == $(".rowMid .droppable").length){
		  $("#tableWrap , .draggable , .colRight").hide(); 
		
	  $(".comp").delay(4100).fadeIn(500);
    
	 
			
	
	}
	
		
	 
  
}

function snapAccept(ele){
    var snap = $(this);
    //Checks if the dragged element has a class with the name that was used in
    //the data-accept attribute of the span 
    return ele.hasClass(snap.data("accept"));
}

$(".rowMid .droppable").droppable({
    accept: snapAccept,
	drop: snapDrop
});


});
<!--fullWidth close-->

//deletes the lightbox
$( "#lightBox" ).click(function() {
  $( "#lightBox" ).hide( "slow", function() {
    
  });

  



});
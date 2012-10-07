/* Document Loading Functions */

$(document).ready(function(){
    if($.trim( $('.mainContainer').html() ).length == 0){
        loadHome();
    }
});

/* AJAX Content Objects */

var homeContent = 'home.html';

var selectVehicleContent = '/static_pages/selectvehicle.html';
var selectVehicleTimeline = "/static_pages/selectvehicletimeline.html";
var upfitVehicleContent = '/static_pages/upfitvehicle.html';
var upfitVehicleTimeline = "/static_pages/upfitvehicletimeline.html";


/* Step AJAX Calls */

function timelineUpfitVehicle () {
	$('.timeline').empty();
	$('.timeline')
	.load(upfitVehicleTimeline + ' #upfitVehicleTimeline');
}


function timelineSelectVehicle () {
	$('.timeline').empty();
	$('.timeline')
	.load(selectVehicleTimeline + ' #selectVehicleTimeline');
}

function loadHome () {
	$('.mainContainer')
	.load(homeContent + ' #homeContent');	
	footerFix();

}

function selectVehicle () {
	$('.mainContainer')
	.load(selectVehicleContent + ' #selectVehicleContent');
	footerFix();
}


function upfitVehicle () {
	$('.mainContainer').load("../vehicles/1#vehicles");
	//.load(upfitVehicleContent + ' #upfitVehicleContent');

	footerFix();
}


/* Navigation Static Functions */

$(document).on("click", ".mainNav a", function(event){	
	/* Empty the main container div */
	$('.mainContainer').empty();
});


$(document).on("click", ".upfitVehicle", function(event){
	stepTwo();
});

$(document).on("click", ".siteName a", function(event){

	goHome();
});


$(document).on("click", ".loginRegister", function(event){
	stepThree();
});

$(document).on("click", ".transit-vehicle", function(event){
    stepThree();
});



/* Garage Animations */

function garageAnimation () {
	$('.garageSprite').sprite({
	    fps: 15, 
	    no_of_frames: 26, 
	    on_last_frame: function(obj) {
	        obj.spStop(); // stop the animation on the last frame
	    }	
	});

}
/* Step Animations */

function stepThree () {
	$('body').removeClass();
	$('body').addClass('garage');
	$('.parentContainer').css({
  		'background-position-x': '0%'
		});

		upfitVehicle();	
		timelineUpfitVehicle();
		return false
}

function stepTwo () {
	$('body').removeClass();
	$('body').addClass('select');
    $('.parentContainer').animate({
        'background-position-x': '50%'
    });
		
		selectVehicle();
		timelineSelectVehicle();
		return false;
}

function goHome () {
	$('body').removeClass();
	$('body').addClass('home');
	$('.parentContainer').animate({		
  		'background-position-x': '100%'
		});
		
		loadHome();
		return false
}


/* Footer Fix, Sit at the Bottom of Page */

function footerFix () {
    var footer_height=$('footer').height();
    $('.parentContainer').css({
        'padding-bottom' : footer_height
    });
}

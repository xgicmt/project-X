// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
// require turbolinks
//= require jquery_ujs
//= require_tree .
jQuery(function(){
  	$('#disclaimBtn').click(function(){
	  $('#disclaimer').slideToggle(500);
	});

	$('.flash:visible').delay(2500).slideUp();

	$('.userName').click(function(){
	  $('.underName').slideToggle(500);
	  $('.userName').css("border-radius", "5px 5px 0 0");
	});
});
/*
$(document).ready(function(){
	$('#disclaimBtn').click(function(){
		$('#disclaimer').slideToggle(500);
	});
});
$(function(){
	$('.flash:visible').delay(2500).slideUp();
});
$(document).ready(function(){
	$('.userName').click(function(){
	  $('.underName').slideToggle(500);
	  $('.userName').css("border-radius", "5px 5px 0 0");
	});
});
*/
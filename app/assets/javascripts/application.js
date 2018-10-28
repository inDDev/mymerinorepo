// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap
//= require jquery.slick
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});

$(document).ready(function() {
	$('.sliderMain').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: true,
    asNavFor: '.sliderSidebar',
    autoplay: false,
    autoplaySpeed: 3500
  });
  $('.sliderSidebar').slick({
    slidesToShow: 5,
    slidesToScroll: 1,
    asNavFor: '.sliderMain',
    dots: true,
    centerMode: false,
    focusOnSelect: true,
    vertical: true,
    arrows: true
  });
  $('.sliderMain').on('afterChange', function(event, slick, currentSlide) {
    if (currentSlide == 5) {
      $('.sliderMain').slick('slickPause');
      theVideo.play();
      $('.sliderMain').on('beforeChange', function(event, slick, currentSlide, nextSlide)
        {
            theVideo.pause(); 
        });
    }
  });

  document.getElementById('theVideo').addEventListener('ended', myHandler, false);

  function myHandler(e) {
    $('.sliderMain').slick('slickPlay');
  }
});
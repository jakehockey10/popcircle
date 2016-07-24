// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.easing
//= require jquery.popcircle
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function () {
  $('.popcircle-trigger').click(function (e) {
    e.preventDefault();
    $.popcircle('#pops', {
      spacing: '10px',
      type: 'full', // full, half, quad
      offset: 1.95, // 0, 1, 2, 3, 4, 5, 6, 7, or 5.1
      ease: 'easeOutElastic',
      time: 'slow' // slow, fast, 1000
    });
  });
});
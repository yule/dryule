// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  
  $('#top-nav li').mouseover(function(){
    $(this).addClass('rollover')
  });
  $('#top-nav li').mouseout(function(){
    $(this).removeClass('rollover')
  });
  
});
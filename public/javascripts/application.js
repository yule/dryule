// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  
  $('#top-nav li').mouseover(function(){
    $(this).addClass('rollover')
  });
  $('#top-nav li').mouseout(function(){
    $(this).removeClass('rollover')
  });

  var phase = 100
  if ($('#phase')){
    setInterval(function(){
      if (phase==0){
        phase = 1100;
	$('#phase').html('Now, do it now');
      }else if (phase > 1070){
       phase -=1;
      }else if (phase >950) {
  	$('#phase').html('to late...');
        phase -=1;
      }
      else{
	$('#phase').html(phase);
        phase -=1;
      }
    }, 50);
  }
  
});

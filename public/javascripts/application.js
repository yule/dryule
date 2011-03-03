// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  
  $('#top-nav li').mouseover(function(){
    $(this).addClass('rollover')
  });
  $('#top-nav li').mouseout(function(){
    $(this).removeClass('rollover')
  });
  
  
  var keyList = '';
  var correct = '38#38#40#40#37#39#37#39#66#65#'
  $(document).keydown(function(e){
    var keyCode = e.keyCode || e.which;
    if (keyCode == 38 && keyList != '38#') { 
      keyList = '';
    }
    keyList += keyCode + '#';
    if (keyList == correct){
      $('#header').append("<div id='ninja-div' style='position:absolute; width: 300px; top:0; left:0;z-index:1000;background-color: #ffffff;'></div>");
      $(document).keydown(function(e){
        $('#ninja-div').append(char= String.fromCharCode(e.which));
        e.preventDefault();
      });
    }
  });
  
});
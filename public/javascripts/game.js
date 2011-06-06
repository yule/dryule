//Jquery returns colous in format rgb(nn,mm,pp):
var colors = ['rgb(11, 100, 11)','rgb(190, 11, 11)',
	      'rgb(11, 20, 200)', 'rgb(200, 200, 20)', 
 	      'rgb(200, 176, 144)', 'rgb(0, 0, 0)', 
	      'rgb(255, 255, 255)', 'rgb(10,240,30)', 'rgb(55,55,55)'];

var answer = [colors[1], colors[1], colors[2], colors[4]];

var NUMBER_OF_GUESSES = 15;
var guess_counter = 0;
$(document).ready(function(){
  $('#new-game-button').click(new_game);  

  new_game();  
  //colour cycle
  $('.large-circle').click(function changeColour(){
    var current_colour = $(this).css('background-color');
    var index = colors.indexOf(current_colour);
    index++;
    if (index>=colors.length){
      index = 0;
    }
    $(this).css('background-color', colors[index]);
  })
  
  //guess
  $('#go-button').click(function(){
    guess_counter++;
    var one = $('#l-1').css('background-color');
    var two = $('#l-2').css('background-color');
    var three = $('#l-3').css('background-color');
    var four = $('#l-4').css('background-color');
    var guess = new Array(one,two,three,four);    
    var working = new Array(one,two,three,four);
    var working_answer = new Array(answer[0], answer[1], answer[2], answer[3]);
    var blackCounter = 0;
    var whiteCounter = 0;
    for (var i=0; i<4; i++){
      if (working[i] == answer[i]){
        blackCounter++;
        working[i] = '--';// essesntialy a marker to stop white picking up on already guessed black
        working_answer[i] = '--';
      }
    }
    for (var j=0; j<4; j++){
      if (working[j] != '--'){
          var indexJ = working_answer.indexOf(working[j]);
          if (indexJ!=-1){
            whiteCounter++;
            working_answer[indexJ] = '--';
            working[j] = '--';
          }
      }
    }
    if (blackCounter ==4){
      win();
    }else if (guess_counter > NUMBER_OF_GUESSES){
      game_over();
    }else{
      archive(guess, blackCounter, whiteCounter);      
    }
  });
});

function new_game(){
  $('.turn').hide();
  $('.large-circle').css('background-color','#ffffff');
  guess_counter = 0;
  answer = [colors[getRand()], colors[getRand()], colors[getRand()], colors[getRand()]];  
}

function getRand(){
  return Math.floor(Math.random()*colors.length)
}

function win(){
  alert('you win!');
  $('#wins').html(parseInt($('#wins').html())+1);
}

function game_over(){
  alert('you lose');
  $('#losses').html(parseInt($('#losses').html())+1);
}

function archive(guess, blackCounter, whiteCounter){
  $('#'+(guess_counter)).show();
  for(var i=1; i<=4; i++){
    $('#m-'+guess_counter+'-'+i).css('background-color', guess[i-1]);
  }
  for(var j=1; j<=4; j++){
    if (blackCounter>=j){
      $('#sm-'+guess_counter+'-'+j).css('background-color', '#000000');
    }else if (whiteCounter>= (j-blackCounter)){
      $('#sm-'+guess_counter+'-'+j).css('background-color', '#ffffff');
    }else{
      $('#sm-'+guess_counter+'-'+j).css('background-color', '#999999');  
    } 
  }  
} 

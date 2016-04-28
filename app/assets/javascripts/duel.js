$(document).ready(function(){

// Get usernames
// var oppUsername = $("#oppUsername").html();
// var currUsername = $("#currUsername").html();

//get weapon
var oppweapon = $('#oppweapon');
var currweapon = $('#currweapon');

//get hp
var currhp = parseInt($("#currhp").html());
var opphp = parseInt($("#opphp").html());


function isAnimated(weapon){
  var classname = 'animated infinite pulse';
  if(weapon.hasClass("active")){
    weapon.addClass(classname);
  }else{
    weapon.removeClass(classname);
  }
}

//Add Active class
function toggleActive(){
    oppweapon.toggleClass('active');
    currweapon.toggleClass('active');
}

// Test if someones hp is equal to 0
// function whoWinner(opponentHP, currentUserHP){
//   if (opponentHP === 0 || currentUserHP === 0){
//     $('#middleInfo p:last').after("<p class='winner'></p>");
//   }
//   if(opponentHP === 0){
//     $('#middleInfo p:last').append(oppUsername + " WINS!!");
//   }else{
//     $('#middleInfo p:last').append(currUsername + " WINS!!");
//   }
// }

function statusUpdate(username1, username2, user1Att){
  //opponent attacks current_user
  $('#middleInfo p:last').after("<p></p>");
  $('#middleInfo p:last').append(username1 + " ATTACKS " + username2);
  //update status in the middle
  $('#middleInfo p:last').after("<p></p>");
  $('#middleInfo p:last').append(username2 + " loses "+ user1Att + " health points");
}

function decrementHp(){
  var oppUsername = $("#oppUsername").html();
  var currUsername = $("#currUsername").html();

  // if opponent is active then decrement current_user hp
  if(oppweapon.hasClass("active")){
    var currhp = parseInt($("#currhp").html());
    var oppWeaponAtt = parseInt($("#oppWeaponAtt").html());
    var totalOppAtt = oppWeaponAtt;

    statusUpdate(oppUsername, currUsername, totalOppAtt);

    currhp -= totalOppAtt;
    $("#currhp").html(currhp);

    toggleActive();
    isAnimated(oppweapon);
    isAnimated(currweapon);

  // else current_user is active so decrement opponents hp
  }else{
    var opphp = parseInt($("#opphp").html());
    var currWeaponAtt = parseInt($("#currWeaponAtt").html());
    var totalCurrAtt = currWeaponAtt;
    statusUpdate(currUsername, oppUsername, totalCurrAtt);
    opphp -= totalCurrAtt;
    $("#opphp").html(opphp);
    toggleActive();
    isAnimated(currweapon);
    isAnimated(oppweapon);
  }
}

function startBattle(opponentHP, currentUserHP){
    timerId = setInterval(decrementHp, 2000);
    if(opponentHP <= 0){
      opponentHP = 0;
      clearInterval(timerId);
    }
    if(currentUserHP <= 0){
      currentUserHP = 0;
      clearInterval(timerId);
    }
}



// Initiat opponent with active and Add animation to active user
oppweapon.addClass('active');
isAnimated(oppweapon);

// say who is the first to attack
var firstUser = $("#oppUsername").html();
$('#middleInfo .fightStatus').html(firstUser + " goes first");


startBattle(opphp, currhp);
});

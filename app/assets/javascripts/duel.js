$(document).ready(function(){

// Get usernames
var oppUsername = $("#oppUsername").html();
var currUsername = $("#currUsername").html();

//get weapon
var oppweapon = $('#oppweapon');
var currweapon = $('#currweapon');



//Add Animation for active
// function isAnimated(){
//   if(oppweapon.hasClass("active")){
//     oppweapon.addClass('animated infinite pulse');
//   }else{
//     oppweapon.removeClass('animated infinite pulse');
//   }
//
//   if(currweapon.hasClass("active")){
//     currweapon.addClass('animated infinite pulse');
//   }else{
//     currweapon.removeClass('animated infinite pulse');
//   }
// }

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


function decrementHp(){
  // if opponent is active then decrement current_user hp
  if(oppweapon.hasClass("active")){
    var currhp = parseInt($("#currhp").html());
    var oppWeaponAtt = parseInt($("#oppWeaponAtt").html());
    var totalOppAtt = oppWeaponAtt;
    alert("The current users hp equals " + currhp);
    currhp -= totalOppAtt;
    $("#currhp").html(currhp);
    toggleActive();
    isAnimated(oppweapon);
    isAnimated(currweapon);
    //update status in the middle
    $('#middleInfo p:last').after("<p></p>");
    $('#middleInfo p:last').append(currUsername + " loses " + totalOppAtt +" points");
    toggleActive();

  // else current_user is active so decrement opponents hp
  }else{
    var opphp = parseInt($("#opphp").html());
    var currWeaponAtt = parseInt($("#currWeaponAtt").html());
    var totatCurrAtt = currWeaponAtt;
    alert("The current users hp equals " + opphp);
    opphp -= totalCurrAtt;
    $("#opphp").html(opphp);
    toggleActive();
    isAnimated(currweapon);
    isAnimated(oppweapon);
    //update status in the middle
    $('#middleInfo p:last').after("<p></p>");
    $('#middleInfo p:last').append(oppUsername + " loses "+totalCurrAtt + " health points");
    toggleActive();

  }
}


// Initiat opponent with active and Add animation to active user
oppweapon.addClass('active');
isAnimated(oppweapon);

// say who is the first to attack
$('#middleInfo .fightStatus').html(oppUsername + " goes first");

//opponent attacks current_user
$('#middleInfo p:last').after("<p></p>");
$('#middleInfo p:last').append(oppUsername + " ATTACKS " + currUsername);

decrementHp();

});

$(document).ready(function(){

// Get usernames
var oppUsername = $("#oppUsername").html();
var currUsername = $("#currUsername").html();

//get weapon
var oppweapon = $('#oppweapon');
var currweapon = $('#currweapon');



//Add Animation for active
function isAnimated(){
  if(oppweapon.hasClass("active")){
    oppweapon.addClass('animated infinite pulse');
  }else{
    oppweapon.removeClass('animated infinite pulse');
  }

  if(currweapon.hasClass("active")){
    currweapon.addClass('animated infinite pulse');
  }else{
    currweapon.removeClass('animated infinite pulse');
  }
}

//Add Active class
function toggleActive(){
    oppweapon.toggleClass('active');
    currweapon.toggleClass('active');
    isAnimated();
}

// Initiat opponent with active and Add animation to active user
oppweapon.addClass('active');
isAnimated();

// say who is the first to attack
$('#middleInfo .fightStatus').html(oppUsername + " goes first");

//opponent attacks current_user
$('#middleInfo p:last').after("<p></p>");
$('#middleInfo p:last').append(oppUsername + " ATTACKS " + currUsername);

// TODO: update current_user HP and say how many points they lost
$('#middleInfo p:last').after("<p></p>");
$('#middleInfo p:last').append(currUsername + " loses points");


function decrementHp(){
  if(oppweapon.hasClass("active")){
    var currhp = parseInt($("#currhp").html());
    var oppWeaponAtt = parseInt($("#oppWeaponAtt").html());
    var totalAtt = oppWeaponAtt;
    alert("The current users hp equals " + currhp);

// FIXME: define that 10 is the opponents attack_points
    currhp -= totalAtt;
    $("#currhp").html(currhp);
    toggleActive();
  }else{
    var opphp = parseInt($("#opphp").html());
    alert("The current users hp equals " + opphp);
    opphp -= 10;
    $("#currhp").html(opphp);
    toggleActive();
  }
}

decrementHp();
});

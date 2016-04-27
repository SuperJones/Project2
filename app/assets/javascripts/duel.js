$(document).ready(function(){

oppUsername = $("#oppUsername").html();
currUsername = $("#currUsername").html();

$('#oppweapon').addClass('active');
$('#oppweapon').addClass('animated infinite pulse');


textParagraph = $('.middleInfo .fightStatus');
textParagraph.html(oppUsername + " goes first");

// TODO: Add another p with updated info
// textParagraph.html(oppUsername + " goes first");


});

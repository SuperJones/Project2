$(document).ready(function(){
  
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
  function whoWinner(userhp, username){
    if (userhp === 0){
      $('#middleInfo p:first').before("<p class='winner'></p>");
      $('#middleInfo p:first').append(username + " WINS!!");
    }
  }

  function statusUpdate(username1, username2, user1Att){
    //opponent attacks current_user
    $('#middleInfo p:first').before("<p></p>");
    $('#middleInfo p:first').append(username1 + " ATTACKS " + username2);
    //update status of hp
    $('#middleInfo p:first').before("<p></p>");
    $('#middleInfo p:first').append(username2 + " suffers " + user1Att + " damage");
  }

  function ranNum(){
    time = Math.floor(Math.random() * 10) + 1;
    return time;
  }

  function decrementHp(){
    var oppUsername = $("#oppUsername").html();
    var currUsername = $("#currUsername").html();
    var oppweapon = $('#oppweapon');
    var currweapon = $('#currweapon');

    // if opponent is active then decrement current_user hp
    if(oppweapon.hasClass("active")){

      //declare scope variables.
      var currhp = parseInt($("#currhp").html());
      var oppWeaponAtt = parseInt($("#oppWeaponAtt").html());
      var totalOppAtt = oppWeaponAtt;
      var damagetoCurr = (ranNum() * totalOppAtt);

      //print out updates
      statusUpdate(oppUsername, currUsername, damagetoCurr);

      //decrement userhp and show on screen
      currhp -= damagetoCurr;
      $("#currhp").html(currhp);

      //See if user hp is 0 and if so, proclaim user the winner
      if(currhp <= 0){
        clearInterval(timerId);
        currhp = 0;
        $("#currhp").html(currhp);
        whoWinner(currhp, oppUsername);
        toggleActive();
        currweapon.removeClass('animated infinite pulse');
        oppweapon.removeClass('animated infinite pulse');
        oppweapon.addClass('animated infinite tada');
        currweapon.addClass('animated hinge');
        //else switch to the other user.
      }else{
        toggleActive();
        isAnimated(oppweapon);
        isAnimated(currweapon);
      }


      // else current_user is active so decrement opponents hp
    }else{
      var opphp = parseInt($("#opphp").html());
      var currWeaponAtt = parseInt($("#currWeaponAtt").html());
      var totalCurrAtt = currWeaponAtt;
      var damagetoOpp = (ranNum() * totalCurrAtt);

      statusUpdate(currUsername, oppUsername, damagetoOpp);

      opphp -= damagetoOpp;
      $("#opphp").html(opphp);

      if(opphp <= 0){
        clearInterval(timerId);
        opphp = 0;
        $("#opphp").html(opphp);
        whoWinner(opphp, currUsername);
        toggleActive();
        oppweapon.removeClass('animated infinite pulse');
        currweapon.removeClass('animated infinite pulse');
        currweapon.addClass('animated infinite tada');
        oppweapon.addClass('animated hinge');
      }else{
        toggleActive();
        isAnimated(currweapon);
        isAnimated(oppweapon);
      }


    }
  }

  function startBattle(){
    timerId = setInterval(decrementHp, 2000);
  }



  // Initiate opponent with active and Add animation to active user
  oppweapon.addClass('active');
  isAnimated(oppweapon);

  // say who is the first to attack
  var firstUser = $("#oppUsername").html();
  $('#middleInfo .fightStatus').html(firstUser + " goes first");


  startBattle();
});

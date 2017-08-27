
$(document).ready(function(){

  $("p").dblclick(function(){
    $(this).hide();
  });

  $("h1").hover(function(){
    alert("You are hovering over this header now!");
  });
  $("input").focus(function(){
    $(this).css("background-color", "#cccccc");
  });
  $("input").blur(function(){
    $(this).css("background-color", "#ffffff");
  });
  $("h2").on({
    mouseenter: function(){
      $(this).css("background-color", "yellow");
    },  
    mouseleave: function(){
      $(this).css("background-color", "lightgray");
    }, 
    click: function(){
      $(this).css("background-color", "lightblue");
    }  
  });
});
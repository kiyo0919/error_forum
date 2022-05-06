$(function(){
  $('.error-img').on('click', function(){
    $('.error-img').addClass("error-img-ext");
  });
  $('.error-img').mouseout(function(){
    $('.error-img').removeClass("error-img-ext");
  });
});

$(function(){
  $('.box1').on('click', function(){
    $('.box1').addClass('box1-ext');
  });
  $('.box1').mouseout(function(){
    $('.box1').removeClass('box1-ext');
  });
});
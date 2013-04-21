$(function() {
  var ZIndex = 0;
  var isDraggable = false;
  var WindowWidth = 1000;
  var WindowHeight = 600;
  
  $(".item").each(function () {
    var RotateDeg = RandomNumber(300, 420);
    var CSSItem = { 'left' : Math.round(Math.random() * (WindowWidth)), 'top' : Math.round(Math.random() * (WindowHeight)), 'transform' : 'rotate('+ RotateDeg +'deg)' };
    $(this).css(CSSItem);
  });
  
  $(".item").mouseup(function(){
    $(".item").find('p').remove();
    if(!isDraggable) {
      ZIndex++;
      var CSSItem = { 'z-index' : ZIndex, 'transform' : 'rotate(0deg)'};
      $(this).css(CSSItem);
      var AltText = $(this).find('img').attr('alt');
      $(this).append('<p class="name"> ' + AltText + ' </p>');
      $(this).append('<p class="description"> ' + $(this).find('img').attr('description') + ' </p>');
    }
  });
  
  $(".item").draggable({
    cursor: 'move',
    start: function() {
      isDraggable = true;
      ZIndex++;
      var CSSItem = { 'z-index' : ZIndex };
      $(this).css(CSSItem);
    },
    stop: function() {
      var RotateDeg = RandomNumber(300, 420);
      var CSSItem = { 'transform' : 'rotate('+ RotateDeg +'deg)' };
      $(this).css(CSSItem);
      isDraggable = false;
    }
  });
  
  function RandomNumber(MaxValue, MinValue) {
    return Math.round(Math.random() * (MaxValue - MinValue) + MinValue);
  }
});
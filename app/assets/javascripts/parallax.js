function updateBannerImagePosition() {
  var scrollTop = $(window).scrollTop();
  
  $('.para-image').each(function(idx, ele){
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    // var newTop = scrollTop - imageStart; here the pictures stay static 
    var newTop = .9*(scrollTop - imageStart); // here the pictures have a little move up effect
    $(ele).css('top', newTop);
  })
}

$(window).on('scroll', function() { 
  updateBannerImagePosition();
})
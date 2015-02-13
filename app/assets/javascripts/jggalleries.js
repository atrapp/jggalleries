window.Jggalleries = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Jggalleries.Router();
    Backbone.history.start();
  }
};


$(function(){

  // this preloads all the login/sign up/edit profile modals, they are getting fired
  // when the user clicks into the path
  $("#login_modal").click();
  $("#signup_modal").click();
  $("#edit_profile_modal").click();

  Jggalleries.initialize();

  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    if (scroll > 50 ) {
      $('.nav').addClass('shrink');
      $('.message-area').hide();
    };
    if (scroll <= 50 ) {
      $('.nav').removeClass('shrink');
      $('.message-area').show();
    };
  });

  var galleries = ['#gallery1','#gallery2','#gallery3','#gallery4'];
  var src = "";
  galleries.forEach(function(gallery) {
    $(gallery).hover(
    function(){
      $('img', this).css('opacity','0.3');
      $('h3', this).css('color','black');
      src = $('img', this).attr('src');
      console.log(src);
      $('#gallery-container img').attr('src',src);
    },
    function(){
      $('img', this).css('opacity','1');
      $('h3', this).css('color','white');
    });
  });





  // $("#gallery1").hover(
  //   function(){
  //     $('img', this).css('opacity','0.3');
  //     $('h2', this).css('color','black');
  //   },
  //   function(){
  //     $('img', this).css('opacity','1');
  //     $('h2', this).css('color','white');
  //   }
  // );

  // $("#gallery2").hover(
  //   function(){ $(this).css('opacity','0.3'); },
  //   function(){ $(this).css('opacity','1'); }
  // );
  // $("#gallery3").hover(
  //   function(){ $(this).css('opacity','0.3'); },
  //   function(){ $(this).css('opacity','1'); }
  // );
  // $("#gallery4").hover(
  //   function(){ $(this).css('opacity','0.3'); },
  //   function(){ $(this).css('opacity','1'); }
  // );

});
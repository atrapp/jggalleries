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

  $('#change_password_button').click(function(e){
    e.preventDefault();
    $('#password_section').show();
    $('#change_password_button').hide();
    $('#update_button').show();
  });

  $('.back_link').click(function() {
    window.history.back();
    return false;
  });

});
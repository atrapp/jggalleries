Jggalleries.Router = Backbone.Router.extend({

  routes : {
    ''          : 'home',
    'galleries' : 'galleries',
    'buy'       : 'buy',
    'about'     : 'about',
    'blog'      : 'blog',
    'contact'   : 'contact',
    'studio'    : 'studio',
  },

//   home: function(){
//       removeActiveClass();
//       $(".home-menu").addClass("active");
//       $("html, body").animate({ scrollTop: 0 }, "slow");
//   },

//   galleries: function(){
//       removeActiveClass();
//       $(".galleries-menu").addClass("active");
//       scrollToAnchor('galleries');
//   },

//   buy: function(){
//     removeActiveClass();
//     $(".buy-menu").addClass("active");
//     scrollToAnchor('buy');
//   },

//   about: function(){
//       removeActiveClass();
//       $(".about-menu").addClass("active");
//       scrollToAnchor('about');
//   },

//   blog: function(){
//       removeActiveClass();
//       $(".blog-menu").addClass("active");
//       scrollToAnchor('blog');
//   },

//   contact: function(){
//       removeActiveClass();
//       $(".contact-menu").addClass("active");
//       scrollToAnchor('contact');
//   },

//   studio: function(){
//     removeActiveClass();
//     $(".studio-menu").addClass("active");
//     scrollToAnchor('studio');
//   },

})

// function removeActiveClass(){
//   $(".galleries-menu").removeClass("active");
//   $(".buy-menu").removeClass("active");
//   $(".about-menu").removeClass("active");
//   $(".blog-menu").removeClass("active");
//   $(".contact-menu").removeClass("active");
//   $(".studio-menu").removeClass("active");
// }

// function scrollToAnchor(anchor){
//   var aTag = $("#"+ anchor +"-block");
//   $('html,body').animate({scrollTop: aTag.offset().top},'slow');
// }



Jggalleries.Router = Backbone.Router.extend({
 
  routes : {
    ''          : 'home',    
    'about'     : 'about',
    'jazz'      : 'jazz',
    'portfolio' : 'portfolio',
    'events'    : 'events',
    'blog'      : 'blog',
    'contact'   : 'contact'
  },

  home: function(){  
      removeActiveClass();
      $(".home-menu").addClass("active");     
      $("html, body").animate({ scrollTop: 0 }, "slow");
  },
 
  about: function(){   
      removeActiveClass();
      $(".about-menu").addClass("active");   
      scrollToAnchor('about');  
  },

  jazz: function(){  
      removeActiveClass();
      $(".jazz-menu").addClass("active");   
      scrollToAnchor('jazz');   
  },

  portfolio: function(){   
      removeActiveClass();
      $(".portfolio-menu").addClass("active");   
      scrollToAnchor('portfolio');   
  },

  events: function(){   
      removeActiveClass();
      $(".events-menu").addClass("active");   
      scrollToAnchor('events');    
  },

  blog: function(){   
      removeActiveClass();
      $(".blog-menu").addClass("active");   
      scrollToAnchor('blog');    
  },

  contact: function(){  
      removeActiveClass();
      $(".contact-menu").addClass("active");   
      scrollToAnchor('contact');   
  }

})
 
function removeActiveClass(){ 
  $(".about-menu").removeClass("active");
  $(".jazz-menu").removeClass("active");
  $(".portfolio-menu").removeClass("active");
  $(".events-menu").removeClass("active");
  $(".blog-menu").removeClass("active");
  $(".contact-menu").removeClass("active");
}

function scrollToAnchor(anchor){  
  var aTag = $("#"+ anchor +"-block");
  $('html,body').animate({scrollTop: aTag.offset().top},'slow');   
}



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

$(document).ready(function(){
  Jggalleries.initialize();
});


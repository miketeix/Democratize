// Generated by CoffeeScript 1.6.3
define(["backbone", "msgbus"], function(Backbone, msgBus) {
  var API;
  API = {
    getMenuItems: function() {
      return new Backbone.Collection([
        {
          name: "All",
          grouped: true
        }, {
          name: "Popular",
          grouped: true
        }, {
          name: "Random",
          grouped: true
        }, {
          name: "Newest",
          grouped: true
        }, {
          name: "Conservative",
          grouped: false
        }, {
          name: "Green",
          grouped: false
        }, {
          name: "Liberal",
          grouped: false
        }, {
          name: "NDP",
          grouped: false
        }, {
          name: "PQ",
          grouped: false
        }
      ]);
    }
  };
  return msgBus.reqres.setHandler("menu:entities", function() {
    return API.getMenuItems();
  });
});
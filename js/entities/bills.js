// Generated by CoffeeScript 1.6.3
define(["backbone", "msgbus"], function(Backbone, msgBus) {
  var API;
  API = {
    getBills: function() {
      return new Backbone.Collection([
        {
          name: "HOME",
          url: "#",
          title: "",
          cssClass: ""
        }, {
          name: "ABOUT",
          url: "#",
          title: "",
          cssClass: ""
        }, {
          name: "BILLS",
          url: "#",
          title: "",
          cssClass: ""
        }, {
          name: "DEMOCRATIZE",
          url: "#",
          title: "Democratize",
          cssClass: "",
          id: "logo"
        }, {
          name: "MP's",
          url: "#",
          title: "",
          cssClass: ""
        }, {
          name: "BLOG",
          url: "#",
          title: "",
          cssClass: ""
        }, {
          name: "FRANÇAIS",
          url: "#",
          title: "",
          cssClass: ""
        }
      ]);
    }
  };
  return msgBus.reqres.setHandler("bill:entities", function() {
    return API.getBills();
  });
});
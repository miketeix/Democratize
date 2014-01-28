// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define(["msgbus", "backbone.marionette", "backbone", "apps/bills/list/controller"], function(msgBus, Marionette, Backbone, ListController) {
  var API, Router, _ref;
  Router = (function(_super) {
    __extends(Router, _super);

    function Router() {
      _ref = Router.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Router.prototype.appRoutes = {
      "bills": "list"
    };

    return Router;

  })(Marionette.AppRouter);
  API = {
    list: function() {
      return new ListController({
        region: msgBus.reqres.request("main:region")
      });
    }
  };
  return msgBus.commands.setHandler("start:bills:app", function() {
    return API.list();
  });
});

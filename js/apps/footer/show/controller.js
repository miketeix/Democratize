// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define(["msgbus", "controller/_base", "apps/footer/show/views"], function(msgBus, AppController, View) {
  var Controller, _ref;
  return Controller = (function(_super) {
    __extends(Controller, _super);

    function Controller() {
      _ref = Controller.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Controller.prototype.initialize = function() {
      var footerView;
      footerView = this.getFooterView();
      return this.show(footerView);
    };

    Controller.prototype.getFooterView = function() {
      return new View.ItemView;
    };

    return Controller;

  })(AppController);
});

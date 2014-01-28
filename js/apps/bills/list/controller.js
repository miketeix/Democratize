// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define(["msgbus", "apps/bills/list/views", "controller/_base", "backbone"], function(msgBus, Views, AppController, Backbone) {
  var Controller, _ref;
  return Controller = (function(_super) {
    __extends(Controller, _super);

    function Controller() {
      _ref = Controller.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Controller.prototype.initialize = function(options) {
      var _this = this;
      if (options == null) {
        options = {};
      }
      this.entities = msgBus.reqres.request("bill:entities");
      this.layout = this.getLayoutView();
      this.listenTo(this.layout, "show", function() {
        return _this.slideRegion();
      });
      return this.show(this.layout);
    };

    Controller.prototype.getLayoutView = function() {
      return new Views.Layout;
    };

    Controller.prototype.slideRegion = function() {
      var sliderView;
      sliderView = this.getSliderView(this.entities);
      return this.layout.billsRegion.show(sliderView);
    };

    Controller.prototype.getSliderView = function(collection) {
      return new Views.SliderView({
        collection: collection
      });
    };

    return Controller;

  })(AppController);
});

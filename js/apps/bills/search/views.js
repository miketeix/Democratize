// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

define(['apps/bills/search/templates', 'views/_base', 'msgbus'], function(Templates, AppView, msgBus) {
  var InputView, MenuView, SearchLayout, ToggleView, _ref, _ref1, _ref2, _ref3;
  return {
    Layout: SearchLayout = (function(_super) {
      __extends(SearchLayout, _super);

      function SearchLayout() {
        _ref = SearchLayout.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      SearchLayout.prototype.template = Templates.layout;

      SearchLayout.prototype.regions = {
        inputRegion: "#input-region",
        menuRegion: "#menu-region",
        toggleRegion: "#toggle-region"
      };

      SearchLayout.prototype.events = {
        "click #tile-toggle": "tile"
      };

      SearchLayout.prototype.tile = function() {
        $("#tile-toggle span:first-child").toggleClass(function() {
          if ($(this).hasClass("glyphicon-th")) {
            return "glyphicon-stop";
          } else if ($(this).hasClass("glyphicon-stop")) {
            return "glyphicon-th";
          }
        });
        return this.trigger("toggle:tile:view");
      };

      return SearchLayout;

    })(AppView.Layout),
    InputView: InputView = (function(_super) {
      __extends(InputView, _super);

      function InputView() {
        _ref1 = InputView.__super__.constructor.apply(this, arguments);
        return _ref1;
      }

      InputView.prototype.template = Templates.input;

      return InputView;

    })(AppView.ItemView),
    MenuView: MenuView = (function(_super) {
      __extends(MenuView, _super);

      function MenuView() {
        _ref2 = MenuView.__super__.constructor.apply(this, arguments);
        return _ref2;
      }

      MenuView.prototype.template = Templates.menu;

      MenuView.prototype.events = {
        "click .dropdown-menu a": "filterBills"
      };

      MenuView.prototype.filterBills = function(event) {
        var data;
        data = $(event.target).data();
        return this.trigger("filter:bills", data);
      };

      return MenuView;

    })(AppView.ItemView),
    ToggleView: ToggleView = (function(_super) {
      __extends(ToggleView, _super);

      function ToggleView() {
        _ref3 = ToggleView.__super__.constructor.apply(this, arguments);
        return _ref3;
      }

      ToggleView.prototype.template = Templates.toggle;

      return ToggleView;

    })(AppView.ItemView)
  };
});

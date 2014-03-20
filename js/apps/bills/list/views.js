// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

define(['apps/bills/list/templates', 'views/_base', 'msgbus', 'royalslider', 'rs.autoheight'], function(Templates, AppView, msgBus, royalSlider, autoheight) {
  var BillsAppLayout, SlideItem, SliderView, TileItem, TileView, _ref, _ref1, _ref2, _ref3, _ref4;
  return {
    SlideItem: SlideItem = (function(_super) {
      __extends(SlideItem, _super);

      function SlideItem() {
        _ref = SlideItem.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      SlideItem.prototype.template = Templates.slideItem;

      return SlideItem;

    })(AppView.ItemView),
    TileItem: TileItem = (function(_super) {
      __extends(TileItem, _super);

      function TileItem() {
        _ref1 = TileItem.__super__.constructor.apply(this, arguments);
        return _ref1;
      }

      TileItem.prototype.template = Templates.tileItem;

      return TileItem;

    })(AppView.ItemView),
    SliderView: SliderView = (function(_super) {
      __extends(SliderView, _super);

      function SliderView() {
        this.onCompositeRendered = __bind(this.onCompositeRendered, this);
        _ref2 = SliderView.__super__.constructor.apply(this, arguments);
        return _ref2;
      }

      SliderView.prototype.template = Templates.slider;

      SliderView.prototype.itemView = SlideItem;

      SliderView.prototype.itemViewContainer = "#panes";

      SliderView.prototype.slider = null;

      SliderView.prototype.collectionEvents = {
        "reset": "collectionReset"
      };

      SliderView.prototype.onCompositeCollectionRendered = function() {
        console.log('onCompositeCollectionRendered');
        return this.slider = this.$itemViewContainer.royalSlider({
          autoHeight: true,
          keyboardNavEnabled: true,
          arrowsNav: false,
          navigateByClick: false,
          allowCSS3: false,
          controlNavigation: 'none'
        }).data('royalSlider');
      };

      SliderView.prototype.onCompositeRendered = function() {
        return console.log("onCompositeRendered");
      };

      SliderView.prototype.collectionReset = function() {
        return console.log("collection Reset");
      };

      return SliderView;

    })(AppView.CompositeView),
    TileView: TileView = (function(_super) {
      __extends(TileView, _super);

      function TileView() {
        _ref3 = TileView.__super__.constructor.apply(this, arguments);
        return _ref3;
      }

      TileView.prototype.template = Templates.tile;

      TileView.prototype.itemView = TileItem;

      TileView.prototype.itemViewContainer = "#tileitems";

      TileView.prototype.collectionEvents = {
        "reset": "collectionReset"
      };

      TileView.prototype.onCompositeCollectionRendered = function() {
        return console.log('onCompositeCollectionRendered');
      };

      TileView.prototype.collectionReset = function() {
        return console.log("collection Reset");
      };

      return TileView;

    })(AppView.CompositeView),
    Layout: BillsAppLayout = (function(_super) {
      __extends(BillsAppLayout, _super);

      function BillsAppLayout() {
        _ref4 = BillsAppLayout.__super__.constructor.apply(this, arguments);
        return _ref4;
      }

      BillsAppLayout.prototype.template = Templates.layout;

      BillsAppLayout.prototype.regions = {
        searchRegion: "#search-region",
        billsRegion: "#bills-region"
      };

      return BillsAppLayout;

    })(AppView.Layout)
  };
});

// Generated by CoffeeScript 1.3.1
(function() {
  var GenericWindow, Menu,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  GenericWindow = require('/ui/windows/generic');

  Menu = (function(_super) {

    __extends(Menu, _super);

    Menu.name = 'Menu';

    function Menu() {
      this.menu(um.get('menu'));
      this.win = Ti.UI.createWindow({
        title: this.menu.title
      }, backgroundColor(this.info.base_color));
    }

    return Menu;

  })(GenericWindow);

  module.exports = Menu;

}).call(this);

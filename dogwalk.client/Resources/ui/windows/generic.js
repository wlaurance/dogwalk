// Generated by CoffeeScript 1.3.1
(function() {
  var Generic, um;

  um = require('/utils/um');

  Generic = (function() {

    Generic.name = 'Generic';

    function Generic(childinfo) {
      this.info = um.get('Generic');
      this.win = Ti.UI.createWindow({
        title: childinfo.title,
        backgroundColor: this.info.base_color
      });
    }

    return Generic;

  })();

  module.exports = Generic;

}).call(this);

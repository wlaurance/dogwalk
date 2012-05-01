GenericWindow = require '/ui/windows/generic'
class Menu extends GenericWindow
  constructor:()->
    @menu um.get 'menu'
    @win = Ti.UI.createWindow
      title: @menu.title
      backgroundColor @info.base_color

module.exports = Menu

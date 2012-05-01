um = require '/utils/um'
class Generic
  constructor:(childinfo)->
    @info = um.get 'Generic'
    @win = Ti.UI.createWindow
      title: childinfo.title
      backgroundColor: @info.base_color

module.exports = Generic

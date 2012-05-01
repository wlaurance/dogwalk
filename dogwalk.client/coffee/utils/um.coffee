singleton = require '/utils/singleton'
class UtilityManager extends singleton
  constructor: () ->
    @filename = 'assetnest/appinfo.json'
    dir = Ti.Filesystem.getResourcesDirectory();
    file = Ti.Filesystem.getFile(dir, @filename);
    @hashmap = JSON.parse(file.read())
    @os = Ti.Platform.name

  getString: (key) ->
    a = @hashmap.strings[key]
    a

  getData: (where) ->
    if @hashmap[where]?
      data = @hashmap[where]
    else
      data = ""
      Ti.API.info where + " not defined in " + @filename
    data

  iphone: ->
    if @os == 'iPhone OS'
      true
    else
      false

  android: ->
    if @os == 'android'
      true
    else
      false

  fullscreen: ->
    if this.android
      false
    else if this.iphone
      true

  clone:(obj) ->
    if not obj? or typeof obj isnt 'object'
      return obj

    newInstance = new obj.constructor()

    for key of obj
      newInstance[key] = @clone obj[key]

    return newInstance

module.exports = UtilityManager.get()


{View} = require 'atom'

module.exports =
class LanguangeMaplView extends View
  @content: ->
    @div class: 'languange-mapl overlay from-top', =>
      @div "The LanguangeMapl package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "languange-mapl:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguangeMaplView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)

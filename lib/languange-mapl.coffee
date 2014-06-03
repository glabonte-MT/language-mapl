LanguangeMaplView = require './languange-mapl-view'

module.exports =
  languangeMaplView: null

  activate: (state) ->
    @languangeMaplView = new LanguangeMaplView(state.languangeMaplViewState)

  deactivate: ->
    @languangeMaplView.destroy()

  serialize: ->
    languangeMaplViewState: @languangeMaplView.serialize()

window.Backbone ||= {}
window.Backbone.Views ||= {}

class Backbone.Views.SpeciesRowView extends Backbone.View
  tagName: 'li'
  template: JST['species_row']

  initialize: (options) ->
    @model = options.model
    @listenTo(@model, 'change', @render)
    @render()

  render: =>
    @$el.html(@template(model: @model))

  onClose: ->

`import Ember from 'ember'`

RectangleCardComponent = Ember.Component.extend
  classNames: ['rectangle-card', "col", "s12", "m6", "l4"]
  fallbackPic: Ember.computed.alias "model.languagePic"
  cardPic: null
  cardPresentationComponent: Ember.computed "model.description", ->
    "md-card-content"

  didInsertElement: ->
    @$('img.hidden').one 'load', =>
      @set "cardPic", @get("model.screenshotPic")
  

`export default RectangleCardComponent`

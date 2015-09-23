`import Ember from 'ember'`
`import _ from 'lodash'`

Fallbacks = [
  "cantbehelped.jpg",
  "cantbehelped.png",
  "cantbehelped2.jpg",
  "cantbehelped2.png",
  "cantbehelped3.jpg", 
  "cantbehelped3.png",
  "cantbehelped4.jpg",
  "cantbehelped5.jpg"
]

ScreenshotIconsComponent = Ember.Component.extend
  classNames: ['screenshot-icons']
  attributeBindings: ['style']

  style: Ember.computed "src", ->
    "background-image: url(#{@get 'src'});"

  didInsertElement: ->
    fallbackSrc = _.sample Fallbacks
    @$('.hidden.image').one 'error', =>
      @set "mustUseFallbackPic", true
      @set "src", "images/#{fallbackSrc}"

`export default ScreenshotIconsComponent`

`import Ember from 'ember'`

FullPageComponent = Ember.Component.extend
  didInsertElement: ->
    @$().css "height", $("body").height()

`export default FullPageComponent`

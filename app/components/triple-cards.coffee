`import Ember from 'ember'`

TripleCardsComponent = Ember.Component.extend
  classNames: ['triple-cards']
  classNameBindings: ['isLeft', 'isRight', 'isMid']
  
  isLeft: Ember.computed "activeCard", ->
    @get("activeCard") is "left"
  
  isRight: Ember.computed "activeCard", ->
    @get("activeCard") is "right"
  
  isMid: Ember.computed "isLeft", "isRight", ->
    not ( @get("isLeft") or @get("isRight") )

  


`export default TripleCardsComponent`

`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

TripleCardsComponent = Ember.Component.extend
  classNames: ['triple-cards']
  classNameBindings: ['isLeft', 'isRight', 'isMid']
  
  isLeft: FunEx.computed "activeCard", ->
    @get("activeCard") is "left"
  
  isRight: FunEx.computed "activeCard", ->
    @get("activeCard") is "right"
  
  isMid: FunEx.computed "isLeft", "isRight", ->
    not ( @get("isLeft") or @get("isRight") )

  


`export default TripleCardsComponent`

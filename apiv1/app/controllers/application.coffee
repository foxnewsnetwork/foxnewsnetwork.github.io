`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

ApplicationController = Ember.Controller.extend
  activeCard: FunEx.computed "currentPath", ->
    return "left" if @get("currentPath").match /about/
    return "right" if @get("currentPath").match /contact/
    

`export default ApplicationController`

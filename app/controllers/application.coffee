`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  activeCard: Ember.computed "currentPath", ->
    return "left" if @get("currentPath").match /about/
    return "right" if @get("currentPath").match /contact/
    

`export default ApplicationController`

`import Ember from 'ember'`

WorksRoute = Ember.Route.extend
  model: ->
    @store.find "repo", 
      sort: "updated"
      direction: "desc"
      type: "owner"

`export default WorksRoute`

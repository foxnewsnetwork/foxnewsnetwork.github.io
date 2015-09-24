`import Ember from 'ember'`

WorksRunningPortfolioRoute = Ember.Route.extend
  model: ->
    @store.find "repo", 
      sort: "updated"
      direction: "desc"
      type: "owner"

`export default WorksRunningPortfolioRoute`
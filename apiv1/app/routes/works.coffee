`import Ember from 'ember'`

WorksRoute = Ember.Route.extend
  renderTemplate: ->
    @render "works",
      into: "application"
    @render "works/top",
      into: "application"
      outlet: "top-nav"

`export default WorksRoute`

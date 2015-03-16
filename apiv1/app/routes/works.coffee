`import Ember from 'ember'`

WorksRoute = Ember.Route.extend
  model: ->
    @store.find "repo", sort: "updated", direction: "desc", type: "owner"
  renderTemplate: ->
    @render "works",
      into: "application"
    @render "works/top",
      into: "application"
      outlet: "top-nav"

  actions:
    willTransition: ->
      $("body.ember-application").removeClass "works-parallax"
    didTransition: ->
      $("body.ember-application").addClass "works-parallax"

`export default WorksRoute`

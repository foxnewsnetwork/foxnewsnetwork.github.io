`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  renderTemplate: ->
    @render "index",
      into: "application"
    @render "index/left",
      into: "application"
      outlet: "left-nav"
    @render "index/right",
      into: "application"
      outlet: "right-nav"
    @render "index/bot",
      into: "application"
      outlet: "bot-nav"

`export default IndexRoute`

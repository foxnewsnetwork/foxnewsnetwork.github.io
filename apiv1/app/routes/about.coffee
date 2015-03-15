`import Ember from 'ember'`

AboutRoute = Ember.Route.extend
  renderTemplate: ->
    @render "about",
      into: "application"
    @render "about/nav",
      into: "application"
      outlet: "right-nav"

`export default AboutRoute`

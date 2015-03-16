`import Ember from 'ember'`

AboutRoute = Ember.Route.extend
  renderTemplate: ->
    @render "about",
      into: "application"
    @render "about/nav",
      into: "application"
      outlet: "right-nav"

  actions:
    willTransition: ->
      $("body.ember-application").removeClass "about-parallax"
    didTransition: ->
      $("body.ember-application").addClass "about-parallax"

`export default AboutRoute`

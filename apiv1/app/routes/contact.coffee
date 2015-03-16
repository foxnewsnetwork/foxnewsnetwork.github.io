`import Ember from 'ember'`

ContactRoute = Ember.Route.extend
  renderTemplate: ->
    @render "contact",
      into: "application"
    @render "contact/nav",
      into: "application"
      outlet: "left-nav"

  actions:
    willTransition: ->
      $("body.ember-application").removeClass "contact-parallax"
    didTransition: ->
      $("body.ember-application").addClass "contact-parallax"

`export default ContactRoute`

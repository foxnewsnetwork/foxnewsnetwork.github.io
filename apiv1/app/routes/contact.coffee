`import Ember from 'ember'`

ContactRoute = Ember.Route.extend
  renderTemplate: ->
    @render "contact",
      into: "application"
    @render "contact/nav",
      into: "application"
      outlet: "left-nav"


`export default ContactRoute`

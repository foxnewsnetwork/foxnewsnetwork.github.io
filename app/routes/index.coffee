`import Ember from 'ember'`

About =
  background: "assets/images/about.png"
  target: "about"
  title: "about me"
  description: "programmer, designer, systems architect"
Portfolio =
  background: "assets/images/portfolio.jpg"
  target: "works.index"
  title: "my works"
  description: "running portfolio from my github"
Contact =
  background: "assets/images/contact.jpg"
  target: "contact"
  title: "contact"
  description: "hire me for something!"
Service =
  background: "assets/images/quote.png"
  target: "services"
  title: "service quote"
  description: "my price quote for common web-related jobs"

IndexRoute = Ember.Route.extend
  model: ->
    [About, Portfolio, Contact, Service]

`export default IndexRoute`

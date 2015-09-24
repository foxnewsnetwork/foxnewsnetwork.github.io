`import Ember from 'ember'`

About =
  background: "assets/images/about.png"
  target: "about"
  title: "About me"
  description: "Programmer, designer, systems architect"
Showcase =
  background: "assets/images/portfolio.jpg"
  target: "works.index"
  title: "Showcase"
  description: "Showcase of my current active projects"
Portfolio =
  background: "assets/images/portfolio-2.jpg"
  target: "works.running-portfolio"
  title: "Portfolio"
  description: "My running portfolio of day-to-day work"
Contact =
  background: "assets/images/contact.jpg"
  target: "contact"
  title: "contact"
  description: "Hire me for something!"

IndexRoute = Ember.Route.extend
  model: ->
    [About, Showcase, Portfolio, Contact]

`export default IndexRoute`

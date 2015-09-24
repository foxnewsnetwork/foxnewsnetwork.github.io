`import Ember from 'ember'`

Pisources =
  title: "Pisources SimWMS"
  summary: "Cloud-based warehouse management software"
  description: """
  Warehouse management is an old business with a ton of old companies doing business in old ways.
  Fraught with desktop app installs, opaque pricing, unclear functionality, and no consideration
  for user experience, tradition WMS was in high need for improvement.

  SimWMS does by delivering a purely js-based cloud solution with clear prices, game-like functionality,
  and maximum focus on fun user experience to turn formerly boring software into something not just profitable
  but also fun.
  """
  status: "early alpha"
  siteLink: "https://pisources.com"
  background: "assets/images/warehouse.jpg"

MLRecycle =
  title: "ML Recycling Inc."
  summary: "A dynamic purely front-end corporate website running off of tumblr"
  description: """
  For startups who aren't making money, even the $20/month it costs to run EC2 on AWS or a linode
  is too much. ML Recycling is website built on EmberJS with a custom tumblr api adapter which means,
  even if everything goes wrong and the business folds, the company website would still maintain most
  of its functionality free of cost.
  """
  status: "ok"
  siteLink: "https://mlrecycling.github.io"
  background: "assets/images/mlr.png"

Fox =
  title: "Fox"
  summary: "ActiveSupport for elixir, fox is a utility belt of functions for productivity"
  description: """
  For a Ruby on Rails or JavaScript developer jumping onboard the EVM with Elixir means abandoning
  all the automagic that made programming not painful. Fox is Elixir's answer to Ruby's ActiveSupport,
  and JavaScript's lodash / underscore. Fox ships with functions for string inflection, atom inference, etc.
  """
  status: "ok"
  siteLink: "https://hex.pm/packages/fox"
  background: "assets/images/fox.png"

Lacekei =
  title: "Lacekei"
  summary: "Free to run e-Commerce trading platform on EmberJS"
  description: """
  21st century e-Commerce, especially niche commerce, is usually plagued by run time server costs.
  Lacekei attempts to resolve this buy off-loading all state logic onto the browser front end with javascript,
  that way, back-end servers can be run completely stateless (and therefore qualify for free-tier plans).
  """
  status: "under construction"
  siteLink: "https://lacekei.github.io"
  background: "assets/images/under_construction.jpg"

ShowcaseRoute = Ember.Route.extend
  model: ->
    Ember.A [Pisources, MLRecycle, Fox, Lacekei]

`export default ShowcaseRoute`
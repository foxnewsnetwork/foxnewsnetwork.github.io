# Takes two parameters: container and app
initialize = (ctn, app) ->
  app.inject "component:li-link-to", "router", "router:main"

LiLinkToInitializer =
  name: 'li-link-to'
  initialize: initialize

`export {initialize}`
`export default LiLinkToInitializer`

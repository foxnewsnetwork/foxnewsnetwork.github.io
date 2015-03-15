# Takes two parameters: container and app
initialize = (ctn, app) ->
  

LocationInitializer =
  name: 'location'
  initialize: initialize

`export {initialize}`
`export default LocationInitializer`

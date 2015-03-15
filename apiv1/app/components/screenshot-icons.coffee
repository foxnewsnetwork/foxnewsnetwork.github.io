`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

ScreenshotIconsComponent = Ember.Component.extend
  classNames: ['screenshot-icons']
  attributeBindings: ['style']

  style: FunEx.computed "src", ->
    "background-image: url(#{@get 'src'});"

`export default ScreenshotIconsComponent`

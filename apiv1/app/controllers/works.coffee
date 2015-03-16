`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

isMdScreenSize = ->
  768 <= window.innerWidth && window.innerWidth <= 992

WorksController = Ember.Controller.extend
  queryParams: ["page"]
  page: 1
  perPage: if isMdScreenSize() then 4 else 6

  pages: FunEx.computed "model.@each", "perPage", ->
    Math.ceil @get("model.length") / @perPage

  pageCounts: FunEx.computed "pages", ->
    [1..@get("pages")]

  cards: FunEx.computed "model.@each", "page", "perPage", ->
    return unless @get("model")?
    start = @perPage * ( @get("page") - 1)
    finish = start + @perPage
    
    @get("model")[start...finish]

`export default WorksController`

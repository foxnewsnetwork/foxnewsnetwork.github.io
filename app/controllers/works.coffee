`import Ember from 'ember'`

# isMdScreenSize = ->
#   768 <= window.innerWidth && window.innerWidth <= 992

WorksController = Ember.Controller.extend()
# queryParams: ["page"]
# page: 1
# perPage: if isMdScreenSize() then 4 else 6

# pages: Ember.computed "model.@each", "perPage", ->
#   Math.ceil @get("model.length") / @perPage

# pageCounts: Ember.computed "pages", ->
#   [1..@get("pages")]

# cards: Ember.computed "model.@each", "page", "perPage", ->
#   return unless @get("model")?
#   start = @perPage * ( @get("page") - 1)
#   finish = start + @perPage
  
#   @get("model")[start...finish]

`export default WorksController`

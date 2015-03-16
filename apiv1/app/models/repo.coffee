`import FunEx from '../utils/fun-ex'`
`import DS from 'ember-data'`

Repo = DS.Model.extend
  name: DS.attr "string"
  fullName: DS.attr "string"
  description: DS.attr "string"
  htmlUrl: DS.attr "string"
  homepage: DS.attr "string"
  updatedAt: DS.attr "date"
  language: DS.attr "string"

  tagIcons: FunEx.computed "language", ->
    return ["ruby", "javascript", @get("language")] if @get("language")?
    ["ruby", "javascript"]

  languagePics: FunEx.computed "tagIcons.@each", ->
    @get("tagIcons").map (src) -> className: src.toLowerCase(), src: "images/#{src}.png"

  screenshotPic: FunEx.computed "htmlUrl", ->
    "https://raw.githubusercontent.com/#{@get("fullName")}/master/screenshot.png"

  lastActive: FunEx.computed "updatedAt", ->
    return "never" unless @get("updatedAt")?
    $.timeago @get "updatedAt"

  outboundLink: FunEx.computed "homepage", "htmlUrl", ->
    @get("homepage") or @get("htmlUrl")
`export default Repo`

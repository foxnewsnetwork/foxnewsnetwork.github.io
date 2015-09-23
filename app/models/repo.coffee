`import DS from 'ember-data'`
`import moment from 'moment'`

Repo = DS.Model.extend
  name: DS.attr "string"
  fullName: DS.attr "string"
  description: DS.attr "string"
  htmlUrl: DS.attr "string"
  homepage: DS.attr "string"
  updatedAt: DS.attr "date"
  language: DS.attr "string"

  languagePic: Ember.computed "language", ->
    l = Ember.String.decamelize @get "language"
    "assets/images/#{l}.png"

  screenshotPic: Ember.computed "htmlUrl", ->
    "https://raw.githubusercontent.com/#{@get("fullName")}/master/screenshot.png"

  lastActive: Ember.computed "updatedAt", ->
    return "never" unless @get("updatedAt")?
    moment @get "updatedAt"
    .fromNow()

  outboundLink: Ember.computed "homepage", "htmlUrl", ->
    @get("homepage") or @get("htmlUrl")

  sampleLink: Ember.computed "name", ->
    "https://foxnewsnetwork.github.io/#{@get "name"}"
`export default Repo`

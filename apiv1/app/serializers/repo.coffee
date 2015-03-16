`import Ember from 'ember'`
`import DS from 'ember-data'`

map = _.map
get = Ember.get
pluralize = Ember.String.pluralize

RepoSerializer = DS.ActiveModelSerializer.extend
  extractSingle: (store, type, payload) ->
    @normalize type, payload
  extractArray: (store, type, payloads) ->
    map payloads, (payload, id) => @normalize type, payload

`export default RepoSerializer`

`import Ember from 'ember'`
`import {ActiveModelSerializer} from 'active-model-adapter'`

get = Ember.get
pluralize = Ember.String.pluralize

RepoSerializer = ActiveModelSerializer.extend
  extractSingle: (store, type, payload) ->
    @normalize type, payload
  extractArray: (store, type, payloads) ->
    Ember.A(payloads).map (payload, id) => @normalize type, payload

`export default RepoSerializer`

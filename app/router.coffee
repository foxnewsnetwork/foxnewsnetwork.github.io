`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "works", path: "/works", ->
    @route "running-portfolio"
  @resource "contact", path: "/contact", ->
  @resource "about", path: "/about", ->

`export default Router`

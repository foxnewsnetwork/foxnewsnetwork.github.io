`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "works", path: "/works", ->
  @resource "contact", path: "/contact", ->
  @resource "writings", path: "/writings", ->
  @resource "services", path: "/services", ->
  @resource "about", path: "/about", ->

`export default Router`

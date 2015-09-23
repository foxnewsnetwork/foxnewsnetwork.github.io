`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'site-nav', 'Integration | Component | site nav', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{site-nav}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#site-nav}}
      template block text
    {{/site-nav}}
  """

  assert.equal @$().text().trim(), 'template block text'

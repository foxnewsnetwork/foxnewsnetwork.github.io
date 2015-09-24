`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'site-footer', 'Integration | Component | site footer', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{site-footer}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#site-footer}}
      template block text
    {{/site-footer}}
  """

  assert.equal @$().text().trim(), 'template block text'

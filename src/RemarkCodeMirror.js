const React = require("react");
const githubSchema = require('hast-util-sanitize/lib/github.json');
const CodeMirror = require('codemirror');
require('codemirror/mode/meta');
require('codemirror/addon/runmode/runmode');
require('codemirror/mode/javascript/javascript');
require('codemirror/theme/solarized.css');
const Highlighter = require('react-codemirror-runmode');

const schema = Object.assign({}, githubSchema, {
  attributes: Object.assign({}, githubSchema.attributes, {
    code: [
      ...(githubSchema.attributes.code || []),
      'className'
    ]
  })
})

// Copied over and modified from:

// https://github.com/craftzdog/remark-react-codemirror/blob/1d1632dedb4d97304c8458c145faed920bb85820/src/index.js#L7-L21

// We need more null checks to ensure snippets like:

// `blah`

// doesn't break since they lead to code blocks without
// class names
class RemarkCodeMirror extends React.Component {
  render() {
    const { className = "", children = [] } = this.props;
    const language = className.split('-')[1] || ''
    const value = children[0] || ''
    const props = { value, inline: true, language, theme: 'solarized', codeMirror: CodeMirror }

    return React.createElement(Highlighter, props);
  }
}

module.exports = {
  sanitize: schema,
  remarkReactComponents: {
    code: RemarkCodeMirror
  }
}

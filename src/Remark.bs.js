// Generated by BUCKLESCRIPT VERSION 4.0.5, PLEASE EDIT WITH CARE
'use strict';

var Remark = require("remark");
var Codemirror = require("codemirror");
var RemarkParse = require("remark-parse");
var RemarkReact = require("remark-react");
var Meta = require("codemirror/mode/meta");
var RemarkReactCodemirror = require("remark-react-codemirror");
var MonokaiCss = require("codemirror/theme/monokai.css");
var Runmode = require("codemirror/addon/runmode/runmode");
var Javascript = require("codemirror/mode/javascript/javascript");

var remark = Remark();

var RemarkEngine = /* module */[/* remark */remark];

var RemarkPlugin = /* module */[];

var RemarkParsePlugin = /* module */[];

var opts = {
  sanitize: undefined,
  remarkReactComponents: {
    code: RemarkReactCodemirror(Codemirror, {
          theme: "monokai"
        })
  }
};

var RemarkCodeMirrorOptions = /* module */[/* opts */opts];

var RemarkReactPlugin = /* module */[];

var _renderer = remark.use(RemarkParse).use(RemarkReact, opts);

function render(markdown) {
  return _renderer.processSync(markdown).contents;
}

console.log("--\n\n schema: ", opts);

exports.RemarkEngine = RemarkEngine;
exports.RemarkPlugin = RemarkPlugin;
exports.RemarkParsePlugin = RemarkParsePlugin;
exports.RemarkCodeMirrorOptions = RemarkCodeMirrorOptions;
exports.RemarkReactPlugin = RemarkReactPlugin;
exports._renderer = _renderer;
exports.render = render;
/* remark Not a pure module */
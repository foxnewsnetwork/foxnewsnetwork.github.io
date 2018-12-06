type t;

type plugin;

[@bs.module]
external remark : unit => t = "remark";

[@bs.send]
external use_ : t => plugin => t = "use";

[@bs.deriving abstract]
type syncResult = pri {
  contents: ReasonReact.reactElement
};

[@bs.send]
external processSync : t => string => syncResult = "processSync";

[@bs.module]
external parsePlugin : plugin = "remark-parse";

module RemarkCodeMirror = {
  [@bs.module]
  external _meta : unit = "codemirror/mode/meta";
  let _ = _meta;
  [@bs.module]
  external _runmode : unit = "codemirror/addon/runmode/runmode";
  let _ = _runmode;
  [@bs.module]
  external _javascript : unit = "codemirror/mode/javascript/javascript";
  let _ = _javascript;

  type t;

  [@bs.module]
  external engine : t = "codemirror";

  [@bs.module]
  external plugin : plugin = "remark-react-codemirror";
};

[@bs.module]
external highlightStyle : unit = "codemirror/theme/monokai.css";
let _ = highlightStyle;

/* the html plugin seems to conflict with the react-plugin */
/* [@bs.module]
external htmlPlugin : plugin = "remark-html"; */

[@bs.module]
external reactPlugin : plugin = "remark-react";

let _renderer = remark()
  -> use_(parsePlugin)
  -> use_(highlightPlugin)
  -> use_(reactPlugin)
  /* -> use_(htmlPlugin) */

let render: string => ReasonReact.reactElement = (markdown) => _renderer
  -> processSync(markdown)
  -> contentsGet

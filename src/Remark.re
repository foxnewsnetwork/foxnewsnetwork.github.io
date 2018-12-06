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

[@bs.module]
external highlightPlugin : plugin = "remark-highlight.js";

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

module RemarkEngine = {
  type t;

  [@bs.deriving abstract]
  type syncResult = pri {contents: ReasonReact.reactElement};

  [@bs.module] external remark: unit => t = "remark";

  [@bs.send] external processSync: (t, string) => syncResult = "processSync";
};

module RemarkPlugin = {
  type t;

  type opts;

  [@bs.send] external use_: (RemarkEngine.t, t) => RemarkEngine.t = "use";

  [@bs.send]
  external useWithOpts: (RemarkEngine.t, t, opts) => RemarkEngine.t = "use";
};

module RemarkParsePlugin = {
  [@bs.module] external plugin: RemarkPlugin.t = "remark-parse";
};

module RemarkReactPlugin = {
  [@bs.module] external plugin: RemarkPlugin.t = "remark-react";

  [@bs.module] external opts: RemarkPlugin.opts = "./RemarkCodeMirror";
};

let _renderer =
  RemarkEngine.remark()
  ->RemarkPlugin.use_(RemarkParsePlugin.plugin)
  ->RemarkPlugin.useWithOpts(
      RemarkReactPlugin.plugin,
      RemarkReactPlugin.opts,
    );

let render: string => ReasonReact.reactElement =
  markdown =>
    _renderer->RemarkEngine.processSync(markdown)->RemarkEngine.contentsGet;

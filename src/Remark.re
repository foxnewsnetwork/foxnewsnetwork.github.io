module RemarkEngine = {
  type t;

  [@bs.deriving abstract]
  type syncResult = pri {
    contents: ReasonReact.reactElement
  };

  [@bs.module]
  external _remark : unit => t = "remark";

  let remark = _remark();

  [@bs.send]
  external processSync : t => string => syncResult = "processSync";
};

module RemarkPlugin = {
  type t;

  [@bs.send]
  external use_ : RemarkEngine.t => t => RemarkEngine.t = "use";

  [@bs.send]
  external useWithOpts : RemarkEngine.t => t => 'opts => RemarkEngine.t = "use";
};

module RemarkParsePlugin = {
  [@bs.module]
  external plugin : RemarkPlugin.t = "remark-parse";
};


module RemarkCodeMirrorOptions = {
  /* https://github.com/craftzdog/remark-react-codemirror */
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
  external codemirror : t = "codemirror";

  [@bs.deriving abstract]
  type lightopts = {
    theme: string
  };

  type highlighter;

  [@bs.module]
  external plugin : (t, lightopts) => highlighter = "remark-react-codemirror";

  [@bs.module]
  external _style : unit = "codemirror/theme/monokai.css";
  let _ = _style;

  [@bs.deriving abstract]
  type remarkReactComponents = {
    code: highlighter
  };

  [@bs.deriving abstract]
  type pluginOpts = {
    sanitize: option(HastUtilsSanitize.schema),
    [@bs.as "remarkReactComponents"]
    remarkReactComponents_: remarkReactComponents,
  };
  let opts = pluginOpts(
    /* ~sanitize=HastUtilsSanitize.sanitizeGhSchema, */
    ~sanitize=None,
    ~remarkReactComponents_=remarkReactComponents(
      ~code=plugin(codemirror, lightopts(
          ~theme="monokai"
        )
      )
    )
  );
};

module RemarkReactPlugin = {
  [@bs.module]
  external plugin : RemarkPlugin.t = "remark-react";
};

let _renderer = RemarkEngine.remark
    -> RemarkPlugin.use_(RemarkParsePlugin.plugin)
    -> RemarkPlugin.useWithOpts(RemarkReactPlugin.plugin, RemarkCodeMirrorOptions.opts)

let render: string => ReasonReact.reactElement = (markdown) => _renderer
  -> RemarkEngine.processSync(markdown)
  -> RemarkEngine.contentsGet

Js.log2("--\n\n schema: ", RemarkCodeMirrorOptions.opts)

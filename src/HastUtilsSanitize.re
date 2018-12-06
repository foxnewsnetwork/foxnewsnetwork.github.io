/* See example usage at:
https://github.com/craftzdog/remark-react-codemirror#usage */

[@bs.deriving abstract]
type attributes = {
  code: array(string)
};

[@bs.deriving abstract]
type schema = {
  [@bs.as "attributes"]
  attributes_: attributes
};

[@bs.module]
external _sanitizeGhSchema : schema = "hast-util-sanitize/lib/github.json";


[@bs.val]
[@bs.scope "Object"]
external assign : (
  [@bs.as {json|{ }|json}] _,
  'a,
  Js.t('b)
) => 'a = "assign";

let attributeLens = Rationale.Lens.make(
  attributes_Get,
  (attributes, sch) => assign(sch, [%obj { attributes: attributes }])
);

let codeLens = Rationale.Lens.make(
  codeGet,
  (code, attr) => assign(attr, [%obj { code: code }])
);

let sanitizeGhSchema = Rationale.Lens.(
  over(
    attributeLens >>- codeLens,
    (_code) => [|"className"|],
    _sanitizeGhSchema
  )
);

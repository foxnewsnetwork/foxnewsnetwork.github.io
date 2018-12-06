/* This is the basic component. */
let component = ReasonReact.statelessComponent("Markdown");

let make = (~content, _children) => {
  ...component,
  render: _self =>
    <div className="markdown">
      { Utils.thruLog("Remark contents: ", Remark.render(content)) }
    </div>
};

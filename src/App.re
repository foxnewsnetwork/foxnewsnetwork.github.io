[@bs.module]
external blog : string = "./blogs/2018-12-5-hello-world.md";

[@bs.module]
external style : unit = "./App.css";
let _ = style;

ReactDOMRe.renderToElementWithId(<Markdown content={blog} />, "main");

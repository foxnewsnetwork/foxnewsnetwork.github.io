[@bs.module]
external blog : string = "./blogs/2018-12-5-hello-world.md";

ReactDOMRe.renderToElementWithId(<Markdown content={blog} />, "main");

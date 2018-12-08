[@bs.module] external blog: string = "./blogs/2018-12-5-hello-world.md";

[@bs.module] external style: unit = "./App.css";
let _ = style;

[@bs.module]
external _bootstrapGrid: unit = "bootstrap/dist/css/bootstrap-grid.css";
let _ = _bootstrapGrid;

[@bs.module]
external _bootstrapReboot: unit = "bootstrap/dist/css/bootstrap-reboot.css";
let _ = _bootstrapReboot;

[@bs.module] external _bootstrap: unit = "bootstrap/dist/css/bootstrap.css";
let _ = _bootstrap;

ReactDOMRe.renderToElementWithId(<Markdown content=blog />, "main");

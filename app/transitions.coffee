`import { animate, stop } from "liquid-fire"`

transitionMap = ->
  @transition @fromRoute("index"), @toRoute("about"), @use("toRight"), @reverse("toLeft")
  @transition @fromRoute("about"), @toRoute("contact"), @use("toLeft"), @reverse("toRight")
  @transition @fromRoute("contact"), @toRoute("index"), @use("toRight"), @reverse("toLeft")

  @transition @fromRoute("index"), @toRoute("works"), @use("toUp"), @reverse("toDown")
  @transition @fromRoute("works"), @toRoute("writings"), @use("toDown"), @reverse("toUp")
  @transition @fromRoute("writings"), @toRoute("index"), @use("toUp"), @reverse("toDown")

`export default transitionMap`
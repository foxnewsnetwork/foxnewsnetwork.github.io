`import { animate, stop } from "liquid-fire"`

transitionMap = ->
  @transition @fromRoute("index"), @toRoute("about"), @use("toDown"), @reverse("toUp")
  @transition @fromRoute("index"), @toRoute("works"), @use("toDown"), @reverse("toUp")
  @transition @fromRoute("index"), @toRoute("contact"), @use("toDown"), @reverse("toUp")
  @transition @fromRoute("index"), @toRoute("services"), @use("toDown"), @reverse("toUp")

  @transition @fromRoute("works"), @toRoute("contact"), @use("toRight"), @reverse("toLeft")
  @transition @fromRoute("works"), @toRoute("about"), @use("toLeft"), @reverse("toRight")
  @transition @fromRoute("works"), @toRoute("services"), @use("toRight"), @reverse("toLeft")

  @transition @fromRoute("contact"), @toRoute("about"), @use("toLeft"), @reverse("toRight")
  @transition @fromRoute("contact"), @toRoute("services"), @use("toRight"), @reverse("toLeft")
  
  @transition @fromRoute("about"), @toRoute("services"), @use("toRight"), @reverse("toLeft")

  @transition @fromRoute("works.index"), @toRoute("works.running-portfolio"), @use("crossFade"), @reverse("crossFade")
  @transition @fromRoute("works.loading"), @toRoute("works.running-portfolio"), @use("crossFade"), @reverse("crossFade")
`export default transitionMap`
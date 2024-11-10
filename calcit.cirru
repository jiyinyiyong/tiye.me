
{} (:package |app)
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |card-width $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627057354005) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627057354005) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1627057354005) (:by |rJG4IHzWf) (:text |card-width)
              |r $ %{} :Expr (:at 1627057354005) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627057358989) (:by |rJG4IHzWf) (:text |js/Math.min)
                  |j $ %{} :Leaf (:at 1672155728450) (:by |rJG4IHzWf) (:text |480)
                  |r $ %{} :Expr (:at 1627057363880) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627057371081) (:by |rJG4IHzWf) (:text |-)
                      |j $ %{} :Leaf (:at 1627057374809) (:by |rJG4IHzWf) (:text |js/window.innerWidth)
                      |r $ %{} :Leaf (:at 1651556368851) (:by |rJG4IHzWf) (:text |24)
        |comp-avatar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627048501140) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |comp-avatar)
              |n $ %{} :Expr (:at 1627048502514) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627048617638) (:by |rJG4IHzWf) (:text |on-home)
              |r $ %{} :Expr (:at 1627048506312) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1627048508110) (:by |rJG4IHzWf) (:text |[])
                  |L $ %{} :Expr (:at 1627048516101) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627048514631) (:by |rJG4IHzWf) (:text |effect-bump)
                  |T $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546971284) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |css-avatar)
                          |r $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |:on-click)
                              |j $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |fn)
                                  |j $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |e)
                                      |j $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |d!)
                                  |r $ %{} :Expr (:at 1627048498616) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |on-home)
                                      |j $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |nil)
                                      |r $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |:home)
                                      |v $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |d!)
                      |n $ %{} :Expr (:at 1651554288867) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651554289288) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1651554290247) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554290635) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1651554291871) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651554295672) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651554299777) (:by |rJG4IHzWf) (:text |css-avatar-outline)
        |comp-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627047616001) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627047617283) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1627047616001) (:by |rJG4IHzWf) (:text |comp-card)
              |r $ %{} :Expr (:at 1627047616001) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627047623090) (:by |rJG4IHzWf) (:text |idx)
                  |j $ %{} :Leaf (:at 1627047629531) (:by |rJG4IHzWf) (:text |key)
                  |r $ %{} :Leaf (:at 1627047653066) (:by |rJG4IHzWf) (:text |on-open)
                  |v $ %{} :Leaf (:at 1627047656145) (:by |rJG4IHzWf) (:text |on-close)
              |v $ %{} :Expr (:at 1627047677758) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1627047679559) (:by |rJG4IHzWf) (:text |[])
                  |L $ %{} :Expr (:at 1627047679844) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627047682778) (:by |rJG4IHzWf) (:text |effect-fading)
                  |T $ %{} :Expr (:at 1627047647373) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1627047648711) (:by |rJG4IHzWf) (:text |let)
                      |L $ %{} :Expr (:at 1627047649109) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Expr (:at 1627047649109) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047649109) (:by |rJG4IHzWf) (:text |info)
                              |j $ %{} :Expr (:at 1627047649109) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047649109) (:by |rJG4IHzWf) (:text |get)
                                  |j $ %{} :Leaf (:at 1627047649109) (:by |rJG4IHzWf) (:text |site-map)
                                  |r $ %{} :Leaf (:at 1627047649109) (:by |rJG4IHzWf) (:text |key)
                      |T $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1651548451409) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548454457) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651548458036) (:by |rJG4IHzWf) (:text |css-card)
                              |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627058036767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627058037178) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627058037834) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627058037834) (:by |rJG4IHzWf) (:text |:left)
                                          |j $ %{} :Expr (:at 1627058037834) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627058037834) (:by |rJG4IHzWf) (:text |*)
                                              |j $ %{} :Expr (:at 1627058037834) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627058037834) (:by |rJG4IHzWf) (:text |+)
                                                  |j $ %{} :Leaf (:at 1627058037834) (:by |rJG4IHzWf) (:text |card-width)
                                                  |r $ %{} :Leaf (:at 1651555662070) (:by |rJG4IHzWf) (:text |12)
                                              |r $ %{} :Leaf (:at 1627058037834) (:by |rJG4IHzWf) (:text |idx)
                                      |n $ %{} :Expr (:at 1627058053222) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627058735851) (:by |rJG4IHzWf) (:text |:height)
                                          |j $ %{} :Leaf (:at 1672155687520) (:by |rJG4IHzWf) (:text |640)
                                      |r $ %{} :Expr (:at 1627058046147) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627058046147) (:by |rJG4IHzWf) (:text |:top)
                                          |j $ %{} :Leaf (:at 1672155715504) (:by |rJG4IHzWf) (:text |-320)
                                      |v $ %{} :Expr (:at 1627058059683) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627058059683) (:by |rJG4IHzWf) (:text |:width)
                                          |j $ %{} :Leaf (:at 1627058059683) (:by |rJG4IHzWf) (:text |card-width)
                          |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |div)
                              |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:style)
                                      |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |merge)
                                          |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |ui/row-parted)
                                          |n $ %{} :Expr (:at 1651554783673) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651554784227) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1651554784562) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651554785718) (:by |rJG4IHzWf) (:text |:position)
                                                  |b $ %{} :Leaf (:at 1651554789592) (:by |rJG4IHzWf) (:text |:absolute)
                                              |h $ %{} :Expr (:at 1651554797070) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651554798256) (:by |rJG4IHzWf) (:text |:top)
                                                  |b $ %{} :Leaf (:at 1651554798742) (:by |rJG4IHzWf) (:text |0)
                                              |j $ %{} :Expr (:at 1651554797070) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651557311596) (:by |rJG4IHzWf) (:text |:left)
                                                  |b $ %{} :Leaf (:at 1651554798742) (:by |rJG4IHzWf) (:text |0)
                                              |l $ %{} :Expr (:at 1651554799282) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651554800299) (:by |rJG4IHzWf) (:text |:width)
                                                  |b $ %{} :Leaf (:at 1651554801905) (:by |rJG4IHzWf) (:text "|\"100%")
                                              |m $ %{} :Expr (:at 1651555894534) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651555896324) (:by |rJG4IHzWf) (:text |:padding)
                                                  |b $ %{} :Leaf (:at 1651557329759) (:by |rJG4IHzWf) (:text "|\"4px")
                                              |o $ %{} :Expr (:at 1651554840053) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651554840053) (:by |rJG4IHzWf) (:text |:backdrop-filter)
                                                  |b $ %{} :Leaf (:at 1651555021874) (:by |rJG4IHzWf) (:text "|\"blur(2px)")
                              |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |span)
                                  |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text "|\"show-on-hover")
                                      |n $ %{} :Expr (:at 1651555841555) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651555843100) (:by |rJG4IHzWf) (:text |:style)
                                          |b $ %{} :Expr (:at 1651555846750) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651555849455) (:by |rJG4IHzWf) (:text |{})
                                              |X $ %{} :Expr (:at 1651555850231) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651555856413) (:by |rJG4IHzWf) (:text |:line-height)
                                                  |b $ %{} :Leaf (:at 1651555858290) (:by |rJG4IHzWf) (:text "|\"20px")
                                              |e $ %{} :Expr (:at 1651555850231) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651555886968) (:by |rJG4IHzWf) (:text |:height)
                                                  |b $ %{} :Leaf (:at 1651555858290) (:by |rJG4IHzWf) (:text "|\"20px")
                                      |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:title)
                                          |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text "|\"Command + Click to close all")
                                  |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |comp-icon)
                                      |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:x)
                                      |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                                          |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:color)
                                              |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |0)
                                                  |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |0)
                                                  |v $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |0)
                                          |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:font-size)
                                              |j $ %{} :Leaf (:at 1627057754976) (:by |rJG4IHzWf) (:text |20)
                                          |v $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:cursor)
                                              |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:pointer)
                                      |v $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |fn)
                                          |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |e)
                                              |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |d!)
                                          |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |let)
                                              |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |all?)
                                                      |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |or)
                                                          |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |->)
                                                              |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |e)
                                                              |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:event)
                                                              |v $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |.-metaKey)
                                                          |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |->)
                                                              |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |e)
                                                              |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:event)
                                                              |v $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |.-ctrlKey)
                                              |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |on-close)
                                                  |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |idx)
                                                  |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |all?)
                                                  |v $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |d!)
                              |v $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |<>)
                                  |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:title)
                                      |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |info)
                                  |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |ui/font-fancy)
                                      |n $ %{} :Expr (:at 1627058537444) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627058539457) (:by |rJG4IHzWf) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1627058540165) (:by |rJG4IHzWf) (:text |14)
                                      |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:font-weight)
                                          |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |300)
                                      |v $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |:color)
                                          |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |0)
                                              |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |0)
                                              |v $ %{} :Leaf (:at 1627059797339) (:by |rJG4IHzWf) (:text |60)
                              |x $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |span)
                                  |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1651556685013) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651556687002) (:by |rJG4IHzWf) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1651556690194) (:by |rJG4IHzWf) (:text "|\"right-corner")
                                      |h $ %{} :Expr (:at 1651556811038) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651556812786) (:by |rJG4IHzWf) (:text |:inner-text)
                                          |b $ %{} :Leaf (:at 1651556813402) (:by |rJG4IHzWf) (:text "|\" ")
                          |t $ %{} :Expr (:at 1627058271879) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627058273371) (:by |rJG4IHzWf) (:text |=<)
                              |j $ %{} :Leaf (:at 1627058274408) (:by |rJG4IHzWf) (:text |nil)
                              |r $ %{} :Leaf (:at 1627058280920) (:by |rJG4IHzWf) (:text |8)
                          |v $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |if)
                              |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |nil?)
                                  |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |info)
                              |r $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |<>)
                                  |j $ %{} :Expr (:at 1627047618405) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |str)
                                      |j $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text "|\"Unknown data: ")
                                      |r $ %{} :Leaf (:at 1627047618405) (:by |rJG4IHzWf) (:text |key)
                              |v $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |div)
                                  |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627059770353) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627059772233) (:by |rJG4IHzWf) (:text |:style)
                                          |j $ %{} :Expr (:at 1627109796878) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1627109797751) (:by |rJG4IHzWf) (:text |merge)
                                              |L $ %{} :Leaf (:at 1627109800969) (:by |rJG4IHzWf) (:text |ui/expand)
                                              |T $ %{} :Expr (:at 1627059772510) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627059775112) (:by |rJG4IHzWf) (:text |{})
                                                  |j $ %{} :Expr (:at 1627059775429) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1627059776751) (:by |rJG4IHzWf) (:text |:padding)
                                                      |j $ %{} :Leaf (:at 1663315504395) (:by |rJG4IHzWf) (:text "|\"0 12px")
                                                  |r $ %{} :Expr (:at 1627109784307) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1627109784307) (:by |rJG4IHzWf) (:text |:overflow)
                                                      |j $ %{} :Leaf (:at 1627109784307) (:by |rJG4IHzWf) (:text |:auto)
                                  |n $ %{} :Expr (:at 1651554934196) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651554937792) (:by |rJG4IHzWf) (:text |=<)
                                      |b $ %{} :Leaf (:at 1651554938980) (:by |rJG4IHzWf) (:text |nil)
                                      |h $ %{} :Leaf (:at 1651554939941) (:by |rJG4IHzWf) (:text |48)
                                  |r $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |&)
                                  |v $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |->)
                                      |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |info)
                                      |r $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |get)
                                          |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |:content)
                                      |v $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |map)
                                          |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |fn)
                                              |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |directive)
                                              |r $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |if)
                                                  |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695663707557) (:by |rJG4IHzWf) (:text |tuple?)
                                                      |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |directive)
                                                  |r $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |render-content)
                                                      |h $ %{} :Leaf (:at 1695663733075) (:by |rJG4IHzWf) (:text |directive)
                                                      |v $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |fn)
                                                          |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |key)
                                                              |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |d!)
                                                          |r $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |on-open)
                                                              |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |idx)
                                                              |r $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |key)
                                                              |v $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |d!)
                                                  |v $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |<>)
                                                      |j $ %{} :Expr (:at 1627048371339) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |str)
                                                          |j $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text "|\"Unknown ")
                                                          |r $ %{} :Leaf (:at 1627048371339) (:by |rJG4IHzWf) (:text |directive)
                                  |x $ %{} :Expr (:at 1627109810030) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627109810030) (:by |rJG4IHzWf) (:text |=<)
                                      |j $ %{} :Leaf (:at 1627109810030) (:by |rJG4IHzWf) (:text |nil)
                                      |r $ %{} :Leaf (:at 1627109810030) (:by |rJG4IHzWf) (:text |120)
        |comp-cards $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627026601038) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627026603102) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1627026601038) (:by |rJG4IHzWf) (:text |comp-cards)
              |r $ %{} :Expr (:at 1627026601038) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627027497498) (:by |rJG4IHzWf) (:text |router)
                  |b $ %{} :Leaf (:at 1627027623742) (:by |rJG4IHzWf) (:text |on-open)
                  |j $ %{} :Leaf (:at 1627027499116) (:by |rJG4IHzWf) (:text |on-close)
              |v $ %{} :Expr (:at 1627026604514) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627035503278) (:by |rJG4IHzWf) (:text |list->)
                  |j $ %{} :Expr (:at 1627026608316) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627026608739) (:by |rJG4IHzWf) (:text |{})
                      |j $ %{} :Expr (:at 1627026609041) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026611855) (:by |rJG4IHzWf) (:text |:style)
                          |j $ %{} :Expr (:at 1627027544271) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627027545025) (:by |rJG4IHzWf) (:text |merge)
                              |L $ %{} :Leaf (:at 1627027545850) (:by |rJG4IHzWf) (:text |ui/row)
                              |T $ %{} :Expr (:at 1627027539565) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627027539874) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1627032444580) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627032447132) (:by |rJG4IHzWf) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1627034625249) (:by |rJG4IHzWf) (:text "|\"auto 0")
                                  |r $ %{} :Expr (:at 1627047376059) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047378491) (:by |rJG4IHzWf) (:text |:width)
                                      |j $ %{} :Expr (:at 1627047402575) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047404883) (:by |rJG4IHzWf) (:text |*)
                                          |j $ %{} :Expr (:at 1627047421580) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |5 $ %{} :Leaf (:at 1627047462168) (:by |rJG4IHzWf) (:text |+)
                                              |D $ %{} :Leaf (:at 1627057450857) (:by |rJG4IHzWf) (:text |card-width)
                                              |L $ %{} :Leaf (:at 1627047424292) (:by |rJG4IHzWf) (:text |4)
                                          |r $ %{} :Expr (:at 1627047415557) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627047417669) (:by |rJG4IHzWf) (:text |count)
                                              |j $ %{} :Leaf (:at 1627047418544) (:by |rJG4IHzWf) (:text |router)
                                  |t $ %{} :Expr (:at 1627047454741) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047457054) (:by |rJG4IHzWf) (:text |:position)
                                      |j $ %{} :Leaf (:at 1627047458531) (:by |rJG4IHzWf) (:text |:relative)
                                  |v $ %{} :Expr (:at 1627047380325) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047386103) (:by |rJG4IHzWf) (:text |:transition-duration)
                                      |j $ %{} :Leaf (:at 1627057973952) (:by |rJG4IHzWf) (:text "|\"300ms")
                                  |x $ %{} :Expr (:at 1627047388426) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047393110) (:by |rJG4IHzWf) (:text |:transition-property)
                                      |j $ %{} :Leaf (:at 1627047396116) (:by |rJG4IHzWf) (:text |:width)
                                  |y $ %{} :Expr (:at 1676027878376) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676027878376) (:by |rJG4IHzWf) (:text |:pointer-events)
                                      |b $ %{} :Leaf (:at 1676027912220) (:by |rJG4IHzWf) (:text |:auto)
                  |v $ %{} :Expr (:at 1627027503248) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627027503921) (:by |rJG4IHzWf) (:text |->)
                      |j $ %{} :Leaf (:at 1627027506558) (:by |rJG4IHzWf) (:text |router)
                      |r $ %{} :Expr (:at 1627027506933) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627027508955) (:by |rJG4IHzWf) (:text |map-indexed)
                          |j $ %{} :Expr (:at 1627027509414) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627027509778) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1627027510099) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627027510591) (:by |rJG4IHzWf) (:text |idx)
                                  |j $ %{} :Leaf (:at 1627027518336) (:by |rJG4IHzWf) (:text |key)
                              |r $ %{} :Expr (:at 1627035510209) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1627035510835) (:by |rJG4IHzWf) (:text |[])
                                  |L $ %{} :Leaf (:at 1627035516008) (:by |rJG4IHzWf) (:text |key)
                                  |f $ %{} :Expr (:at 1627047611167) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047613098) (:by |rJG4IHzWf) (:text |comp-card)
                                      |j $ %{} :Leaf (:at 1627047625770) (:by |rJG4IHzWf) (:text |idx)
                                      |r $ %{} :Leaf (:at 1627047626443) (:by |rJG4IHzWf) (:text |key)
                                      |v $ %{} :Leaf (:at 1627047662389) (:by |rJG4IHzWf) (:text |on-open)
                                      |x $ %{} :Leaf (:at 1627047663677) (:by |rJG4IHzWf) (:text |on-close)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defcomp)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at nil) (:by nil) (:text |let)
                  |L $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |:store)
                              |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |states)
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |:states)
                              |j $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                      |x $ %{} :Expr (:at 1627026476308) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026476972) (:by |rJG4IHzWf) (:text |router)
                          |j $ %{} :Expr (:at 1627026477570) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627026478459) (:by |rJG4IHzWf) (:text |:router)
                              |j $ %{} :Leaf (:at 1651560412273) (:by |rJG4IHzWf) (:text |store)
                      |y $ %{} :Expr (:at 1627026481671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026544366) (:by |rJG4IHzWf) (:text |push-tab)
                          |j $ %{} :Expr (:at 1627026498096) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627026498360) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1627026498687) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1627033273533) (:by |rJG4IHzWf) (:text |idx)
                                  |T $ %{} :Leaf (:at 1627026499403) (:by |rJG4IHzWf) (:text |x)
                                  |j $ %{} :Leaf (:at 1627026570098) (:by |rJG4IHzWf) (:text |d!)
                              |r $ %{} :Expr (:at 1627026499754) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627026502533) (:by |rJG4IHzWf) (:text |d!)
                                  |n $ %{} :Expr (:at 1651560429456) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689093967003) (:by |rJG4IHzWf) (:text |::)
                                      |L $ %{} :Leaf (:at 1689093968928) (:by |rJG4IHzWf) (:text |:push-page)
                                      |T $ %{} :Leaf (:at 1651560429054) (:by |rJG4IHzWf) (:text |idx)
                                      |b $ %{} :Leaf (:at 1651560431632) (:by |rJG4IHzWf) (:text |x)
                      |yT $ %{} :Expr (:at 1627026526741) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026542725) (:by |rJG4IHzWf) (:text |close-tab)
                          |j $ %{} :Expr (:at 1627026545491) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627026546381) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1627026546634) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627026547137) (:by |rJG4IHzWf) (:text |idx)
                                  |b $ %{} :Leaf (:at 1627035134091) (:by |rJG4IHzWf) (:text |all?)
                                  |j $ %{} :Leaf (:at 1627026572343) (:by |rJG4IHzWf) (:text |d!)
                              |n $ %{} :Expr (:at 1651560435977) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651560436599) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1651560439633) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093991278) (:by |rJG4IHzWf) (:text |::)
                                      |X $ %{} :Leaf (:at 1689093991737) (:by |rJG4IHzWf) (:text |:close-page)
                                      |b $ %{} :Leaf (:at 1651560443657) (:by |rJG4IHzWf) (:text |all?)
                                      |h $ %{} :Leaf (:at 1651560444638) (:by |rJG4IHzWf) (:text |idx)
                  |T $ %{} :Expr (:at 1651547378717) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651547379319) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1651547379521) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651547379866) (:by |rJG4IHzWf) (:text |{})
                      |P $ %{} :Expr (:at 1651547380693) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651547380693) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1651547380693) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651547380693) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1651547380693) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547380693) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651547380693) (:by |rJG4IHzWf) (:text |css-bg)
                          |h $ %{} :Expr (:at 1676027726673) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1676027740712) (:by |rJG4IHzWf) (:text |create-element)
                              |T $ %{} :Leaf (:at 1676027740131) (:by |rJG4IHzWf) (:text |:iframe)
                              |b $ %{} :Expr (:at 1676027741756) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676027742033) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1676027756558) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676027758550) (:by |rJG4IHzWf) (:text |:src)
                                      |b $ %{} :Expr (:at 1680026065398) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1680026067537) (:by |rJG4IHzWf) (:text |if)
                                          |L $ %{} :Expr (:at 1680026070505) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1680026071244) (:by |rJG4IHzWf) (:text |some?)
                                              |b $ %{} :Leaf (:at 1680026077258) (:by |rJG4IHzWf) (:text |js/navigator.gpu)
                                          |P $ %{} :Leaf (:at 1731263891822) (:by |rJG4IHzWf) (:text "|\"https://webgpu.art/soluble/?tab=rhombic-mirror")
                                          |T $ %{} :Leaf (:at 1680026066796) (:by |rJG4IHzWf) (:text "|\"https://r.tiye.me/Triadica/sapium/")
                                  |h $ %{} :Expr (:at 1676027768664) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676027773937) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1676027778743) (:by |rJG4IHzWf) (:text |css-iframe)
                      |T $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |div)
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                              |j $ %{} :Expr (:at nil) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651546920422) (:by |rJG4IHzWf) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1702824398616) (:by |rJG4IHzWf) (:text |style-container)
                          |k $ %{} :Expr (:at 1651548859586) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651548859586) (:by |rJG4IHzWf) (:text |comp-empty)
                              |X $ %{} :Expr (:at 1651548958155) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548958155) (:by |rJG4IHzWf) (:text |empty?)
                                  |b $ %{} :Leaf (:at 1651548958155) (:by |rJG4IHzWf) (:text |router)
                              |b $ %{} :Leaf (:at 1651548859586) (:by |rJG4IHzWf) (:text |push-tab)
                          |m $ %{} :Expr (:at 1627048388266) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627048388266) (:by |rJG4IHzWf) (:text |comp-cards)
                              |j $ %{} :Leaf (:at 1627048388266) (:by |rJG4IHzWf) (:text |router)
                              |r $ %{} :Leaf (:at 1627048388266) (:by |rJG4IHzWf) (:text |push-tab)
                              |v $ %{} :Leaf (:at 1627048388266) (:by |rJG4IHzWf) (:text |close-tab)
                          |x $ %{} :Expr (:at 1521954055333) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at nil) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |comp-reel)
                                  |b $ %{} :Expr (:at 1587315760465) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1587315761146) (:by |rJG4IHzWf) (:text |>>)
                                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |states)
                                      |j $ %{} :Leaf (:at 1587315761844) (:by |rJG4IHzWf) (:text |:reel)
                                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
                                  |r $ %{} :Expr (:at nil) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
        |comp-empty $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627026629562) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627026630960) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1627026629562) (:by |rJG4IHzWf) (:text |comp-empty)
              |r $ %{} :Expr (:at 1627026629562) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651548963968) (:by |rJG4IHzWf) (:text |visible?)
                  |T $ %{} :Leaf (:at 1627027267623) (:by |rJG4IHzWf) (:text |on-home)
              |v $ %{} :Expr (:at 1627026632348) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627026635237) (:by |rJG4IHzWf) (:text |div)
                  |j $ %{} :Expr (:at 1627026635480) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627026635769) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1651559707081) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651559708714) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1651559717575) (:by |rJG4IHzWf) (:text |css-profile)
                      |j $ %{} :Expr (:at 1627032426651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627032428750) (:by |rJG4IHzWf) (:text |:style)
                          |j $ %{} :Expr (:at 1651548972063) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651548972505) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Leaf (:at 1651548972943) (:by |rJG4IHzWf) (:text |visible?)
                              |h $ %{} :Expr (:at 1651548973658) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548973971) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1651548974290) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651548975995) (:by |rJG4IHzWf) (:text |:opacity)
                                      |b $ %{} :Leaf (:at 1651549023220) (:by |rJG4IHzWf) (:text |1)
                                  |h $ %{} :Expr (:at 1651558014470) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651558014470) (:by |rJG4IHzWf) (:text |:transform)
                                      |b $ %{} :Leaf (:at 1651558016320) (:by |rJG4IHzWf) (:text "|\"translate(0,0px)")
                  |r $ %{} :Expr (:at 1627026859301) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1627026859881) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1627026860079) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026860365) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1627026860599) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627026861314) (:by |rJG4IHzWf) (:text |:style)
                              |j $ %{} :Expr (:at 1676027958609) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1676027959494) (:by |rJG4IHzWf) (:text |merge)
                                  |T $ %{} :Leaf (:at 1627026866058) (:by |rJG4IHzWf) (:text |ui/center)
                                  |b $ %{} :Expr (:at 1676027960963) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1676027961585) (:by |rJG4IHzWf) (:text |{})
                                      |T $ %{} :Expr (:at 1676027960201) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676027960201) (:by |rJG4IHzWf) (:text |:pointer-events)
                                          |b $ %{} :Leaf (:at 1676027960201) (:by |rJG4IHzWf) (:text |:auto)
                      |T $ %{} :Expr (:at 1627048504638) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627048498616) (:by |rJG4IHzWf) (:text |comp-avatar)
                          |j $ %{} :Leaf (:at 1627048620613) (:by |rJG4IHzWf) (:text |on-home)
                  |t $ %{} :Expr (:at 1627026869742) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627026870304) (:by |rJG4IHzWf) (:text |=<)
                      |j $ %{} :Leaf (:at 1651548932874) (:by |rJG4IHzWf) (:text |nil)
                      |r $ %{} :Leaf (:at 1651555950604) (:by |rJG4IHzWf) (:text |32)
                  |v $ %{} :Expr (:at 1627026642690) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1627026643298) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1627026643524) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026643810) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1627026806818) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627026808476) (:by |rJG4IHzWf) (:text |:style)
                              |j $ %{} :Expr (:at 1627026814642) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1627026816196) (:by |rJG4IHzWf) (:text |merge)
                                  |T $ %{} :Leaf (:at 1627026809590) (:by |rJG4IHzWf) (:text |ui/center)
                                  |j $ %{} :Expr (:at 1627026816606) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627026816893) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627026817137) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627026818588) (:by |rJG4IHzWf) (:text |:color)
                                          |j $ %{} :Leaf (:at 1627026821283) (:by |rJG4IHzWf) (:text |:white)
                                      |r $ %{} :Expr (:at 1627026823792) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627026825210) (:by |rJG4IHzWf) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1651555942509) (:by |rJG4IHzWf) (:text |20)
                                      |v $ %{} :Expr (:at 1627026877368) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627026879602) (:by |rJG4IHzWf) (:text |:line-height)
                                          |j $ %{} :Leaf (:at 1627027239558) (:by |rJG4IHzWf) (:text "|\"28px")
                                      |x $ %{} :Expr (:at 1627027189179) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627027191949) (:by |rJG4IHzWf) (:text |:text-shadow)
                                          |j $ %{} :Leaf (:at 1627027222336) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px black")
                      |T $ %{} :Expr (:at 1627026639840) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627026640370) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Leaf (:at 1627026801851) (:by |rJG4IHzWf) (:text "|\"题叶")
        |css-avatar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651546961588) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |css-avatar)
              |h $ %{} :Expr (:at 1651546962734) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651546963243) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1651546964099) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651546967425) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:background-image)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text "|\"url(https://cdn.tiye.me/logo/tiye.jpg)")
                          |h $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:background-size)
                              |b $ %{} :Leaf (:at 1651557530476) (:by |rJG4IHzWf) (:text "|\"120px 120px")
                          |l $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |120)
                          |o $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |120)
                          |q $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text "|\"50%")
                          |t $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651547984900) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651547986620) (:by |rJG4IHzWf) (:text |str)
                                  |L $ %{} :Leaf (:at 1651548000760) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px ")
                                  |P $ %{} :Expr (:at 1651548001448) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651548001832) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651548005173) (:by |rJG4IHzWf) (:text |120)
                                      |h $ %{} :Leaf (:at 1651548005847) (:by |rJG4IHzWf) (:text |80)
                                      |l $ %{} :Leaf (:at 1651548019284) (:by |rJG4IHzWf) (:text |50)
                                  |T $ %{} :Leaf (:at 1651552647110) (:by |rJG4IHzWf) (:text "|\",1px 1px 4px black")
                          |u $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text "|\"300ms")
                          |v $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:transition-timing-function)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text "|\"cubic-bezier(0.54, 0.17, 0.53, 1.88)")
                          |w $ %{} :Expr (:at 1651546959885) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1651546959885) (:by |rJG4IHzWf) (:text |:pointer)
                          |x $ %{} :Expr (:at 1651552594355) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651552595700) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1651552596999) (:by |rJG4IHzWf) (:text |:relative)
                          |y $ %{} :Expr (:at 1651557606344) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651557613028) (:by |rJG4IHzWf) (:text |:background-position)
                              |b $ %{} :Leaf (:at 1651557614534) (:by |rJG4IHzWf) (:text |:center)
                  |b $ %{} :Expr (:at 1651547915057) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651547921606) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1651547922415) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651547924209) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1651547924567) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651547927055) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651547928357) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547929906) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1651548027807) (:by |rJG4IHzWf) (:text "|\"1px 1px 6px ")
                                  |h $ %{} :Expr (:at 1651547937687) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651547938155) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651547940032) (:by |rJG4IHzWf) (:text |120)
                                      |h $ %{} :Leaf (:at 1651548034868) (:by |rJG4IHzWf) (:text |90)
                                      |l $ %{} :Leaf (:at 1651547941984) (:by |rJG4IHzWf) (:text |80)
                          |h $ %{} :Expr (:at 1651552175633) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651552175633) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1651552177584) (:by |rJG4IHzWf) (:text "|\"scale(1.04)")
                  |h $ %{} :Expr (:at 1651547915057) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651548089740) (:by |rJG4IHzWf) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1651547922415) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651547924209) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1651547924567) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651547927055) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651547928357) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547929906) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1651548095287) (:by |rJG4IHzWf) (:text "|\"1px 1px 20px ")
                                  |h $ %{} :Expr (:at 1651547937687) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651547938155) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651547940032) (:by |rJG4IHzWf) (:text |120)
                                      |h $ %{} :Leaf (:at 1651548034868) (:by |rJG4IHzWf) (:text |90)
                                      |l $ %{} :Leaf (:at 1651548097174) (:by |rJG4IHzWf) (:text |90)
                          |h $ %{} :Expr (:at 1651548103418) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651548105710) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1651549138663) (:by |rJG4IHzWf) (:text "|\"scale(1.08)")
                          |l $ %{} :Expr (:at 1651549129863) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651549134077) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1651549166982) (:by |rJG4IHzWf) (:text "|\"100ms")
                          |o $ %{} :Expr (:at 1651557578610) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651557584817) (:by |rJG4IHzWf) (:text |:animation-name)
                              |b $ %{} :Leaf (:at 1651557587273) (:by |rJG4IHzWf) (:text "|\"breathing")
                          |q $ %{} :Expr (:at 1651557588968) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651557592447) (:by |rJG4IHzWf) (:text |:animation-duration)
                              |b $ %{} :Leaf (:at 1651557711720) (:by |rJG4IHzWf) (:text "|\"4s")
                          |s $ %{} :Expr (:at 1651557649890) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651557675160) (:by |rJG4IHzWf) (:text |:animation-iteration-count)
                              |b $ %{} :Leaf (:at 1651557656740) (:by |rJG4IHzWf) (:text |:infinite)
                  |l $ %{} :Expr (:at 1651554385013) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1651554386037) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651557763342) (:by |rJG4IHzWf) (:text |str)
                          |b $ %{} :Leaf (:at 1651557766226) (:by |rJG4IHzWf) (:text "|\"$0:hover .")
                          |h $ %{} :Leaf (:at 1651554397180) (:by |rJG4IHzWf) (:text |css-avatar-outline)
                      |b $ %{} :Expr (:at 1651554406559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651554409350) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1651554409733) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554413432) (:by |rJG4IHzWf) (:text |:border-color)
                              |b $ %{} :Expr (:at 1651554413753) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651554414216) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651554415077) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1651554415784) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1651554416608) (:by |rJG4IHzWf) (:text |100)
                                  |o $ %{} :Leaf (:at 1651557827886) (:by |rJG4IHzWf) (:text |0.8)
                  |o $ %{} :Expr (:at 1651554385013) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1651554386037) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651557761696) (:by |rJG4IHzWf) (:text |str)
                          |b $ %{} :Leaf (:at 1651557768911) (:by |rJG4IHzWf) (:text "|\"$0:active .")
                          |h $ %{} :Leaf (:at 1651554397180) (:by |rJG4IHzWf) (:text |css-avatar-outline)
                      |b $ %{} :Expr (:at 1651554406559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651554409350) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1651554409733) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651557830276) (:by |rJG4IHzWf) (:text |:border-width)
                              |b $ %{} :Leaf (:at 1651558039133) (:by |rJG4IHzWf) (:text "|\"5px")
        |css-avatar-outline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651554301713) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651554303229) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651554301713) (:by |rJG4IHzWf) (:text |css-avatar-outline)
              |h $ %{} :Expr (:at 1651554304635) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651554305287) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1651554305674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651554307402) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text |{})
                          |h $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text |:absolute)
                          |l $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text "|\"100%")
                          |m $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554315379) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text "|\"100%")
                          |n $ %{} :Expr (:at 1651554342843) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554346901) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1651554350425) (:by |rJG4IHzWf) (:text "|\"50%")
                          |o $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651554303916) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Expr (:at 1651554303916) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651554563447) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |h $ %{} :Leaf (:at 1651554511025) (:by |rJG4IHzWf) (:text "|\"5px solid")
                                  |l $ %{} :Expr (:at 1651554358997) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651554359508) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651554359822) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1651554360318) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1651554363220) (:by |rJG4IHzWf) (:text |100)
                                      |o $ %{} :Leaf (:at 1651554366856) (:by |rJG4IHzWf) (:text |0.9)
        |css-bg $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651547146112) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651547148810) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651547146112) (:by |rJG4IHzWf) (:text |css-bg)
              |h $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |ui/global)
                          |h $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |ui/fullscreen)
                          |l $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |:background-image)
                                  |b $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text "|\"url(https://r.tiye.me/tiye/logo/leaf.jpg)")
                              |h $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |:background-size)
                                  |b $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text "|\"cover")
                              |l $ %{} :Expr (:at 1651547149749) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |:background-position)
                                  |b $ %{} :Leaf (:at 1651547149749) (:by |rJG4IHzWf) (:text |:center)
                              |o $ %{} :Expr (:at 1651547164213) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547165472) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Leaf (:at 1651547168039) (:by |rJG4IHzWf) (:text |:fixed)
                              |q $ %{} :Expr (:at 1651547168957) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547170411) (:by |rJG4IHzWf) (:text |:top)
                                  |b $ %{} :Leaf (:at 1651547170724) (:by |rJG4IHzWf) (:text |0)
                              |s $ %{} :Expr (:at 1651547171521) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547172856) (:by |rJG4IHzWf) (:text |:left)
                                  |b $ %{} :Leaf (:at 1651547173149) (:by |rJG4IHzWf) (:text |0)
                              |t $ %{} :Expr (:at 1651547174859) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547176889) (:by |rJG4IHzWf) (:text |:width)
                                  |b $ %{} :Leaf (:at 1651547179230) (:by |rJG4IHzWf) (:text "|\"100%")
                              |u $ %{} :Expr (:at 1651547174859) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547182374) (:by |rJG4IHzWf) (:text |:height)
                                  |b $ %{} :Leaf (:at 1651547179230) (:by |rJG4IHzWf) (:text "|\"100%")
                              |v $ %{} :Expr (:at 1651547219625) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547221811) (:by |rJG4IHzWf) (:text |:z-index)
                                  |b $ %{} :Leaf (:at 1651547222486) (:by |rJG4IHzWf) (:text |-1)
                              |w $ %{} :Expr (:at 1651547233215) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547234898) (:by |rJG4IHzWf) (:text |:opacity)
                                  |b $ %{} :Leaf (:at 1651547245035) (:by |rJG4IHzWf) (:text |0.7)
                              |x $ %{} :Expr (:at 1669822382086) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669822383289) (:by |rJG4IHzWf) (:text |:filter)
                                  |b $ %{} :Leaf (:at 1669822390127) (:by |rJG4IHzWf) (:text "|\"grayscale(0.5)")
        |css-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651548458701) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651548460223) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651548458701) (:by |rJG4IHzWf) (:text |css-card)
              |h $ %{} :Expr (:at 1651548458701) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651548461561) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1651548462660) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651548464214) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1651548491493) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1651548493302) (:by |rJG4IHzWf) (:text |merge)
                          |L $ %{} :Leaf (:at 1651548493806) (:by |rJG4IHzWf) (:text |ui/column)
                          |T $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |{})
                              |h $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1651554885354) (:by |rJG4IHzWf) (:text "|\"4px")
                              |l $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:box-shadow)
                                  |b $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px black")
                              |o $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text "|\"2px")
                              |q $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:border)
                                  |b $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text "|\"2px solid white")
                              |s $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:margin-right)
                                  |b $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |4)
                              |t $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:transition-duration)
                                  |b $ %{} :Leaf (:at 1651555377022) (:by |rJG4IHzWf) (:text "|\"300ms")
                              |u $ %{} :Expr (:at 1651548482326) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Leaf (:at 1651548482326) (:by |rJG4IHzWf) (:text |:absolute)
                              |v $ %{} :Expr (:at 1651548501631) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651548503849) (:by |rJG4IHzWf) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1651548531427) (:by |rJG4IHzWf) (:text "|\"6px")
                              |w $ %{} :Expr (:at 1651555313330) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651555316103) (:by |rJG4IHzWf) (:text |:transform-origin)
                                  |b $ %{} :Leaf (:at 1651555485575) (:by |rJG4IHzWf) (:text "|\"-10% 33.3%")
                              |wT $ %{} :Expr (:at 1651557176749) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651557178854) (:by |rJG4IHzWf) (:text |:box-shadow)
                                  |b $ %{} :Expr (:at 1651557183163) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651557184039) (:by |rJG4IHzWf) (:text |str)
                                      |T $ %{} :Leaf (:at 1651557215284) (:by |rJG4IHzWf) (:text "|\"0 0 10px 4px ")
                                      |b $ %{} :Expr (:at 1651557184831) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651557185222) (:by |rJG4IHzWf) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1651557221212) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1651557222625) (:by |rJG4IHzWf) (:text |60)
                                          |l $ %{} :Leaf (:at 1651557186300) (:by |rJG4IHzWf) (:text |90)
                                          |o $ %{} :Leaf (:at 1651557273842) (:by |rJG4IHzWf) (:text |0.3)
                              |x $ %{} :Expr (:at 1651557174705) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1651557174705) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |100)
                                      |o $ %{} :Leaf (:at 1651557174705) (:by |rJG4IHzWf) (:text |0.96)
        |css-iframe $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1676027779903) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1676027781040) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1676027779903) (:by |rJG4IHzWf) (:text |css-iframe)
              |h $ %{} :Expr (:at 1676027797182) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1676027797901) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1676027798275) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1676027799738) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1676027779903) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1676027782674) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1676027786859) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1676027787843) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1676027791229) (:by |rJG4IHzWf) (:text "|\"100%")
                          |h $ %{} :Expr (:at 1676027796001) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1676027794146) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1676027795422) (:by |rJG4IHzWf) (:text "|\"100%")
        |css-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651559718092) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651559720890) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651559718092) (:by |rJG4IHzWf) (:text |css-profile)
              |h $ %{} :Expr (:at 1651559718092) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651559722398) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1651559722748) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651559724414) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |ui/center)
                          |h $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:margin)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:auto)
                              |h $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:fixed)
                              |l $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:top)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |0)
                              |o $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:left)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |0)
                              |q $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:width)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"100%")
                              |s $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:height)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"100%")
                              |t $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:opacity)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |0.01)
                              |u $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:transition-duration)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"300ms")
                              |v $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:transform)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"translate(12vw,0px)")
                              |w $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:-webkit-tap-highlight-color)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:transparent)
                              |x $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:transition-delay)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"120ms")
                              |y $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:animation-name)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"entering")
                              |z $ %{} :Expr (:at 1651559724934) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text |:animation-duration)
                                  |b $ %{} :Leaf (:at 1651559724934) (:by |rJG4IHzWf) (:text "|\"800ms")
        |effect-bump $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627048516646) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627048518391) (:by |rJG4IHzWf) (:text |defeffect)
              |j $ %{} :Leaf (:at 1627048516646) (:by |rJG4IHzWf) (:text |effect-bump)
              |r $ %{} :Expr (:at 1627048516646) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1627048519759) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627048521789) (:by |rJG4IHzWf) (:text |action)
                  |j $ %{} :Leaf (:at 1627048522030) (:by |rJG4IHzWf) (:text |el)
                  |r $ %{} :Leaf (:at 1627048524168) (:by |rJG4IHzWf) (:text |at?)
              |x $ %{} :Expr (:at 1627048525375) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627048526597) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1627048527643) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1627048528229) (:by |rJG4IHzWf) (:text |=)
                      |T $ %{} :Leaf (:at 1627048527374) (:by |rJG4IHzWf) (:text |action)
                      |j $ %{} :Leaf (:at 1627048531199) (:by |rJG4IHzWf) (:text |:mount)
                  |r $ %{} :Expr (:at 1627048584923) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1627048585366) (:by |rJG4IHzWf) (:text |do)
                      |T $ %{} :Expr (:at 1627048541929) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627048542326) (:by |rJG4IHzWf) (:text |->)
                          |j $ %{} :Leaf (:at 1627048542792) (:by |rJG4IHzWf) (:text |el)
                          |r $ %{} :Leaf (:at 1627048544571) (:by |rJG4IHzWf) (:text |.-style)
                          |v $ %{} :Leaf (:at 1627048548162) (:by |rJG4IHzWf) (:text |.-scale)
                          |x $ %{} :Expr (:at 1627048550572) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627048549975) (:by |rJG4IHzWf) (:text |set!)
                              |j $ %{} :Leaf (:at 1627059040386) (:by |rJG4IHzWf) (:text |0.6)
                      |j $ %{} :Expr (:at 1627048587020) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1627048592609) (:by |rJG4IHzWf) (:text |js/setTimeout)
                          |T $ %{} :Expr (:at 1627048594782) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627048595240) (:by |rJG4IHzWf) (:text |fn)
                              |L $ %{} :Expr (:at 1627048598674) (:by |rJG4IHzWf)
                                :data $ {}
                              |T $ %{} :Expr (:at 1627048541929) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627048542326) (:by |rJG4IHzWf) (:text |->)
                                  |j $ %{} :Leaf (:at 1627048542792) (:by |rJG4IHzWf) (:text |el)
                                  |r $ %{} :Leaf (:at 1627048544571) (:by |rJG4IHzWf) (:text |.-style)
                                  |v $ %{} :Leaf (:at 1627048548162) (:by |rJG4IHzWf) (:text |.-scale)
                                  |x $ %{} :Expr (:at 1627048550572) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627048549975) (:by |rJG4IHzWf) (:text |set!)
                                      |j $ %{} :Leaf (:at 1627048607453) (:by |rJG4IHzWf) (:text |1)
                              |j $ %{} :Leaf (:at 1627048603612) (:by |rJG4IHzWf) (:text |0)
        |effect-fading $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627047683836) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627047685524) (:by |rJG4IHzWf) (:text |defeffect)
              |j $ %{} :Leaf (:at 1627047683836) (:by |rJG4IHzWf) (:text |effect-fading)
              |r $ %{} :Expr (:at 1627047683836) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1627047687076) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627047688942) (:by |rJG4IHzWf) (:text |action)
                  |j $ %{} :Leaf (:at 1627047689437) (:by |rJG4IHzWf) (:text |el)
                  |r $ %{} :Leaf (:at 1627047691493) (:by |rJG4IHzWf) (:text |at?)
              |y $ %{} :Expr (:at 1627047720000) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627047726893) (:by |rJG4IHzWf) (:text |case-default)
                  |j $ %{} :Leaf (:at 1627047728278) (:by |rJG4IHzWf) (:text |action)
                  |r $ %{} :Leaf (:at 1627047731660) (:by |rJG4IHzWf) (:text |nil)
                  |v $ %{} :Expr (:at 1627047732023) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627047735532) (:by |rJG4IHzWf) (:text |:mount)
                      |j $ %{} :Expr (:at 1627047736021) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627047740235) (:by |rJG4IHzWf) (:text |do)
                          |j $ %{} :Expr (:at 1627047740636) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047748172) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1627047748925) (:by |rJG4IHzWf) (:text |el)
                              |r $ %{} :Leaf (:at 1627047755737) (:by |rJG4IHzWf) (:text |.-style)
                              |v $ %{} :Leaf (:at 1627047763560) (:by |rJG4IHzWf) (:text |.-opacity)
                              |x $ %{} :Expr (:at 1627047765031) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047765696) (:by |rJG4IHzWf) (:text |set!)
                                  |j $ %{} :Leaf (:at 1627047828344) (:by |rJG4IHzWf) (:text |0.1)
                          |o $ %{} :Expr (:at 1627047740636) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047748172) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1627047748925) (:by |rJG4IHzWf) (:text |el)
                              |r $ %{} :Leaf (:at 1627047755737) (:by |rJG4IHzWf) (:text |.-style)
                              |v $ %{} :Leaf (:at 1651555091026) (:by |rJG4IHzWf) (:text |.-transform)
                              |x $ %{} :Expr (:at 1627047765031) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047765696) (:by |rJG4IHzWf) (:text |set!)
                                  |j $ %{} :Leaf (:at 1651555404733) (:by |rJG4IHzWf) (:text "|\"scale(0.6) translate(-80px,0px)")
                          |r $ %{} :Expr (:at 1627047770688) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1651556962369) (:by |rJG4IHzWf) (:text |flipped)
                              |T $ %{} :Leaf (:at 1627047792868) (:by |rJG4IHzWf) (:text |js/setTimeout)
                              |b $ %{} :Leaf (:at 1651556929056) (:by |rJG4IHzWf) (:text |0)
                              |j $ %{} :Expr (:at 1627047772960) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047775131) (:by |rJG4IHzWf) (:text |fn)
                                  |j $ %{} :Expr (:at 1627047775349) (:by |rJG4IHzWf)
                                    :data $ {}
                                  |r $ %{} :Expr (:at 1627047779055) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047779055) (:by |rJG4IHzWf) (:text |->)
                                      |j $ %{} :Leaf (:at 1627047779055) (:by |rJG4IHzWf) (:text |el)
                                      |r $ %{} :Leaf (:at 1627047779055) (:by |rJG4IHzWf) (:text |.-style)
                                      |v $ %{} :Leaf (:at 1627047779055) (:by |rJG4IHzWf) (:text |.-opacity)
                                      |x $ %{} :Expr (:at 1627047779055) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047779055) (:by |rJG4IHzWf) (:text |set!)
                                          |j $ %{} :Leaf (:at 1627047780937) (:by |rJG4IHzWf) (:text |1)
                                  |w $ %{} :Expr (:at 1651555107362) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651555107362) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1651555107362) (:by |rJG4IHzWf) (:text |el)
                                      |h $ %{} :Leaf (:at 1651555107362) (:by |rJG4IHzWf) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1651555107362) (:by |rJG4IHzWf) (:text |.-transform)
                                      |o $ %{} :Expr (:at 1651555107362) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651555107362) (:by |rJG4IHzWf) (:text |set!)
                                          |b $ %{} :Leaf (:at 1651555248125) (:by |rJG4IHzWf) (:text "|\"scale(1) translate(0,0)")
                          |t $ %{} :Expr (:at 1627047770688) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1651556959311) (:by |rJG4IHzWf) (:text |flipped)
                              |T $ %{} :Leaf (:at 1627047792868) (:by |rJG4IHzWf) (:text |js/setTimeout)
                              |b $ %{} :Leaf (:at 1651557095442) (:by |rJG4IHzWf) (:text |240)
                              |j $ %{} :Expr (:at 1627047772960) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047775131) (:by |rJG4IHzWf) (:text |fn)
                                  |j $ %{} :Expr (:at 1627047775349) (:by |rJG4IHzWf)
                                    :data $ {}
                                  |n $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |el)
                                      |h $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |.!querySelector)
                                          |b $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text "|\".right-corner")
                                      |l $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1658745787386) (:by |rJG4IHzWf) (:text |wo-js-log)
                                      |o $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |.!scrollIntoView)
                                          |b $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |js-object)
                                              |X $ %{} :Expr (:at 1651556997974) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651556999572) (:by |rJG4IHzWf) (:text |:block)
                                                  |b $ %{} :Leaf (:at 1651557000641) (:by |rJG4IHzWf) (:text "|\"end")
                                              |b $ %{} :Expr (:at 1651556936629) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text |:behavoir)
                                                  |b $ %{} :Leaf (:at 1651556936629) (:by |rJG4IHzWf) (:text "|\"smooth")
                  |x $ %{} :Expr (:at 1627047852981) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627047854961) (:by |rJG4IHzWf) (:text |:unmount)
                      |j $ %{} :Expr (:at 1627047855196) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627047865054) (:by |rJG4IHzWf) (:text |let)
                          |j $ %{} :Expr (:at 1627047865269) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1627047866319) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047867456) (:by |rJG4IHzWf) (:text |el')
                                  |j $ %{} :Expr (:at 1627047867846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1627047969883) (:by |rJG4IHzWf) (:text |.!cloneNode)
                                      |T $ %{} :Leaf (:at 1627047868243) (:by |rJG4IHzWf) (:text |el)
                          |r $ %{} :Expr (:at 1627047876094) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627047881750) (:by |rJG4IHzWf) (:text |->)
                              |T $ %{} :Leaf (:at 1627047876485) (:by |rJG4IHzWf) (:text |el)
                              |j $ %{} :Leaf (:at 1627047884899) (:by |rJG4IHzWf) (:text |.-parentElement)
                              |r $ %{} :Expr (:at 1627047886321) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047889631) (:by |rJG4IHzWf) (:text |.!appendChild)
                                  |j $ %{} :Leaf (:at 1627047891204) (:by |rJG4IHzWf) (:text |el')
                          |v $ %{} :Expr (:at 1627048078849) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627048081733) (:by |rJG4IHzWf) (:text |js/setTimeout)
                              |T $ %{} :Expr (:at 1627048086340) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1627048086810) (:by |rJG4IHzWf) (:text |fn)
                                  |L $ %{} :Expr (:at 1627048087046) (:by |rJG4IHzWf)
                                    :data $ {}
                                  |T $ %{} :Expr (:at 1627047898225) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047898858) (:by |rJG4IHzWf) (:text |->)
                                      |j $ %{} :Leaf (:at 1627047899927) (:by |rJG4IHzWf) (:text |el')
                                      |r $ %{} :Leaf (:at 1627047904136) (:by |rJG4IHzWf) (:text |.-style)
                                      |v $ %{} :Leaf (:at 1627047912158) (:by |rJG4IHzWf) (:text |.-opacity)
                                      |x $ %{} :Expr (:at 1627047913041) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047913771) (:by |rJG4IHzWf) (:text |set!)
                                          |j $ %{} :Leaf (:at 1627048302095) (:by |rJG4IHzWf) (:text |0.01)
                                  |n $ %{} :Expr (:at 1651555113885) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1651555359128) (:by |rJG4IHzWf) (:text |el')
                                      |h $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |.-transform)
                                      |o $ %{} :Expr (:at 1651555113885) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |set!)
                                          |b $ %{} :Leaf (:at 1651555520131) (:by |rJG4IHzWf) (:text "|\"scale(0.8) translate(-24px,0)")
                                  |q $ %{} :Expr (:at 1651555113885) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1651555359128) (:by |rJG4IHzWf) (:text |el')
                                      |h $ %{} :Leaf (:at 1651555113885) (:by |rJG4IHzWf) (:text |.-style)
                                      |l $ %{} :Leaf (:at 1651556599253) (:by |rJG4IHzWf) (:text |.-width)
                                      |o $ %{} :Expr (:at 1651556601455) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1651556602911) (:by |rJG4IHzWf) (:text |set!)
                                          |T $ %{} :Leaf (:at 1651556600423) (:by |rJG4IHzWf) (:text |0)
                              |j $ %{} :Leaf (:at 1627048096615) (:by |rJG4IHzWf) (:text |10)
                          |x $ %{} :Expr (:at 1627047920009) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627047921832) (:by |rJG4IHzWf) (:text |js/setTimeout)
                              |b $ %{} :Expr (:at 1627047925464) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047925832) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1627048001492) (:by |rJG4IHzWf)
                                    :data $ {}
                                  |j $ %{} :Expr (:at 1627047926258) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047936395) (:by |rJG4IHzWf) (:text |.!remove)
                                      |j $ %{} :Leaf (:at 1627047937927) (:by |rJG4IHzWf) (:text |el')
                              |j $ %{} :Leaf (:at 1651555369642) (:by |rJG4IHzWf) (:text |300)
        |render-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627028731839) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627028731839) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1627028731839) (:by |rJG4IHzWf) (:text |render-content)
              |r $ %{} :Expr (:at 1627028731839) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695663740589) (:by |rJG4IHzWf) (:text |directive)
                  |r $ %{} :Leaf (:at 1627032348601) (:by |rJG4IHzWf) (:text |on-open)
              |v $ %{} :Expr (:at 1627029435938) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1695663745811) (:by |rJG4IHzWf) (:text |tag-match)
                  |L $ %{} :Leaf (:at 1695663748142) (:by |rJG4IHzWf) (:text |directive)
                  |T $ %{} :Expr (:at 1627029460179) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1695663766309) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029464377) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1695663767385) (:by |rJG4IHzWf) (:text |t)
                      |T $ %{} :Expr (:at 1627028733607) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627028734217) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627028734452) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627028734762) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1627046955389) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627046956237) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627046956504) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627046956886) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627046957226) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627046963459) (:by |rJG4IHzWf) (:text |:font-weight)
                                          |j $ %{} :Leaf (:at 1627046992512) (:by |rJG4IHzWf) (:text |700)
                                      |v $ %{} :Expr (:at 1627046974947) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627046977366) (:by |rJG4IHzWf) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1627108227767) (:by |rJG4IHzWf) (:text |32)
                                      |x $ %{} :Expr (:at 1627046983500) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627046985949) (:by |rJG4IHzWf) (:text |:margin-top)
                                          |j $ %{} :Leaf (:at 1627046987272) (:by |rJG4IHzWf) (:text |8)
                                      |y $ %{} :Expr (:at 1627108219365) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627108222024) (:by |rJG4IHzWf) (:text |:font-weight)
                                          |j $ %{} :Leaf (:at 1627108223039) (:by |rJG4IHzWf) (:text |300)
                          |r $ %{} :Expr (:at 1627028735270) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627028735839) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Leaf (:at 1695663769297) (:by |rJG4IHzWf) (:text |t)
                  |j $ %{} :Expr (:at 1627029460179) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1695663770433) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029480493) (:by |rJG4IHzWf) (:text |:text)
                          |b $ %{} :Leaf (:at 1695663770895) (:by |rJG4IHzWf) (:text |t)
                      |T $ %{} :Expr (:at 1627028733607) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627028734217) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627028734452) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627028734762) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1627047124437) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627047125454) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627047126264) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627047126802) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627047127075) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627047129186) (:by |rJG4IHzWf) (:text |:line-height)
                                          |j $ %{} :Leaf (:at 1627057881537) (:by |rJG4IHzWf) (:text "|\"26px")
                                      |r $ %{} :Expr (:at 1627109317279) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627109319400) (:by |rJG4IHzWf) (:text |:margin-bottom)
                                          |j $ %{} :Leaf (:at 1627109320754) (:by |rJG4IHzWf) (:text |12)
                          |r $ %{} :Expr (:at 1627028735270) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627028735839) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Leaf (:at 1695663772173) (:by |rJG4IHzWf) (:text |t)
                  |r $ %{} :Expr (:at 1627029483097) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663774248) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029512826) (:by |rJG4IHzWf) (:text |:links)
                          |b $ %{} :Leaf (:at 1695663801280) (:by |rJG4IHzWf) (:text |links)
                      |j $ %{} :Expr (:at 1627029488934) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029490126) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627029490419) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627029490711) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1627034573984) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627034575821) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627034576414) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627034576764) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627034577047) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627034579901) (:by |rJG4IHzWf) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1627059514293) (:by |rJG4IHzWf) (:text "|\"8px 0px")
                          |r $ %{} :Leaf (:at 1627029494889) (:by |rJG4IHzWf) (:text |&)
                          |v $ %{} :Expr (:at 1627029495186) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627029499465) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1695663803759) (:by |rJG4IHzWf) (:text |links)
                              |r $ %{} :Expr (:at 1627029500465) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627029501375) (:by |rJG4IHzWf) (:text |map)
                                  |j $ %{} :Expr (:at 1627029501629) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627029501862) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1627029502124) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627029515695) (:by |rJG4IHzWf) (:text |xs)
                                      |r $ %{} :Expr (:at 1627029520550) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627029521259) (:by |rJG4IHzWf) (:text |if)
                                          |j $ %{} :Expr (:at 1627029522555) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695663815169) (:by |rJG4IHzWf) (:text |tuple?)
                                              |j $ %{} :Leaf (:at 1627029523294) (:by |rJG4IHzWf) (:text |xs)
                                          |r $ %{} :Expr (:at 1627029524496) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627029528258) (:by |rJG4IHzWf) (:text |render-content)
                                              |h $ %{} :Leaf (:at 1695663813114) (:by |rJG4IHzWf) (:text |xs)
                                              |v $ %{} :Leaf (:at 1627032351159) (:by |rJG4IHzWf) (:text |on-open)
                                          |v $ %{} :Expr (:at 1627029537883) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627029541020) (:by |rJG4IHzWf) (:text |<>)
                                              |j $ %{} :Expr (:at 1627029544702) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1627029545382) (:by |rJG4IHzWf) (:text |str)
                                                  |T $ %{} :Leaf (:at 1627029546638) (:by |rJG4IHzWf) (:text "|\"Unknown ")
                                                  |j $ %{} :Leaf (:at 1627029547586) (:by |rJG4IHzWf) (:text |xs)
                  |v $ %{} :Expr (:at 1627029550730) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663823401) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029552325) (:by |rJG4IHzWf) (:text |:route)
                          |b $ %{} :Leaf (:at 1695663830510) (:by |rJG4IHzWf) (:text |target)
                          |h $ %{} :Leaf (:at 1695663831778) (:by |rJG4IHzWf) (:text |title)
                      |j $ %{} :Expr (:at 1627029553357) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029561427) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627029561644) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627029561929) (:by |rJG4IHzWf) (:text |{})
                              |X $ %{} :Expr (:at 1627108338638) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627108391692) (:by |rJG4IHzWf) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1627108344926) (:by |rJG4IHzWf) (:text "|\"hover-scale")
                              |b $ %{} :Expr (:at 1627033146124) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627033147732) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627033148289) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627033148530) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627033149357) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033150294) (:by |rJG4IHzWf) (:text |:display)
                                          |j $ %{} :Leaf (:at 1627033152572) (:by |rJG4IHzWf) (:text |:inline-block)
                                      |r $ %{} :Expr (:at 1627033155409) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033157833) (:by |rJG4IHzWf) (:text |:min-width)
                                          |j $ %{} :Leaf (:at 1627033169291) (:by |rJG4IHzWf) (:text |40)
                                      |v $ %{} :Expr (:at 1627033170385) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033171481) (:by |rJG4IHzWf) (:text |:border)
                                          |j $ %{} :Leaf (:at 1627033203810) (:by |rJG4IHzWf) (:text "|\"1px solid #ddf")
                                      |x $ %{} :Expr (:at 1627033181544) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033183653) (:by |rJG4IHzWf) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1627033187583) (:by |rJG4IHzWf) (:text "|\"0 8px")
                                      |y $ %{} :Expr (:at 1627033190316) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033192867) (:by |rJG4IHzWf) (:text |:margin-right)
                                          |j $ %{} :Leaf (:at 1627033193844) (:by |rJG4IHzWf) (:text |8)
                                      |yD $ %{} :Expr (:at 1627033190316) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627034559561) (:by |rJG4IHzWf) (:text |:margin-bottom)
                                          |j $ %{} :Leaf (:at 1627033193844) (:by |rJG4IHzWf) (:text |8)
                                      |yT $ %{} :Expr (:at 1627033210194) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033211417) (:by |rJG4IHzWf) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1627033216616) (:by |rJG4IHzWf) (:text |:pointer)
                              |j $ %{} :Expr (:at 1627029578917) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627029582124) (:by |rJG4IHzWf) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1627029582628) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627029582847) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1627029583078) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627029583247) (:by |rJG4IHzWf) (:text |e)
                                          |j $ %{} :Leaf (:at 1627029583703) (:by |rJG4IHzWf) (:text |d!)
                                      |r $ %{} :Expr (:at 1627029584127) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627032344082) (:by |rJG4IHzWf) (:text |on-open)
                                          |f $ %{} :Leaf (:at 1695663836789) (:by |rJG4IHzWf) (:text |target)
                                          |r $ %{} :Leaf (:at 1627032374856) (:by |rJG4IHzWf) (:text |d!)
                          |r $ %{} :Expr (:at 1627029564852) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627029565160) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Leaf (:at 1695663838713) (:by |rJG4IHzWf) (:text |title)
                  |x $ %{} :Expr (:at 1627029550730) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663840062) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627029595141) (:by |rJG4IHzWf) (:text |:url)
                          |b $ %{} :Leaf (:at 1695663846762) (:by |rJG4IHzWf) (:text |target)
                          |h $ %{} :Leaf (:at 1695663847423) (:by |rJG4IHzWf) (:text |title)
                      |j $ %{} :Expr (:at 1627033401146) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1627033401817) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1627033402098) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627033402764) (:by |rJG4IHzWf) (:text |{})
                          |N $ %{} :Expr (:at 1627033413259) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627033413607) (:by |rJG4IHzWf) (:text |<>)
                              |j $ %{} :Leaf (:at 1702824945244) (:by |rJG4IHzWf) (:text "|\"🌐")
                              |r $ %{} :Expr (:at 1627033421265) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627033421621) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1627033421929) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627033422741) (:by |rJG4IHzWf) (:text |:color)
                                      |j $ %{} :Expr (:at 1627033424085) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627033425293) (:by |rJG4IHzWf) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1627033426425) (:by |rJG4IHzWf) (:text |200)
                                          |r $ %{} :Leaf (:at 1627033426751) (:by |rJG4IHzWf) (:text |80)
                                          |v $ %{} :Leaf (:at 1627033427158) (:by |rJG4IHzWf) (:text |70)
                                  |n $ %{} :Expr (:at 1702824949482) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702824952524) (:by |rJG4IHzWf) (:text |:font-size)
                                      |b $ %{} :Leaf (:at 1702824957132) (:by |rJG4IHzWf) (:text |14)
                          |P $ %{} :Expr (:at 1627033404016) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627033404461) (:by |rJG4IHzWf) (:text |=<)
                              |j $ %{} :Leaf (:at 1627059531682) (:by |rJG4IHzWf) (:text |6)
                              |r $ %{} :Leaf (:at 1627033406928) (:by |rJG4IHzWf) (:text |nil)
                          |T $ %{} :Expr (:at 1627029553357) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627029594110) (:by |rJG4IHzWf) (:text |a)
                              |j $ %{} :Expr (:at 1627029561644) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627029561929) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1627109046863) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627109049223) (:by |rJG4IHzWf) (:text |:style)
                                      |j $ %{} :Expr (:at 1627109051553) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1627109052245) (:by |rJG4IHzWf) (:text |{})
                                          |T $ %{} :Expr (:at 1627109050142) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627109050142) (:by |rJG4IHzWf) (:text |:font-size)
                                              |j $ %{} :Leaf (:at 1627109710560) (:by |rJG4IHzWf) (:text |16)
                                          |j $ %{} :Expr (:at 1627109345633) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1627109356548) (:by |rJG4IHzWf) (:text |:line-height)
                                              |j $ %{} :Leaf (:at 1627109358129) (:by |rJG4IHzWf) (:text "|\"20px")
                                  |j $ %{} :Expr (:at 1627029578917) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627029598844) (:by |rJG4IHzWf) (:text |:href)
                                      |b $ %{} :Leaf (:at 1695663852307) (:by |rJG4IHzWf) (:text |target)
                                  |r $ %{} :Expr (:at 1627029610244) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627029611942) (:by |rJG4IHzWf) (:text |:inner-text)
                                      |b $ %{} :Leaf (:at 1695663854759) (:by |rJG4IHzWf) (:text |title)
                                  |v $ %{} :Expr (:at 1627032634590) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627032635786) (:by |rJG4IHzWf) (:text |:target)
                                      |j $ %{} :Leaf (:at 1627032639571) (:by |rJG4IHzWf) (:text "|\"_blank")
                  |y $ %{} :Expr (:at 1627056263478) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663857093) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627056264904) (:by |rJG4IHzWf) (:text |:html)
                          |b $ %{} :Leaf (:at 1695663859517) (:by |rJG4IHzWf) (:text |h)
                      |j $ %{} :Expr (:at 1627056265853) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627056266282) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627056266553) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627056267054) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1627057036041) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627057038150) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627057038444) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627057038875) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627057039246) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627057040497) (:by |rJG4IHzWf) (:text |:position)
                                          |j $ %{} :Leaf (:at 1627057066999) (:by |rJG4IHzWf) (:text |:relative)
                              |j $ %{} :Expr (:at 1627056267635) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627056271299) (:by |rJG4IHzWf) (:text |:innerHTML)
                                  |b $ %{} :Leaf (:at 1695663861455) (:by |rJG4IHzWf) (:text |h)
                  |z $ %{} :Expr (:at 1627056263478) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663863101) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1663314242551) (:by |rJG4IHzWf) (:text |:xigua)
                          |b $ %{} :Leaf (:at 1695663865504) (:by |rJG4IHzWf) (:text |url)
                      |j $ %{} :Expr (:at 1627056265853) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627056266282) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1627056266553) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627056267054) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1627057036041) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627057038150) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1627057038444) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1627057038875) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1627057039246) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1627057040497) (:by |rJG4IHzWf) (:text |:position)
                                          |j $ %{} :Leaf (:at 1627057066999) (:by |rJG4IHzWf) (:text |:relative)
                              |j $ %{} :Expr (:at 1663314274989) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1663314276803) (:by |rJG4IHzWf) (:text |:innerHTML)
                                  |T $ %{} :Expr (:at 1627056267635) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1663314279323) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1672155935425) (:by |rJG4IHzWf) (:text "|\"<iframe width=\"100%\" height=\"260px\" frameborder=\"0\" src=\"")
                                      |e $ %{} :Leaf (:at 1695663867812) (:by |rJG4IHzWf) (:text |url)
                                      |h $ %{} :Leaf (:at 1663314255196) (:by |rJG4IHzWf) (:text "|\"\" referrerpolicy=\"unsafe-url\" allowfullscreen></iframe>")
                  |zD $ %{} :Expr (:at 1695661544893) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695663870046) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695661686472) (:by |rJG4IHzWf) (:text |:image)
                          |b $ %{} :Leaf (:at 1695663871640) (:by |rJG4IHzWf) (:text |src)
                          |h $ %{} :Leaf (:at 1695663872632) (:by |rJG4IHzWf) (:text |alt)
                      |b $ %{} :Expr (:at 1695661546659) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695661547904) (:by |rJG4IHzWf) (:text |img)
                          |b $ %{} :Expr (:at 1695661548852) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695661549306) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1695661549898) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695661669723) (:by |rJG4IHzWf) (:text |:src)
                                  |b $ %{} :Leaf (:at 1695663874452) (:by |rJG4IHzWf) (:text |src)
                              |h $ %{} :Expr (:at 1695661673844) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695661675839) (:by |rJG4IHzWf) (:text |:alt)
                                  |b $ %{} :Leaf (:at 1695663876231) (:by |rJG4IHzWf) (:text |alt)
                              |l $ %{} :Expr (:at 1695661691230) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695661694809) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695661701730) (:by |rJG4IHzWf) (:text |style-embed-image)
                  |zP $ %{} :Expr (:at 1695663751391) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695663751999) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1695663752386) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695663752386) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1695663752386) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695663752386) (:by |rJG4IHzWf) (:text |{})
                          |h $ %{} :Expr (:at 1695663752386) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695663752386) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Expr (:at 1695663752386) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695663752386) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1695663752386) (:by |rJG4IHzWf) (:text "|\"Unknown kind: ")
                                  |h $ %{} :Expr (:at 1695663758747) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695663760227) (:by |rJG4IHzWf) (:text |nth)
                                      |b $ %{} :Leaf (:at 1695663760681) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1695663762790) (:by |rJG4IHzWf) (:text |directive)
        |style-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651546899453) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702824388557) (:by |rJG4IHzWf) (:text |style-container)
              |h $ %{} :Expr (:at 1651546900305) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651546901532) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1651546902047) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651546904915) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |ui/global)
                          |h $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |ui/fullscreen)
                          |l $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |{})
                              |o $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |:display)
                                  |b $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |:flex)
                              |s $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |20)
                              |sD $ %{} :Expr (:at 1651547300215) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1676027823289) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1651547303056) (:by |rJG4IHzWf) (:text |:backdrop-filter)
                                  |b $ %{} :Leaf (:at 1651547902247) (:by |rJG4IHzWf) (:text "|\"blur(2px)")
                              |sH $ %{} :Expr (:at 1651556528746) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651556556452) (:by |rJG4IHzWf) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1651556574120) (:by |rJG4IHzWf) (:text "|\"0 12px 0 12vw")
                              |sJ $ %{} :Expr (:at 1651557045494) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651557047791) (:by |rJG4IHzWf) (:text |:scroll-behavior)
                                  |b $ %{} :Leaf (:at 1651557054807) (:by |rJG4IHzWf) (:text |:smooth)
                              |sL $ %{} :Expr (:at 1651547425202) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651547430422) (:by |rJG4IHzWf) (:text |:box-shadow)
                                  |b $ %{} :Expr (:at 1651547455541) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651547456318) (:by |rJG4IHzWf) (:text |str)
                                      |T $ %{} :Leaf (:at 1651547545012) (:by |rJG4IHzWf) (:text "|\"inset 0 -40px 1200px ")
                                      |b $ %{} :Expr (:at 1651547459688) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651547460060) (:by |rJG4IHzWf) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1651547460383) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1651547461301) (:by |rJG4IHzWf) (:text |0)
                                          |l $ %{} :Leaf (:at 1651547461718) (:by |rJG4IHzWf) (:text |0)
                              |sT $ %{} :Expr (:at 1651547259146) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1676027982832) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1651547263973) (:by |rJG4IHzWf) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1651547264204) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651547264545) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651547268678) (:by |rJG4IHzWf) (:text |180)
                                      |h $ %{} :Leaf (:at 1651547270585) (:by |rJG4IHzWf) (:text |60)
                                      |l $ %{} :Leaf (:at 1651547891124) (:by |rJG4IHzWf) (:text |20)
                                      |o $ %{} :Leaf (:at 1676027979525) (:by |rJG4IHzWf) (:text |0.01)
                              |t $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |:font-family)
                                  |b $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text "|\"Buda,")
                                      |h $ %{} :Expr (:at 1651546897396) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |:font-family)
                                          |b $ %{} :Leaf (:at 1651546897396) (:by |rJG4IHzWf) (:text |ui/global)
                              |u $ %{} :Expr (:at 1676027858655) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676027861118) (:by |rJG4IHzWf) (:text |:pointer-events)
                                  |b $ %{} :Leaf (:at 1676027862488) (:by |rJG4IHzWf) (:text |:none)
        |style-embed-image $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695661702133) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1695661703488) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1695661702133) (:by |rJG4IHzWf) (:text |style-embed-image)
              |h $ %{} :Expr (:at 1695661707198) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695661706950) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1695661714809) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695661715730) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1695661716108) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695661716413) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1695661717184) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695661719432) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1695661723137) (:by |rJG4IHzWf) (:text "|\"100%")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.comp.container)
            |v $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |f $ %{} :Expr (:at 1627028393899) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1627028398127) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |j $ %{} :Leaf (:at 1627028398871) (:by |rJG4IHzWf) (:text |:refer)
                    |r $ %{} :Expr (:at 1627028399125) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1627028399471) (:by |rJG4IHzWf) (:text |hsl)
                |r $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |ui)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1558169043785) (:by |rJG4IHzWf) (:text |respo.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1587315854011) (:by |rJG4IHzWf) (:text |>>)
                        |r $ %{} :Leaf (:at nil) (:by nil) (:text |<>)
                        |v $ %{} :Leaf (:at nil) (:by nil) (:text |div)
                        |x $ %{} :Leaf (:at nil) (:by nil) (:text |button)
                        |xT $ %{} :Leaf (:at nil) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at nil) (:by nil) (:text |span)
                        |yT $ %{} :Leaf (:at 1627029616846) (:by |rJG4IHzWf) (:text |a)
                        |yj $ %{} :Leaf (:at 1627035506063) (:by |rJG4IHzWf) (:text |list->)
                        |yr $ %{} :Leaf (:at 1627047706880) (:by |rJG4IHzWf) (:text |defeffect)
                        |z $ %{} :Leaf (:at 1676027736451) (:by |rJG4IHzWf) (:text |create-element)
                        |zD $ %{} :Leaf (:at 1695661682968) (:by |rJG4IHzWf) (:text |img)
                |x $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |=<)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1533404457935) (:by |rJG4IHzWf) (:text |comp-md-block)
                        |r $ %{} :Leaf (:at 1533404811676) (:by |rJG4IHzWf) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1627028330516) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1627028333186) (:by |rJG4IHzWf) (:text |feather.core)
                    |j $ %{} :Leaf (:at 1627028334469) (:by |rJG4IHzWf) (:text |:refer)
                    |r $ %{} :Expr (:at 1627028334649) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1627028337126) (:by |rJG4IHzWf) (:text |comp-icon)
                |z $ %{} :Expr (:at 1651546908702) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651546910256) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651546911013) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651546911368) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651546912488) (:by |rJG4IHzWf) (:text |defstyle)
                |zD $ %{} :Expr (:at 1697132163614) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1697132165320) (:by |rJG4IHzWf) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1697132167365) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1697132168421) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1697132171628) (:by |rJG4IHzWf) (:text |site-map)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1558168735743) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1558168735743) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1558168735743) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Leaf (:at 1612250978685) (:by |rJG4IHzWf) (:text |true)
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518157327696) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1518157346876) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518157348163) (:by |root) (:text |:storage)
                      |j $ %{} :Leaf (:at 1533404378336) (:by |rJG4IHzWf) (:text "|\"tiye-site")
                  |r $ %{} :Expr (:at 1527526861413) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526864597) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1527526903571) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1527526865931) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526868617) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527526887965) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |w $ %{} :Expr (:at 1528008960614) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008962775) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1533404365040) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/tiye-site/")
                  |wT $ %{} :Expr (:at 1528008973460) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008977180) (:by |root) (:text |:cdn-folder)
                      |j $ %{} :Leaf (:at 1533404368597) (:by |rJG4IHzWf) (:text "|\"tiye.me:cdn/tiye-site")
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1533404388065) (:by |rJG4IHzWf) (:text "|\"题叶@jiyinyiyong")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1533404422739) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/tiye.jpg")
                  |yf $ %{} :Expr (:at 1558168750923) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1558168750923) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1558168755289) (:by |rJG4IHzWf) (:text "|\"tiye-site")
                  |yr $ %{} :Expr (:at 1528009081454) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009091856) (:by |root) (:text |:upload-folder)
                      |j $ %{} :Leaf (:at 1533404400516) (:by |rJG4IHzWf) (:text "|\"tiye.me:repo/tiye/tiye.me/")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1612251000805) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |*reel)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at nil) (:by nil) (:text |->)
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |assoc)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |:base)
                      |r $ %{} :Leaf (:at nil) (:by nil) (:text |schema/store)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |assoc)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |:store)
                      |r $ %{} :Leaf (:at nil) (:by nil) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defn)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |dispatch!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |op)
              |t $ %{} :Expr (:at 1558168945053) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1558168945053) (:by |rJG4IHzWf) (:text |when)
                  |j $ %{} :Leaf (:at 1558168945053) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1558168945053) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1558168945053) (:by |rJG4IHzWf) (:text |println)
                      |j $ %{} :Leaf (:at 1558168945053) (:by |rJG4IHzWf) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1558168945053) (:by |rJG4IHzWf) (:text |op)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |reset!)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |*reel)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |reel-updater)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
                      |r $ %{} :Leaf (:at nil) (:by nil) (:text |@*reel)
                      |v $ %{} :Leaf (:at nil) (:by nil) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1613371059437) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1613371059437) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1613371059437) (:by |rJG4IHzWf) (:text |main!)
              |v $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
              |x $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text "|\"release")
              |xT $ %{} :Expr (:at 1627018199061) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018199492) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1627018201854) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1627018202616) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627018209821) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |yT $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |render-app!)
              |yj $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |*reel)
                  |r $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |:changes)
                  |v $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627018243036) (:by |rJG4IHzWf) (:text |r)
                          |j $ %{} :Leaf (:at 1627018243509) (:by |rJG4IHzWf) (:text |p)
                      |r $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |render-app!)
              |yr $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1627018246357) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |dispatch!)
              |yt $ %{} :Expr (:at 1651560466304) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651560476704) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |b $ %{} :Leaf (:at 1651560478622) (:by |rJG4IHzWf) (:text "|\"keydown")
                  |h $ %{} :Expr (:at 1651560478915) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651560479154) (:by |rJG4IHzWf) (:text |fn)
                      |b $ %{} :Expr (:at 1651560479427) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560480389) (:by |rJG4IHzWf) (:text |event)
                      |h $ %{} :Expr (:at 1651560480879) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560481200) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Expr (:at 1651560485448) (:by |rJG4IHzWf)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1651560487756) (:by |rJG4IHzWf) (:text |=)
                              |D $ %{} :Leaf (:at 1651560513904) (:by |rJG4IHzWf) (:text "|\"Escape")
                              |T $ %{} :Expr (:at 1651560481450) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651560484787) (:by |rJG4IHzWf) (:text |.-key)
                                  |T $ %{} :Leaf (:at 1651560482284) (:by |rJG4IHzWf) (:text |event)
                          |h $ %{} :Expr (:at 1651560488342) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651560491024) (:by |rJG4IHzWf) (:text |dispatch!)
                              |b $ %{} :Expr (:at 1689093843833) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689093898840) (:by |rJG4IHzWf) (:text |::)
                                  |T $ %{} :Leaf (:at 1651560492916) (:by |rJG4IHzWf) (:text |:reduce-page)
              |yv $ %{} :Expr (:at 1627018187025) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1627018187025) (:by |rJG4IHzWf) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |def)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |mount-target)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1697132025832) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at nil) (:by nil) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627018118128) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1627018118886) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1627018120728) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1627018121569) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1627018129018) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1627018129485) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1627018129724) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627018131035) (:by |rJG4IHzWf) (:text |some?)
                      |j $ %{} :Leaf (:at 1627018140058) (:by |rJG4IHzWf) (:text |build-errors)
                  |P $ %{} :Expr (:at 1627018140977) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627018141865) (:by |rJG4IHzWf) (:text |tip!)
                      |j $ %{} :Leaf (:at 1627018144287) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1627018147114) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |Q $ %{} :Leaf (:at 1627018128210) (:by |rJG4IHzWf) (:text |do)
                      |u $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1627025033676) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627025035048) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1627025037483) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1627025049708) (:by |rJG4IHzWf) (:text |:changes)
                      |vT $ %{} :Expr (:at 1627025042961) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1627025042961) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1627025042961) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |r)
                                  |j $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |p)
                              |r $ %{} :Expr (:at 1627025042961) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1627025042961) (:by |rJG4IHzWf) (:text |render-app!)
                      |w $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |reset!)
                          |j $ %{} :Leaf (:at nil) (:by nil) (:text |*reel)
                          |r $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at nil) (:by nil) (:text |@*reel)
                              |r $ %{} :Leaf (:at nil) (:by nil) (:text |schema/store)
                              |v $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
                      |y $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |println)
                          |j $ %{} :Leaf (:at nil) (:by nil) (:text "||Code updated.")
                      |yT $ %{} :Expr (:at 1627018149995) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1627018151451) (:by |rJG4IHzWf) (:text |tip!)
                          |j $ %{} :Leaf (:at 1627018153471) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1627018154756) (:by |rJG4IHzWf) (:text "|\"Ok")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defn)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |render-app!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627018233247) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |mount-target)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1627018236195) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.main)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |render!)
                        |r $ %{} :Leaf (:at nil) (:by nil) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at nil) (:by nil) (:text |realize-ssr!)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.updater)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
                |yT $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |schema)
                |yj $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.util)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1613371295209) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1613371298909) (:by |rJG4IHzWf) (:text |app.page)
                    |r $ %{} :Leaf (:at 1613371300017) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1613371300175) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1613371300938) (:by |rJG4IHzWf) (:text |ssr-processing!)
                |yyj $ %{} :Expr (:at 1627018092236) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1627018094233) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1627018096115) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1627018097851) (:by |rJG4IHzWf) (:text |tip!)
                |yyr $ %{} :Expr (:at 1627018099236) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1627018106527) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1627018109614) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1627018112174) (:by |rJG4IHzWf) (:text |build-errors)
    |app.page $ %{} :FileEntry
      :defs $ {}
        |base-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |def)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |base-info)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:title)
                      |j $ %{} :Expr (:at 1527868487079) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527868489424) (:by |root) (:text |:title)
                          |j $ %{} :Leaf (:at 1527868490774) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:icon)
                      |j $ %{} :Expr (:at 1527868492888) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527868493420) (:by |root) (:text |:icon)
                          |j $ %{} :Leaf (:at 1527868495181) (:by |root) (:text |config/site)
                  |v $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:ssr)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |nil)
                  |x $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:inline-html)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |nil)
        |ssr-processing! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1613371303034) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1613371304176) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1613371303034) (:by |rJG4IHzWf) (:text |ssr-processing!)
              |r $ %{} :Expr (:at 1613371303034) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |let)
                  |j $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |reel-schema/reel)
                              |r $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |:base)
                                  |r $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |schema/store)
                              |v $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |:store)
                                  |r $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |schema/store)
                      |b $ %{} :Expr (:at 1613374103403) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613374111972) (:by |rJG4IHzWf) (:text |file)
                          |j $ %{} :Leaf (:at 1613374109731) (:by |rJG4IHzWf) (:text "|\"dist/index.html")
                      |j $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |html-content)
                          |j $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |make-string)
                              |j $ %{} :Expr (:at 1613373497077) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |comp-container)
                                  |j $ %{} :Leaf (:at 1613373497077) (:by |rJG4IHzWf) (:text |reel)
                      |r $ %{} :Expr (:at 1613374025694) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613374026506) (:by |rJG4IHzWf) (:text |content)
                          |j $ %{} :Expr (:at 1613374028000) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613374028000) (:by |rJG4IHzWf) (:text |fs/readFileSync)
                              |j $ %{} :Leaf (:at 1613374114232) (:by |rJG4IHzWf) (:text |file)
                              |r $ %{} :Leaf (:at 1613374028000) (:by |rJG4IHzWf) (:text "|\"utf8")
                  |v $ %{} :Expr (:at 1613374030463) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1613374033218) (:by |rJG4IHzWf) (:text |fs/writeFileSync)
                      |j $ %{} :Leaf (:at 1613374115892) (:by |rJG4IHzWf) (:text |file)
                      |r $ %{} :Expr (:at 1613374040478) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1613374043006) (:by |rJG4IHzWf) (:text |replace)
                          |T $ %{} :Leaf (:at 1613374040163) (:by |rJG4IHzWf) (:text |content)
                          |j $ %{} :Leaf (:at 1613374055449) (:by |rJG4IHzWf) (:text "|\"<div class=\"app\" ></div>")
                          |r $ %{} :Expr (:at 1613374064216) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613374065207) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1613374348948) (:by |rJG4IHzWf) (:text "|\"<div class=\"app\" data-ssr=\"true\" >")
                              |n $ %{} :Leaf (:at 1613374075986) (:by |rJG4IHzWf) (:text |html-content)
                              |r $ %{} :Leaf (:at 1613374070438) (:by |rJG4IHzWf) (:text "|\"</div>")
                  |x $ %{} :Expr (:at 1613374098430) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1613374098882) (:by |rJG4IHzWf) (:text |echo)
                      |j $ %{} :Leaf (:at 1613374101861) (:by |rJG4IHzWf) (:text "|\"replaced")
                      |r $ %{} :Leaf (:at 1613374117614) (:by |rJG4IHzWf) (:text |file)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.page)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.render.html)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |make-string)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
                |x $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |schema)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |reel-schema)
                |yj $ %{} :Expr (:at 1527788265374) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788267102) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788267664) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788268746) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1613373994946) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1613373997488) (:by |rJG4IHzWf) (:text "|\"fs")
                    |r $ %{} :Leaf (:at 1613373997991) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1613373998484) (:by |rJG4IHzWf) (:text |fs)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |load-as-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612250801032) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612250802814) (:by |rJG4IHzWf) (:text |defmacro)
              |j $ %{} :Leaf (:at 1697132152046) (:by |rJG4IHzWf) (:text |load-as-code)
              |r $ %{} :Expr (:at 1612250801032) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612250805673) (:by |rJG4IHzWf) (:text |file)
              |v $ %{} :Expr (:at 1697131818350) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1697131826338) (:by |rJG4IHzWf) (:text |&data-to-code)
                  |T $ %{} :Expr (:at 1697131815057) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1697131815688) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                      |T $ %{} :Expr (:at 1612250806387) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612250819878) (:by |rJG4IHzWf) (:text |read-file)
                          |j $ %{} :Leaf (:at 1612250820901) (:by |rJG4IHzWf) (:text |file)
        |site-map $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627027478202) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1627027478202) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1697132141852) (:by |rJG4IHzWf) (:text |site-map)
              |r $ %{} :Expr (:at 1627027479571) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1697131845023) (:by |rJG4IHzWf) (:text |load-as-code)
                  |j $ %{} :Leaf (:at 1627027479571) (:by |rJG4IHzWf) (:text "|\"data/meta.cirru")
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |def)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |store)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:states)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                  |n $ %{} :Expr (:at 1651560396192) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651560397051) (:by |rJG4IHzWf) (:text |:router)
                      |b $ %{} :Expr (:at 1651560397292) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560397511) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defn)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1689093860915) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |op)
                  |n $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689093869113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |:states)
                          |b $ %{} :Leaf (:at 1689093870245) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1689093870456) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1587315646181) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                          |n $ %{} :Leaf (:at 1689093873187) (:by |rJG4IHzWf) (:text |cursor)
                          |q $ %{} :Leaf (:at 1689093873393) (:by |rJG4IHzWf) (:text |s)
                  |s $ %{} :Expr (:at 1651560195751) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689093875425) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560260576) (:by |rJG4IHzWf) (:text |:push-page)
                          |b $ %{} :Leaf (:at 1689093974078) (:by |rJG4IHzWf) (:text |idx)
                          |h $ %{} :Leaf (:at 1689093974552) (:by |rJG4IHzWf) (:text |x)
                      |b $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |update)
                          |b $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |store)
                          |h $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |:router)
                          |l $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |rs)
                              |h $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |nil?)
                                      |b $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |idx)
                                  |h $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |conj)
                                      |b $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |rs)
                                      |h $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |x)
                                  |l $ %{} :Expr (:at 1689093976440) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |.assoc-after)
                                      |b $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |rs)
                                      |h $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |idx)
                                      |l $ %{} :Leaf (:at 1689093976440) (:by |rJG4IHzWf) (:text |x)
                  |sT $ %{} :Expr (:at 1651560251110) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1689093877647) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560256052) (:by |rJG4IHzWf) (:text |:close-page)
                          |b $ %{} :Leaf (:at 1689093995948) (:by |rJG4IHzWf) (:text |all?)
                          |h $ %{} :Leaf (:at 1689093996570) (:by |rJG4IHzWf) (:text |idx)
                      |T $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |all?)
                          |h $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |update)
                              |b $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |store)
                              |h $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |:router)
                              |l $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |rs)
                                  |h $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |.slice)
                                      |b $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |rs)
                                      |h $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |idx)
                          |l $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |update)
                              |b $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |store)
                              |h $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |:router)
                              |l $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |rs)
                                  |h $ %{} :Expr (:at 1689093999104) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |dissoc)
                                      |b $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |rs)
                                      |h $ %{} :Leaf (:at 1689093999104) (:by |rJG4IHzWf) (:text |idx)
                  |sj $ %{} :Expr (:at 1651560318694) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689093880367) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560328486) (:by |rJG4IHzWf) (:text |:reduce-page)
                      |b $ %{} :Expr (:at 1651560331414) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651560332273) (:by |rJG4IHzWf) (:text |update)
                          |b $ %{} :Leaf (:at 1651560333476) (:by |rJG4IHzWf) (:text |store)
                          |h $ %{} :Leaf (:at 1651560335065) (:by |rJG4IHzWf) (:text |:router)
                          |l $ %{} :Expr (:at 1651560532368) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1651560533175) (:by |rJG4IHzWf) (:text |fn)
                              |L $ %{} :Expr (:at 1651560533686) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651560534654) (:by |rJG4IHzWf) (:text |r)
                              |T $ %{} :Expr (:at 1651560528863) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651560529541) (:by |rJG4IHzWf) (:text |if)
                                  |L $ %{} :Expr (:at 1651560529795) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651560539541) (:by |rJG4IHzWf) (:text |empty?)
                                      |b $ %{} :Leaf (:at 1651560539991) (:by |rJG4IHzWf) (:text |r)
                                  |P $ %{} :Leaf (:at 1651560540668) (:by |rJG4IHzWf) (:text |r)
                                  |T $ %{} :Expr (:at 1651560541198) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651560335720) (:by |rJG4IHzWf) (:text |rest)
                                      |b $ %{} :Leaf (:at 1651560543151) (:by |rJG4IHzWf) (:text |r)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689093881906) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1689093882303) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1689093883321) (:by |rJG4IHzWf) (:text |d)
                  |u $ %{} :Expr (:at 1689093863515) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1689093863922) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1689093864712) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689093864712) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1689093864712) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689093866140) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1689093864712) (:by |rJG4IHzWf) (:text "|\"unknown op")
                              |h $ %{} :Leaf (:at 1689093864712) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1689093864712) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.updater)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1587315643747) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)

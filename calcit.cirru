
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reel) (:time 1507461830530) (:type :leaf) (:id |r1gMj_KqTSZ)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |let) (:time 1507461833421) (:type :leaf) (:id |SkGx0cFPh-)
                  |L $ {} (:author |root)
                    :data $ {}
                      |yT $ {}
                        :data $ {}
                          |T $ {} (:text |close-tab) (:type :leaf) (:at 1627026542725) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627026546381) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |idx) (:type :leaf) (:at 1627026547137) (:by |rJG4IHzWf)
                                  |b $ {} (:text |all?) (:type :leaf) (:at 1627035134091) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1627026572343) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627026546634
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |if) (:type :leaf) (:at 1627035137277) (:by |rJG4IHzWf)
                                  |L $ {} (:text |all?) (:type :leaf) (:at 1627035137785) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1627026549831) (:by |rJG4IHzWf)
                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1627026550922) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |update) (:type :leaf) (:at 1627026553811) (:by |rJG4IHzWf)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1627026554435) (:by |rJG4IHzWf)
                                          |r $ {} (:text |:router) (:type :leaf) (:at 1627026555643) (:by |rJG4IHzWf)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1627026556891) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rs) (:type :leaf) (:at 1627026558190) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627026558357
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.slice) (:type :leaf) (:at 1627035144482) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |rs) (:type :leaf) (:at 1627026562103) (:by |rJG4IHzWf)
                                                  |n $ {} (:text |0) (:type :leaf) (:at 1627035145398) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |idx) (:type :leaf) (:at 1627026562726) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627026559040
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627026556505
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627026551544
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627035129315
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1627026549831) (:by |rJG4IHzWf)
                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1627026550922) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |update) (:type :leaf) (:at 1627026553811) (:by |rJG4IHzWf)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1627026554435) (:by |rJG4IHzWf)
                                          |r $ {} (:text |:router) (:type :leaf) (:at 1627026555643) (:by |rJG4IHzWf)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1627026556891) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rs) (:type :leaf) (:at 1627026558190) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627026558357
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |dissoc) (:type :leaf) (:at 1627026559900) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |rs) (:type :leaf) (:at 1627026562103) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |idx) (:type :leaf) (:at 1627026562726) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627026559040
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627026556505
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627026551544
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627035129315
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627035136860
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627026545491
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026526741
                        :by |rJG4IHzWf
                      |T $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |store) (:time 1507461835738) (:type :leaf) (:id |SyMAqtD2W)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:store) (:time 1507461837276) (:type :leaf) (:id |r1GEC5Kv3Z)
                              |j $ {} (:author |root) (:text |reel) (:time 1507461838285) (:type :leaf) (:id |B1NBC5tPh-)
                            :time 1507461836110
                            :type :expr
                            :id |S1XN05tw3-
                        :time 1507461834650
                        :type :expr
                        :id |Hy7CcFP3W
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |states) (:time 1509727105928) (:type :leaf) (:id |rkgYtjzqAWleaf)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:states) (:time 1509727107223) (:type :leaf) (:id |HJE9tjzqAb)
                              |j $ {} (:author |root) (:text |store) (:time 1509727108033) (:type :leaf) (:id |SySiYoMc0-)
                            :time 1509727106316
                            :type :expr
                            :id |HJBcYszqCZ
                        :time 1509727104820
                        :type :expr
                        :id |rkgYtjzqAW
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1627026430351) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1627026433367) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1627026435185) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627026436007) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627026433561
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627026436729) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:router) (:type :leaf) (:at 1627026440524) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1627026441025) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627026440851
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627026437473
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627026436413
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627026430872
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026427898
                        :by |rJG4IHzWf
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1627026507800) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |or) (:type :leaf) (:at 1627027422955) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1627026510948) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627026509715) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627026508026
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627027423814) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627027423489
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627027422443
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026506294
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |router) (:type :leaf) (:at 1627026476972) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:router) (:type :leaf) (:at 1627026478459) (:by |rJG4IHzWf)
                              |j $ {} (:text |state) (:type :leaf) (:at 1627026479092) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627026477570
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026476308
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |push-tab) (:type :leaf) (:at 1627026544366) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627026498360) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |idx) (:type :leaf) (:at 1627033273533) (:by |rJG4IHzWf)
                                  |T $ {} (:text |x) (:type :leaf) (:at 1627026499403) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1627026570098) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627026498687
                                :by |rJG4IHzWf
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |println) (:type :leaf) (:at 1627027314632) (:by |rJG4IHzWf)
                                  |j $ {} (:text |x) (:type :leaf) (:at 1627027315575) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627027309422
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1627026502533) (:by |rJG4IHzWf)
                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1627026503570) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |update) (:type :leaf) (:at 1627026513615) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1627026514704) (:by |rJG4IHzWf)
                                      |r $ {} (:text |:router) (:type :leaf) (:at 1627026516280) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1627026517218) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |rs) (:type :leaf) (:at 1627026517849) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627026517419
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |if) (:type :leaf) (:at 1627033262933) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {} (:text |nil?) (:type :leaf) (:at 1627033265583) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |idx) (:type :leaf) (:at 1627033268263) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627033263567
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |conj) (:type :leaf) (:at 1627026518978) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |rs) (:type :leaf) (:at 1627026524284) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |x) (:type :leaf) (:at 1627026524645) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627026518430
                                                :by |rJG4IHzWf
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.assoc-after) (:type :leaf) (:at 1627033281953) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |rs) (:type :leaf) (:at 1627033283815) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |idx) (:type :leaf) (:at 1627033284773) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |x) (:type :leaf) (:at 1627033285545) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627033278308
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627033262413
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627026516915
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627026512439
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627026499754
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627026498096
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026481671
                        :by |rJG4IHzWf
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |merge) (:time 1499755354983) (:type :leaf) (:id |BydGiOKqpHW)
                                  |j $ {} (:author |root) (:text |ui/global) (:time 1499755354983) (:type :leaf) (:at 1521129814235) (:by |root) (:id |rktMsOY56HW)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1627025016491) (:by |rJG4IHzWf)
                                  |v $ {}
                                    :data $ {}
                                      |yT $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627057582103) (:by |rJG4IHzWf)
                                          |j $ {} (:text |20) (:type :leaf) (:at 1627057582821) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627057578900
                                        :by |rJG4IHzWf
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627024946725) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-image) (:type :leaf) (:at 1627024951996) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"url(https://r.tiye.me/tiye/logo/leaf.jpg)") (:type :leaf) (:at 1627026750474) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627024946958
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-size) (:type :leaf) (:at 1627024997405) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"cover") (:type :leaf) (:at 1627025060627) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627024990793
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-position) (:type :leaf) (:at 1627025067820) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:center) (:type :leaf) (:at 1627025069758) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627025065131
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:display) (:type :leaf) (:at 1627032511949) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:flex) (:type :leaf) (:at 1627032513795) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627032509267
                                        :by |rJG4IHzWf
                                      |y $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1627032520456) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"0 12vw") (:type :leaf) (:at 1627057307473) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627032518281
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627024946388
                                    :by |rJG4IHzWf
                                :time 1499755354983
                                :type :expr
                                :id |rJDfsutcaBb
                            :time 1499755354983
                            :type :expr
                            :id |BkBzj_F5TrW
                        :time 1499755354983
                        :type :expr
                        :id |Hy7Gj_YcaSb
                      |m $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048388266) (:text |comp-cards)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048388266) (:text |router)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048388266) (:text |push-tab)
                          |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048388266) (:text |close-tab)
                        :type :expr
                        :at 1627048388266
                        :by |rJG4IHzWf
                      |q $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1627026466328) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |empty?) (:type :leaf) (:at 1627026470119) (:by |rJG4IHzWf)
                              |j $ {} (:text |router) (:type :leaf) (:at 1627026474615) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627026466683
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-empty) (:type :leaf) (:at 1627026583673) (:by |rJG4IHzWf)
                              |j $ {} (:text |push-tab) (:type :leaf) (:at 1627027293974) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627026581079
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026465840
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root) (:id |rJgM6oE5f)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root) (:id |H1fGajVqz)
                          |T $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |comp-reel) (:time 1507461815046) (:type :leaf) (:id |rJc29KD2-leaf)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1587315761146) (:by |rJG4IHzWf) (:id |9sZldYypRq)
                                  |T $ {} (:author |root) (:text |states) (:time 1509727101297) (:type :leaf) (:id |B1BYoG90Z)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1587315761844) (:by |rJG4IHzWf) (:id |tjYGdedtwb)
                                :type :expr
                                :at 1587315760465
                                :by |rJG4IHzWf
                                :id |mdiTHDgYtc
                              |j $ {} (:author |root) (:text |reel) (:time 1507461840459) (:type :leaf) (:id |rJx_05Fw3Z)
                              |r $ {} (:author |root)
                                :data $ {}
                                  |T $ {} (:author |root) (:text |{}) (:time 1507461841342) (:type :leaf) (:id |Bkt05FDhW)
                                :time 1507461840980
                                :type :expr
                                :id |B1xKR5Fw3b
                            :time 1507461809635
                            :type :expr
                            :id |rJc29KD2-
                        :type :expr
                        :at 1521954055333
                        :by |root
                        :id |SyWJfaiV5z
                    :time 1499755354983
                    :type :expr
                    :id |SyWfsuY5THW
                :time 1507461832154
                :type :expr
                :id |r1-eRcYv3-
            :time 1499755354983
            :type :expr
            :id |BJ2WiOF9pBW
          |render-content $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627028731839) (:by |rJG4IHzWf)
              |j $ {} (:text |render-content) (:type :leaf) (:at 1627028731839) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |kind) (:type :leaf) (:at 1627029430803) (:by |rJG4IHzWf)
                  |j $ {} (:text |args) (:type :leaf) (:at 1627029432396) (:by |rJG4IHzWf)
                  |r $ {} (:text |on-open) (:type :leaf) (:at 1627032348601) (:by |rJG4IHzWf)
                :type :expr
                :at 1627028731839
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |case-default) (:type :leaf) (:at 1627029439557) (:by |rJG4IHzWf)
                  |L $ {} (:text |kind) (:type :leaf) (:at 1627029440748) (:by |rJG4IHzWf)
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627029442823) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627029443707) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627029443045
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1627029444837) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1627029451614) (:by |rJG4IHzWf)
                              |T $ {} (:text "|\"Unknown kind: ") (:type :leaf) (:at 1627029457410) (:by |rJG4IHzWf)
                              |j $ {} (:text |kind) (:type :leaf) (:at 1627029454937) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627029450974
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627029444537
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029441303
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |:title) (:type :leaf) (:at 1627029464377) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627028734217) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627028734762) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627046956237) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627046956886) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-weight) (:type :leaf) (:at 1627046963459) (:by |rJG4IHzWf)
                                          |j $ {} (:text |700) (:type :leaf) (:at 1627046992512) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627046957226
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-family) (:type :leaf) (:at 1627046969658) (:by |rJG4IHzWf)
                                          |j $ {} (:text |ui/font-normal) (:type :leaf) (:at 1627047027109) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627046968062
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627046977366) (:by |rJG4IHzWf)
                                          |j $ {} (:text |24) (:type :leaf) (:at 1627057615122) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627046974947
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin-top) (:type :leaf) (:at 1627046985949) (:by |rJG4IHzWf)
                                          |j $ {} (:text |8) (:type :leaf) (:at 1627046987272) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627046983500
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627046956504
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627046955389
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627028734452
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627028735839) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627029474613) (:by |rJG4IHzWf)
                                  |j $ {} (:text |args) (:type :leaf) (:at 1627029475654) (:by |rJG4IHzWf)
                                  |r $ {} (:text |0) (:type :leaf) (:at 1627029475928) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627029467416
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627028735270
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627028733607
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029460179
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |:text) (:type :leaf) (:at 1627029480493) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627028734217) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627028734762) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627047125454) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627047126802) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1627047129186) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"26px") (:type :leaf) (:at 1627057881537) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627047127075
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047126264
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047124437
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627028734452
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627028735839) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627029474613) (:by |rJG4IHzWf)
                                  |j $ {} (:text |args) (:type :leaf) (:at 1627029475654) (:by |rJG4IHzWf)
                                  |r $ {} (:text |0) (:type :leaf) (:at 1627029475928) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627029467416
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627028735270
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627028733607
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029460179
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:links) (:type :leaf) (:at 1627029512826) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627029490126) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627029490711) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627034575821) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627034576764) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin) (:type :leaf) (:at 1627034579901) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"8px 0px") (:type :leaf) (:at 1627059514293) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627034577047
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627034576414
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627034573984
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627029490419
                            :by |rJG4IHzWf
                          |r $ {} (:text |&) (:type :leaf) (:at 1627029494889) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1627029499465) (:by |rJG4IHzWf)
                              |j $ {} (:text |args) (:type :leaf) (:at 1627029500055) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1627029501375) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627029501862) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |xs) (:type :leaf) (:at 1627029515695) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627029502124
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |if) (:type :leaf) (:at 1627029521259) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |list?) (:type :leaf) (:at 1627029522860) (:by |rJG4IHzWf)
                                              |j $ {} (:text |xs) (:type :leaf) (:at 1627029523294) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627029522555
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |render-content) (:type :leaf) (:at 1627029528258) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627029530915) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |xs) (:type :leaf) (:at 1627029531765) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1627029532482) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627029529011
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rest) (:type :leaf) (:at 1627029533575) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |xs) (:type :leaf) (:at 1627029534675) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627029532963
                                                :by |rJG4IHzWf
                                              |v $ {} (:text |on-open) (:type :leaf) (:at 1627032351159) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627029524496
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1627029541020) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |str) (:type :leaf) (:at 1627029545382) (:by |rJG4IHzWf)
                                                  |T $ {} (:text "|\"Unknown ") (:type :leaf) (:at 1627029546638) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |xs) (:type :leaf) (:at 1627029547586) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627029544702
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627029537883
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627029520550
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627029501629
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627029500465
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627029495186
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627029488934
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029483097
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:route) (:type :leaf) (:at 1627029552325) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627029561427) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627029561929) (:by |rJG4IHzWf)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627033147732) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |yD $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1627034559561) (:by |rJG4IHzWf)
                                          |j $ {} (:text |8) (:type :leaf) (:at 1627033193844) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033190316
                                        :by |rJG4IHzWf
                                      |yT $ {}
                                        :data $ {}
                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1627033211417) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1627033216616) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033210194
                                        :by |rJG4IHzWf
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627033148530) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:display) (:type :leaf) (:at 1627033150294) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:inline-block) (:type :leaf) (:at 1627033152572) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033149357
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:min-width) (:type :leaf) (:at 1627033157833) (:by |rJG4IHzWf)
                                          |j $ {} (:text |40) (:type :leaf) (:at 1627033169291) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033155409
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border) (:type :leaf) (:at 1627033171481) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"1px solid #ddf") (:type :leaf) (:at 1627033203810) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033170385
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1627033183653) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1627033187583) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033181544
                                        :by |rJG4IHzWf
                                      |y $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin-right) (:type :leaf) (:at 1627033192867) (:by |rJG4IHzWf)
                                          |j $ {} (:text |8) (:type :leaf) (:at 1627033193844) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033190316
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627033148289
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627033146124
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1627029582124) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627029582847) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1627029583247) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1627029583703) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627029583078
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |on-open) (:type :leaf) (:at 1627032344082) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |nth) (:type :leaf) (:at 1627029587785) (:by |rJG4IHzWf)
                                              |j $ {} (:text |args) (:type :leaf) (:at 1627029588967) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1627029590128) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627029587384
                                            :by |rJG4IHzWf
                                          |r $ {} (:text |d!) (:type :leaf) (:at 1627032374856) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627029584127
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627029582628
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627029578917
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627029561644
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627029565160) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |nth) (:type :leaf) (:at 1627029567661) (:by |rJG4IHzWf)
                                  |j $ {} (:text |args) (:type :leaf) (:at 1627029569717) (:by |rJG4IHzWf)
                                  |r $ {} (:text |1) (:type :leaf) (:at 1627029574213) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627029566169
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627029564852
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627029553357
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029550730
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:url) (:type :leaf) (:at 1627029595141) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1627033401817) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627033402764) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627033402098
                            :by |rJG4IHzWf
                          |N $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627033413607) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"☍") (:type :leaf) (:at 1627035328884) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627033421621) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1627033422741) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1627033425293) (:by |rJG4IHzWf)
                                          |j $ {} (:text |200) (:type :leaf) (:at 1627033426425) (:by |rJG4IHzWf)
                                          |r $ {} (:text |80) (:type :leaf) (:at 1627033426751) (:by |rJG4IHzWf)
                                          |v $ {} (:text |70) (:type :leaf) (:at 1627033427158) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627033424085
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627033421929
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627033421265
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627033413259
                            :by |rJG4IHzWf
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1627033404461) (:by |rJG4IHzWf)
                              |j $ {} (:text |6) (:type :leaf) (:at 1627059531682) (:by |rJG4IHzWf)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1627033406928) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627033404016
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |a) (:type :leaf) (:at 1627029594110) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627029561929) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:href) (:type :leaf) (:at 1627029598844) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |nth) (:type :leaf) (:at 1627029599990) (:by |rJG4IHzWf)
                                          |j $ {} (:text |args) (:type :leaf) (:at 1627029602747) (:by |rJG4IHzWf)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1627029603104) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627029600576
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627029578917
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:inner-text) (:type :leaf) (:at 1627029611942) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627029612355) (:text |nth)
                                          |j $ {} (:text |args) (:type :leaf) (:at 1627029612355) (:by |rJG4IHzWf)
                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627029612355) (:text |1)
                                        :type :expr
                                        :at 1627029612355
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627029610244
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:target) (:type :leaf) (:at 1627032635786) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"_blank") (:type :leaf) (:at 1627032639571) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627032634590
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627029561644
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627029553357
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627033401146
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627029550730
                    :by |rJG4IHzWf
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:html) (:type :leaf) (:at 1627056264904) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627056266282) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627056267054) (:by |rJG4IHzWf)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627057038150) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627057038875) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:position) (:type :leaf) (:at 1627057040497) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:relative) (:type :leaf) (:at 1627057066999) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627057039246
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:height) (:type :leaf) (:at 1627057094911) (:by |rJG4IHzWf)
                                          |j $ {} (:text |660) (:type :leaf) (:at 1627058862516) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627057093906
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627057038444
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627057036041
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:innerHTML) (:type :leaf) (:at 1627056271299) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |nth) (:type :leaf) (:at 1627056275032) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |w-log) (:type :leaf) (:at 1627056302704) (:by |rJG4IHzWf)
                                          |T $ {} (:text |args) (:type :leaf) (:at 1627056284378) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627056301449
                                        :by |rJG4IHzWf
                                      |r $ {} (:text |0) (:type :leaf) (:at 1627056278536) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627056273372
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627056267635
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627056266553
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627056265853
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627056263478
                    :by |rJG4IHzWf
                :type :expr
                :at 1627029435938
                :by |rJG4IHzWf
            :type :expr
            :at 1627028731839
            :by |rJG4IHzWf
          |comp-card $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627047617283) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-card) (:type :leaf) (:at 1627047616001) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |idx) (:type :leaf) (:at 1627047623090) (:by |rJG4IHzWf)
                  |j $ {} (:text |key) (:type :leaf) (:at 1627047629531) (:by |rJG4IHzWf)
                  |r $ {} (:text |on-open) (:type :leaf) (:at 1627047653066) (:by |rJG4IHzWf)
                  |v $ {} (:text |on-close) (:type :leaf) (:at 1627047656145) (:by |rJG4IHzWf)
                :type :expr
                :at 1627047616001
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |[]) (:type :leaf) (:at 1627047679559) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |effect-fading) (:type :leaf) (:at 1627047682778) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627047679844
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |let) (:type :leaf) (:at 1627047648711) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047649109)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047649109) (:text |info)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047649109)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047649109) (:text |get)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047649109) (:text |site-map)
                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047649109) (:text |key)
                        :type :expr
                        :at 1627047649109
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/column) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                      |r $ {} (:text |style-card) (:type :leaf) (:at 1627058025582) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1627058037178) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058037834) (:text |:left)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058037834) (:text |*)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058037834) (:text |+)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058037834) (:text |card-width)
                                                      |r $ {} (:text |4) (:type :leaf) (:at 1627058767437) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627058037834
                                                    :by |rJG4IHzWf
                                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058037834) (:text |idx)
                                                :type :expr
                                                :at 1627058037834
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627058037834
                                            :by |rJG4IHzWf
                                          |n $ {}
                                            :data $ {}
                                              |T $ {} (:text |:height) (:type :leaf) (:at 1627058735851) (:by |rJG4IHzWf)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058053222) (:text |560)
                                            :type :expr
                                            :at 1627058053222
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058046147) (:text |:top)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058046147) (:text |-280)
                                            :type :expr
                                            :at 1627058046147
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058059683) (:text |:width)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058059683) (:text |card-width)
                                            :type :expr
                                            :at 1627058059683
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627058036767
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047618405
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047618405
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:style)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |merge)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |ui/row-parted)
                                    :type :expr
                                    :at 1627047618405
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |span)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |{})
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:class-name)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text "|\"show-on-hover")
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:title)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text "|\"Command + Click to close all")
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |comp-icon)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:x)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |{})
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:color)
                                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |hsl)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |0)
                                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |0)
                                                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |0)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:font-size)
                                              |j $ {} (:text |20) (:type :leaf) (:at 1627057754976) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627047618405
                                            :by |rJG4IHzWf
                                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:cursor)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:pointer)
                                        :type :expr
                                        :at 1627047618405
                                        :by |rJG4IHzWf
                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |fn)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |e)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |d!)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |let)
                                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                :data $ {}
                                                  |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |all?)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |or)
                                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |->)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |e)
                                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:event)
                                                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |.-metaKey)
                                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |->)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |e)
                                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:event)
                                                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |.-ctrlKey)
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |on-close)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |idx)
                                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |all?)
                                                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |d!)
                                    :type :expr
                                    :at 1627047618405
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |<>)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:title)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |info)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |{})
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:font-family)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |ui/font-fancy)
                                      |n $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627058539457) (:by |rJG4IHzWf)
                                          |j $ {} (:text |14) (:type :leaf) (:at 1627058540165) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627058537444
                                        :by |rJG4IHzWf
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:font-weight)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |300)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |:color)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |hsl)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |0)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |0)
                                              |v $ {} (:text |60) (:type :leaf) (:at 1627059797339) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627047618405
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627047618405
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047618405
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |span)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627047618405)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |{})
                            :type :expr
                            :at 1627047618405
                            :by |rJG4IHzWf
                          |t $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1627058273371) (:by |rJG4IHzWf)
                              |j $ {} (:text |nil) (:type :leaf) (:at 1627058274408) (:by |rJG4IHzWf)
                              |r $ {} (:text |8) (:type :leaf) (:at 1627058280920) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627058271879
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |nil?)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047618405) (:text |info)
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |str) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"Unknown data: ") (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                      |r $ {} (:text |key) (:type :leaf) (:at 1627047618405) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047618405
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047618405
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |div)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |{})
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1627059772233) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1627059775112) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1627059776751) (:by |rJG4IHzWf)
                                                  |j $ {} (:text "|\"0 16px") (:type :leaf) (:at 1627059782421) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627059775429
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627059772510
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627059770353
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627048371339
                                    :by |rJG4IHzWf
                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |&)
                                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |->)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |info)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |get)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |:content)
                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |map)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |fn)
                                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |directive)
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |if)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |list?)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |directive)
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |render-content)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |first)
                                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |directive)
                                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |rest)
                                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |directive)
                                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |fn)
                                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |key)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |d!)
                                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |on-open)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |idx)
                                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |key)
                                                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |d!)
                                                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |<>)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048371339)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |str)
                                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text "|\"Unknown ")
                                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048371339) (:text |directive)
                                :type :expr
                                :at 1627048371339
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047618405
                            :by |rJG4IHzWf
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1627058676907) (:by |rJG4IHzWf)
                              |j $ {} (:text |nil) (:type :leaf) (:at 1627058677735) (:by |rJG4IHzWf)
                              |r $ {} (:text |120) (:type :leaf) (:at 1627058683563) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627058675033
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627047618405
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627047647373
                    :by |rJG4IHzWf
                :type :expr
                :at 1627047677758
                :by |rJG4IHzWf
            :type :expr
            :at 1627047616001
            :by |rJG4IHzWf
          |slurp $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1612250802814) (:by |rJG4IHzWf)
              |j $ {} (:text |slurp) (:type :leaf) (:at 1612250801032) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |file) (:type :leaf) (:at 1612250805673) (:by |rJG4IHzWf)
                :type :expr
                :at 1612250801032
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |read-file) (:type :leaf) (:at 1612250819878) (:by |rJG4IHzWf)
                  |j $ {} (:text |file) (:type :leaf) (:at 1612250820901) (:by |rJG4IHzWf)
                :type :expr
                :at 1612250806387
                :by |rJG4IHzWf
            :type :expr
            :at 1612250801032
            :by |rJG4IHzWf
          |comp-cards $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627026603102) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-cards) (:type :leaf) (:at 1627026601038) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |router) (:type :leaf) (:at 1627027497498) (:by |rJG4IHzWf)
                  |b $ {} (:text |on-open) (:type :leaf) (:at 1627027623742) (:by |rJG4IHzWf)
                  |j $ {} (:text |on-close) (:type :leaf) (:at 1627027499116) (:by |rJG4IHzWf)
                :type :expr
                :at 1627026601038
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |list->) (:type :leaf) (:at 1627035503278) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627026608739) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627026611855) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1627027545025) (:by |rJG4IHzWf)
                              |L $ {} (:text |ui/row) (:type :leaf) (:at 1627027545850) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627027539874) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:margin) (:type :leaf) (:at 1627032447132) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"auto 0") (:type :leaf) (:at 1627034625249) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627032444580
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1627047378491) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |*) (:type :leaf) (:at 1627047404883) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |5 $ {} (:text |+) (:type :leaf) (:at 1627047462168) (:by |rJG4IHzWf)
                                              |D $ {} (:text |card-width) (:type :leaf) (:at 1627057450857) (:by |rJG4IHzWf)
                                              |L $ {} (:text |4) (:type :leaf) (:at 1627047424292) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627047421580
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |count) (:type :leaf) (:at 1627047417669) (:by |rJG4IHzWf)
                                              |j $ {} (:text |router) (:type :leaf) (:at 1627047418544) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627047415557
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627047402575
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047376059
                                    :by |rJG4IHzWf
                                  |t $ {}
                                    :data $ {}
                                      |T $ {} (:text |:position) (:type :leaf) (:at 1627047457054) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:relative) (:type :leaf) (:at 1627047458531) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047454741
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:transition-duration) (:type :leaf) (:at 1627047386103) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"300ms") (:type :leaf) (:at 1627057973952) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047380325
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:transition-property) (:type :leaf) (:at 1627047393110) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:width) (:type :leaf) (:at 1627047396116) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047388426
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627027539565
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627027544271
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026609041
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627026608316
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1627027503921) (:by |rJG4IHzWf)
                      |j $ {} (:text |router) (:type :leaf) (:at 1627027506558) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |map-indexed) (:type :leaf) (:at 1627027508955) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627027509778) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |idx) (:type :leaf) (:at 1627027510591) (:by |rJG4IHzWf)
                                  |j $ {} (:text |key) (:type :leaf) (:at 1627027518336) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627027510099
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |[]) (:type :leaf) (:at 1627035510835) (:by |rJG4IHzWf)
                                  |L $ {} (:text |key) (:type :leaf) (:at 1627035516008) (:by |rJG4IHzWf)
                                  |f $ {}
                                    :data $ {}
                                      |T $ {} (:text |comp-card) (:type :leaf) (:at 1627047613098) (:by |rJG4IHzWf)
                                      |j $ {} (:text |idx) (:type :leaf) (:at 1627047625770) (:by |rJG4IHzWf)
                                      |r $ {} (:text |key) (:type :leaf) (:at 1627047626443) (:by |rJG4IHzWf)
                                      |v $ {} (:text |on-open) (:type :leaf) (:at 1627047662389) (:by |rJG4IHzWf)
                                      |x $ {} (:text |on-close) (:type :leaf) (:at 1627047663677) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047611167
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627035510209
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627027509414
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627027506933
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627027503248
                    :by |rJG4IHzWf
                :type :expr
                :at 1627026604514
                :by |rJG4IHzWf
            :type :expr
            :at 1627026601038
            :by |rJG4IHzWf
          |comp-empty $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627026630960) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-empty) (:type :leaf) (:at 1627026629562) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |on-home) (:type :leaf) (:at 1627027267623) (:by |rJG4IHzWf)
                :type :expr
                :at 1627026629562
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1627026635237) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627026635769) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627032428750) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627032430755) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1627032432500) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:auto) (:type :leaf) (:at 1627032434895) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627032431011
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627032430498
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627032426651
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627026635480
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1627026859881) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627026860365) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627026861314) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/center) (:type :leaf) (:at 1627026866058) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627026860599
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026860079
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |comp-avatar)
                          |j $ {} (:text |on-home) (:type :leaf) (:at 1627048620613) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627048504638
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627026859301
                    :by |rJG4IHzWf
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1627026870304) (:by |rJG4IHzWf)
                      |j $ {} (:text |8) (:type :leaf) (:at 1627026873075) (:by |rJG4IHzWf)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1627026873676) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627026869742
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1627026643298) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627026643810) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627026808476) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1627026816196) (:by |rJG4IHzWf)
                                  |T $ {} (:text |ui/center) (:type :leaf) (:at 1627026809590) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627026816893) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1627026818588) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:white) (:type :leaf) (:at 1627026821283) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627026817137
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627026825210) (:by |rJG4IHzWf)
                                          |j $ {} (:text |18) (:type :leaf) (:at 1627048869276) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627026823792
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1627026879602) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"28px") (:type :leaf) (:at 1627027239558) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627026877368
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:text-shadow) (:type :leaf) (:at 1627027191949) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"1px 1px 4px black") (:type :leaf) (:at 1627027222336) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627027189179
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627026816606
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627026814642
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627026806818
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026643524
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1627026640370) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"题叶") (:type :leaf) (:at 1627026801851) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627026639840
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1627026837333) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"@jiyinyiyong") (:type :leaf) (:at 1627026849873) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627026893414) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-size) (:type :leaf) (:at 1627026894952) (:by |rJG4IHzWf)
                                  |j $ {} (:text |14) (:type :leaf) (:at 1627026897733) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627026893641
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627026893017
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627026835753
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627026642690
                    :by |rJG4IHzWf
                :type :expr
                :at 1627026632348
                :by |rJG4IHzWf
            :type :expr
            :at 1627026629562
            :by |rJG4IHzWf
          |comp-avatar $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627048501140) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-avatar) (:type :leaf) (:at 1627048498616) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |on-home) (:type :leaf) (:at 1627048617638) (:by |rJG4IHzWf)
                :type :expr
                :at 1627048502514
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |D $ {} (:text |[]) (:type :leaf) (:at 1627048508110) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |effect-bump) (:type :leaf) (:at 1627048514631) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627048516101
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627048498616) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |{})
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:style)
                              |j $ {}
                                :data $ {}
                                  |yT $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:border)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text "|\"4px solid white")
                                  |yj $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:box-shadow)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text "|\"1px 1px 4px black")
                                  |yn $ {}
                                    :data $ {}
                                      |T $ {} (:text |:transition-duration) (:type :leaf) (:at 1627048645229) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"300ms") (:type :leaf) (:at 1627048671029) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627048640483
                                    :by |rJG4IHzWf
                                  |yp $ {}
                                    :data $ {}
                                      |T $ {} (:text |:transition-timing-function) (:type :leaf) (:at 1627048792138) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"cubic-bezier(0.54, 0.17, 0.53, 1.88)") (:type :leaf) (:at 1627048846166) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627048777785
                                    :by |rJG4IHzWf
                                  |yr $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:cursor)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:pointer)
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |{})
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:background-image)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text "|\"url(https://cdn.tiye.me/logo/tiye.jpg)")
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:background-size)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text "|\"cover")
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:width)
                                      |j $ {} (:text |120) (:type :leaf) (:at 1627057812365) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627048498616
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:height)
                                      |j $ {} (:text |120) (:type :leaf) (:at 1627057810177) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627048498616
                                    :by |rJG4IHzWf
                                  |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:border-radius)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text "|\"50%")
                                :type :expr
                                :at 1627048498616
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627048498616
                            :by |rJG4IHzWf
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:on-click)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |fn)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |e)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |d!)
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627048498616)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |on-home)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |nil)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |:home)
                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048498616) (:text |d!)
                        :type :expr
                        :at 1627048498616
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627048498616
                    :by |rJG4IHzWf
                :type :expr
                :at 1627048506312
                :by |rJG4IHzWf
            :type :expr
            :at 1627048498616
            :by |rJG4IHzWf
          |site-map $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627027478202) (:by |rJG4IHzWf)
              |j $ {} (:text |site-map) (:type :leaf) (:at 1627027478202) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1627027479571) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627027479571) (:text |slurp)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627027479571) (:text "|\"data/meta.cirru")
                    :type :expr
                    :at 1627027479571
                    :by |rJG4IHzWf
                :type :expr
                :at 1627027479571
                :by |rJG4IHzWf
            :type :expr
            :at 1627027478202
            :by |rJG4IHzWf
          |effect-bump $ {}
            :data $ {}
              |T $ {} (:text |defeffect) (:type :leaf) (:at 1627048518391) (:by |rJG4IHzWf)
              |j $ {} (:text |effect-bump) (:type :leaf) (:at 1627048516646) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627048516646
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |action) (:type :leaf) (:at 1627048521789) (:by |rJG4IHzWf)
                  |j $ {} (:text |el) (:type :leaf) (:at 1627048522030) (:by |rJG4IHzWf)
                  |r $ {} (:text |at?) (:type :leaf) (:at 1627048524168) (:by |rJG4IHzWf)
                :type :expr
                :at 1627048519759
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627048526597) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |=) (:type :leaf) (:at 1627048528229) (:by |rJG4IHzWf)
                      |T $ {} (:text |action) (:type :leaf) (:at 1627048527374) (:by |rJG4IHzWf)
                      |j $ {} (:text |:mount) (:type :leaf) (:at 1627048531199) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627048527643
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1627048585366) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1627048542326) (:by |rJG4IHzWf)
                          |j $ {} (:text |el) (:type :leaf) (:at 1627048542792) (:by |rJG4IHzWf)
                          |r $ {} (:text |.-style) (:type :leaf) (:at 1627048544571) (:by |rJG4IHzWf)
                          |v $ {} (:text |.-scale) (:type :leaf) (:at 1627048548162) (:by |rJG4IHzWf)
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |set!) (:type :leaf) (:at 1627048549975) (:by |rJG4IHzWf)
                              |j $ {} (:text |0.6) (:type :leaf) (:at 1627059040386) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627048550572
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627048541929
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627048592609) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |fn) (:type :leaf) (:at 1627048595240) (:by |rJG4IHzWf)
                              |L $ {}
                                :data $ {}
                                :type :expr
                                :at 1627048598674
                                :by |rJG4IHzWf
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1627048542326) (:by |rJG4IHzWf)
                                  |j $ {} (:text |el) (:type :leaf) (:at 1627048542792) (:by |rJG4IHzWf)
                                  |r $ {} (:text |.-style) (:type :leaf) (:at 1627048544571) (:by |rJG4IHzWf)
                                  |v $ {} (:text |.-scale) (:type :leaf) (:at 1627048548162) (:by |rJG4IHzWf)
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |set!) (:type :leaf) (:at 1627048549975) (:by |rJG4IHzWf)
                                      |j $ {} (:text |1) (:type :leaf) (:at 1627048607453) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627048550572
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627048541929
                                :by |rJG4IHzWf
                              |j $ {} (:text |0) (:type :leaf) (:at 1627048603612) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627048594782
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627048587020
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627048584923
                    :by |rJG4IHzWf
                :type :expr
                :at 1627048525375
                :by |rJG4IHzWf
            :type :expr
            :at 1627048516646
            :by |rJG4IHzWf
          |card-width $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627057354005) (:by |rJG4IHzWf)
              |j $ {} (:text |card-width) (:type :leaf) (:at 1627057354005) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |js/Math.min) (:type :leaf) (:at 1627057358989) (:by |rJG4IHzWf)
                  |j $ {} (:text |400) (:type :leaf) (:at 1627058932404) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |-) (:type :leaf) (:at 1627057371081) (:by |rJG4IHzWf)
                      |j $ {} (:text |js/window.innerWidth) (:type :leaf) (:at 1627057374809) (:by |rJG4IHzWf)
                      |r $ {} (:text |40) (:type :leaf) (:at 1627057375360) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627057363880
                    :by |rJG4IHzWf
                :type :expr
                :at 1627057354005
                :by |rJG4IHzWf
            :type :expr
            :at 1627057354005
            :by |rJG4IHzWf
          |effect-fading $ {}
            :data $ {}
              |T $ {} (:text |defeffect) (:type :leaf) (:at 1627047685524) (:by |rJG4IHzWf)
              |j $ {} (:text |effect-fading) (:type :leaf) (:at 1627047683836) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627047683836
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |action) (:type :leaf) (:at 1627047688942) (:by |rJG4IHzWf)
                  |j $ {} (:text |el) (:type :leaf) (:at 1627047689437) (:by |rJG4IHzWf)
                  |r $ {} (:text |at?) (:type :leaf) (:at 1627047691493) (:by |rJG4IHzWf)
                :type :expr
                :at 1627047687076
                :by |rJG4IHzWf
              |y $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627047726893) (:by |rJG4IHzWf)
                  |j $ {} (:text |action) (:type :leaf) (:at 1627047728278) (:by |rJG4IHzWf)
                  |r $ {} (:text |nil) (:type :leaf) (:at 1627047731660) (:by |rJG4IHzWf)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:mount) (:type :leaf) (:at 1627047735532) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |do) (:type :leaf) (:at 1627047740235) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1627047748172) (:by |rJG4IHzWf)
                              |j $ {} (:text |el) (:type :leaf) (:at 1627047748925) (:by |rJG4IHzWf)
                              |r $ {} (:text |.-style) (:type :leaf) (:at 1627047755737) (:by |rJG4IHzWf)
                              |v $ {} (:text |.-opacity) (:type :leaf) (:at 1627047763560) (:by |rJG4IHzWf)
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |set!) (:type :leaf) (:at 1627047765696) (:by |rJG4IHzWf)
                                  |j $ {} (:text |0.1) (:type :leaf) (:at 1627047828344) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627047765031
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047740636
                            :by |rJG4IHzWf
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1627047748172) (:by |rJG4IHzWf)
                              |j $ {} (:text |el) (:type :leaf) (:at 1627047748925) (:by |rJG4IHzWf)
                              |r $ {} (:text |.-style) (:type :leaf) (:at 1627047755737) (:by |rJG4IHzWf)
                              |v $ {} (:text |.-translate) (:type :leaf) (:at 1627048157098) (:by |rJG4IHzWf)
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |set!) (:type :leaf) (:at 1627047765696) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"-40px 0") (:type :leaf) (:at 1627048211147) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627047765031
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047740636
                            :by |rJG4IHzWf
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |.!scrollIntoView) (:type :leaf) (:at 1627048936610) (:by |rJG4IHzWf)
                              |j $ {} (:text |el) (:type :leaf) (:at 1627048938308) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627048932512
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627047792868) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627047775131) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                    :type :expr
                                    :at 1627047775349
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047779055) (:text |->)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047779055) (:text |el)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047779055) (:text |.-style)
                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047779055) (:text |.-opacity)
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627047779055) (:text |set!)
                                          |j $ {} (:text |1) (:type :leaf) (:at 1627047780937) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627047779055
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047779055
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048167614) (:text |->)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048167614) (:text |el)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048167614) (:text |.-style)
                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048167614) (:text |.-translate)
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048167614) (:text |set!)
                                          |j $ {} (:text "|\"0px 0") (:type :leaf) (:at 1627048170421) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627048167614
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627048167614
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047772960
                                :by |rJG4IHzWf
                              |r $ {} (:text |0) (:type :leaf) (:at 1627047807036) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627047770688
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627047736021
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627047732023
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:unmount) (:type :leaf) (:at 1627047854961) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |let) (:type :leaf) (:at 1627047865054) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |el') (:type :leaf) (:at 1627047867456) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |.!cloneNode) (:type :leaf) (:at 1627047969883) (:by |rJG4IHzWf)
                                      |T $ {} (:text |el) (:type :leaf) (:at 1627047868243) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047867846
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047866319
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047865269
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |->) (:type :leaf) (:at 1627047881750) (:by |rJG4IHzWf)
                              |T $ {} (:text |el) (:type :leaf) (:at 1627047876485) (:by |rJG4IHzWf)
                              |j $ {} (:text |.-parentElement) (:type :leaf) (:at 1627047884899) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.!appendChild) (:type :leaf) (:at 1627047889631) (:by |rJG4IHzWf)
                                  |j $ {} (:text |el') (:type :leaf) (:at 1627047891204) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627047886321
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627047876094
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |D $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627048081733) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1627048086810) (:by |rJG4IHzWf)
                                  |L $ {}
                                    :data $ {}
                                    :type :expr
                                    :at 1627048087046
                                    :by |rJG4IHzWf
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |->) (:type :leaf) (:at 1627047898858) (:by |rJG4IHzWf)
                                      |j $ {} (:text |el') (:type :leaf) (:at 1627047899927) (:by |rJG4IHzWf)
                                      |r $ {} (:text |.-style) (:type :leaf) (:at 1627047904136) (:by |rJG4IHzWf)
                                      |v $ {} (:text |.-opacity) (:type :leaf) (:at 1627047912158) (:by |rJG4IHzWf)
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |set!) (:type :leaf) (:at 1627047913771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |0.01) (:type :leaf) (:at 1627048302095) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627047913041
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627047898225
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048187117) (:text |->)
                                      |j $ {} (:text |el') (:type :leaf) (:at 1627048220703) (:by |rJG4IHzWf)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048187117) (:text |.-style)
                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048187117) (:text |.-translate)
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627048187117) (:text |set!)
                                          |j $ {} (:text "|\"-40px 0") (:type :leaf) (:at 1627048208051) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627048187117
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627048187117
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627048086340
                                :by |rJG4IHzWf
                              |j $ {} (:text |10) (:type :leaf) (:at 1627048096615) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627048078849
                            :by |rJG4IHzWf
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627047921832) (:by |rJG4IHzWf)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627047925832) (:by |rJG4IHzWf)
                                  |b $ {}
                                    :data $ {}
                                    :type :expr
                                    :at 1627048001492
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |.!remove) (:type :leaf) (:at 1627047936395) (:by |rJG4IHzWf)
                                      |j $ {} (:text |el') (:type :leaf) (:at 1627047937927) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627047926258
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627047925464
                                :by |rJG4IHzWf
                              |j $ {} (:text |200) (:type :leaf) (:at 1627048420726) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627047920009
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627047855196
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627047852981
                    :by |rJG4IHzWf
                :type :expr
                :at 1627047720000
                :by |rJG4IHzWf
            :type :expr
            :at 1627047683836
            :by |rJG4IHzWf
          |style-card $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627058026115) (:by |rJG4IHzWf)
              |j $ {} (:text |style-card) (:type :leaf) (:at 1627058026115) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |yT $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:border-radius)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text "|\"2px")
                  |yj $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:border)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text "|\"2px solid white")
                  |yr $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:margin-right)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |4)
                  |yv $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:transition-duration)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text "|\"200ms")
                  |yx $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:position)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:absolute)
                  |T $ {} (:text |{}) (:type :leaf) (:at 1627058026934) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:background-color)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |hsl)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |0)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |0)
                          |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |100)
                          |x $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |0.96)
                    :type :expr
                    :at 1627058026934
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:padding)
                      |j $ {} (:text "|\"0px 4px") (:type :leaf) (:at 1627059762500) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627058026934
                    :by |rJG4IHzWf
                  |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627058026934)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text |:box-shadow)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627058026934) (:text "|\"1px 1px 4px black")
                :type :expr
                :at 1627058026934
                :by |rJG4IHzWf
            :type :expr
            :at 1627058026115
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md-block) (:type :leaf) (:at 1533404457935) (:by |rJG4IHzWf) (:id |BJf0cVSMdz)
                        |r $ {} (:text |comp-md) (:type :leaf) (:at 1533404811676) (:by |rJG4IHzWf) (:id |wca-_R9yi)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root) (:id |SJxSfaoE5fleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root) (:id |rkb8MTo45G)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root) (:id |H1SuzTjV5M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root) (:id |S1MtGTiE5G)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root) (:id |HkUKG6oNcG)
                      :type :expr
                      :at 1521954065004
                      :by |root
                      :id |S1QtM6j4cz
                  :type :expr
                  :at 1521954061310
                  :by |root
                  :id |SJxSfaoE5f
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |feather.core) (:type :leaf) (:at 1627028333186) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627028334469) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |comp-icon) (:type :leaf) (:at 1627028337126) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627028334649
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627028330516
                  :by |rJG4IHzWf
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |f $ {}
                  :data $ {}
                    |T $ {} (:text |respo.util.format) (:type :leaf) (:at 1627028398127) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627028398871) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1627028399471) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627028399125
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627028393899
                  :by |rJG4IHzWf
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1558169043785) (:by |rJG4IHzWf) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |yT $ {} (:text |a) (:type :leaf) (:at 1627029616846) (:by |rJG4IHzWf)
                        |yj $ {} (:text |list->) (:type :leaf) (:at 1627035506063) (:by |rJG4IHzWf)
                        |yr $ {} (:text |defeffect) (:type :leaf) (:at 1627047706880) (:by |rJG4IHzWf)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:text |>>) (:type :leaf) (:at 1587315854011) (:by |rJG4IHzWf) (:id |r5gYWBqFJe)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507461846175) (:type :leaf) (:id |SkACcYv2-leaf)
                    |j $ {} (:author |root) (:text |reel.comp.reel) (:time 1507461855480) (:type :leaf) (:id |HJfRR5KPh-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507461856264) (:type :leaf) (:id |ryOyjtwnb)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507461856706) (:type :leaf) (:id |HJ8u1otP3W)
                        |j $ {} (:author |root) (:text |comp-reel) (:time 1507461858342) (:type :leaf) (:id |r1bt1sKwhZ)
                      :time 1507461856484
                      :type :expr
                      :id |BJwOyitPhW
                  :time 1507461845717
                  :type :expr
                  :id |SkACcYv2-
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |ryBoejdY5arb)
              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1499755354983) (:type :leaf) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Hyhixo_F9prb)
                        :time 1499755354983
                        :type :expr
                        :id |H1iieoOKqTSZ
                    :time 1499755354983
                    :type :expr
                    :id |BkYogiuK9TBZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359514709) (:type :leaf) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:author |rJG4IHzWf) (:text ||) (:time 1512359516026) (:type :leaf) (:id |BJy2go_tcaBZ)
                    :time 1499755354983
                    :type :expr
                    :id |B1aixsdK9pHb
                :time 1499755354983
                :type :expr
                :id |ryviloOFc6B-
            :time 1499755354983
            :type :expr
            :id |HkEjgouFcpBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |HyWslouK56HZ)
            |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |SkGsgsOtcTBb)
          :time 1499755354983
          :type :expr
          :id |rJxieodtqarW
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |H1U1esuY5TBZ)
              |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |r1YyxidF96rW)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |r1cJxouK5aSZ)
                  |r $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root) (:id |S1gUCbfy_G)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root) (:id |ryzsAWMkdG)
                :time 1499755354983
                :type :expr
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |case-default) (:time 1499755354983) (:type :leaf) (:at 1627027375669) (:by |rJG4IHzWf) (:id |ry61gjOFqpH-)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
                  |l $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1627027383977) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627027385006) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown op") (:type :leaf) (:at 1627027387818) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1627027396951) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627027384265
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1627027378603) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627027379057
                    :by |rJG4IHzWf
                  |n $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1507399855618) (:type :leaf) (:id |HJxX2OqUh-)
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |update-states) (:time 1507399857991) (:type :leaf) (:at 1587315646181) (:by |rJG4IHzWf) (:id |rylOn_5I2Z)
                          |j $ {} (:author |root) (:text |store) (:time 1507399858922) (:type :leaf) (:id |ByE92uq82b)
                          |n $ {} (:author |root) (:text |op-data) (:time 1507400135515) (:type :leaf) (:at 1587315648899) (:by |rJG4IHzWf) (:id |ByxCTYqL3W)
                        :time 1507399856471
                        :type :expr
                        :id |Sk-_hdqU2b
                    :time 1507399852251
                    :type :expr
                    :id |ryNh_5L3b
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359657160) (:type :leaf) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359660859) (:type :leaf) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |S1kexiuF9arZ
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root) (:id |SkNl1ac8zleaf)
                      |j $ {} (:text |op-data) (:type :leaf) (:at 1518157553355) (:by |root) (:id |SJzueyp5Iz)
                    :type :expr
                    :at 1518157547521
                    :by |root
                    :id |SkNl1ac8z
                :time 1499755354983
                :type :expr
                :id |BJ2yxjOKqpHb
            :time 1499755354983
            :type :expr
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkG1lo_t9pHZ)
            |j $ {} (:author |root) (:text |app.updater) (:time 1499755354983) (:type :leaf) (:id |B17kxjdFq6r-)
            |r $ {} (:author |root)
              :data $ {}
                |T $ {} (:author |root) (:text |:require) (:time 1507399864640) (:type :leaf) (:id |H1xR2d5Uh-)
                |j $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399865654) (:type :leaf) (:id |rkf-6u9InW)
                    |j $ {} (:author |root) (:text |respo.cursor) (:time 1507399873143) (:type :leaf) (:id |Hkefpu983W)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399874041) (:type :leaf) (:id |rkrYaO5UnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399874938) (:type :leaf) (:id |BJBqpOq8hZ)
                        |j $ {} (:author |root) (:text |update-states) (:time 1507399875675) (:type :leaf) (:at 1587315643747) (:by |rJG4IHzWf) (:id |rJbi6_c83-)
                      :time 1507399874214
                      :type :expr
                      :id |BkUcpdc83b
                  :time 1507399864883
                  :type :expr
                  :id |r17bT_cLnZ
              :time 1507399862664
              :type :expr
              :id |rykTu9L2Z
          :time 1499755354983
          :type :expr
          :id |B1Z1gjdFqaBZ
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |HkDssOFcaBb)
              |j $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |Sy_osdKc6Hb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |B1YjiOY5TSb
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:at 1627018233247) (:by |rJG4IHzWf) (:id |B12oiuFcTH-)
                  |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |BJpssOY5arW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |ry12out96SZ)
                      |j $ {} (:author |root) (:text |@*reel) (:time 1507400119272) (:type :leaf) (:id |S1ehi_tcTSW)
                    :time 1499755354983
                    :type :expr
                    :id |SkCijOK9TBW
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1627018236195) (:by |rJG4IHzWf)
                :time 1499755354983
                :type :expr
                :id |Hkisi_K9aBb
            :time 1499755354983
            :type :expr
            :id |rkIjoOt9TSZ
          |mount-target $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |S1oAjut5TBZ)
              |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |rJ2Cj_t5aBZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |.querySelector) (:time 1499755354983) (:type :leaf) (:id |HyRCs_tqpH-)
                  |j $ {} (:author |root) (:text |js/document) (:time 1499755354983) (:type :leaf) (:id |ryy1ejdFq6SW)
                  |r $ {} (:author |root) (:text ||.app) (:time 1499755354983) (:type :leaf) (:id |B1gygs_t56rW)
                :time 1499755354983
                :type :expr
                :id |HJpAjOY5arZ
            :time 1499755354983
            :type :expr
            :id |B1qRjdF9aH-
          |*reel $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defatom) (:time 1499755354983) (:type :leaf) (:at 1612251000805) (:by |rJG4IHzWf) (:id |Hym2s_F9Tr-)
              |j $ {} (:author |root) (:text |*reel) (:time 1499755354983) (:type :leaf) (:id |rJEhsuY5arW)
              |r $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |->) (:time 1507399778895) (:type :leaf) (:id |Bkx5wOq83b)
                  |T $ {} (:author |root) (:text |reel-schema/reel) (:time 1507399776350) (:type :leaf) (:id |SkvhsuKqaBW)
                  |j $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:base) (:time 1507401405076) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |H1hvucUnZ
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:store) (:time 1507399793097) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |S1P__5I3b
                :time 1507399777531
                :type :expr
                :id |HJ9Pd5U3-
            :time 1499755354983
            :type :expr
            :id |Hkf2sOYqpBb
          |main! $ {}
            :data $ {}
              |xT $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1627018199492) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1627018201854) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1627018209821) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627018202616
                    :by |rJG4IHzWf
                :type :expr
                :at 1627018199061
                :by |rJG4IHzWf
              |yT $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |render-app!)
                :type :expr
                :at 1627018187025
                :by |rJG4IHzWf
              |yj $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |add-watch)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |*reel)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |:changes)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |fn)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1627018243036) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1627018243509) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627018187025
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |render-app!)
                        :type :expr
                        :at 1627018187025
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627018187025
                    :by |rJG4IHzWf
                :type :expr
                :at 1627018187025
                :by |rJG4IHzWf
              |yr $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |listen-devtools!)
                  |j $ {} (:text ||k) (:type :leaf) (:at 1627018246357) (:by |rJG4IHzWf)
                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |dispatch!)
                :type :expr
                :at 1627018187025
                :by |rJG4IHzWf
              |yv $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627018187025)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |println)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text "||App started.")
              |T $ {} (:text |defn) (:type :leaf) (:at 1613371059437) (:by |rJG4IHzWf)
              |j $ {} (:text |main!) (:type :leaf) (:at 1613371059437) (:by |rJG4IHzWf)
              |v $ {}
                :data $ {}
                :type :expr
                :at 1627018187025
                :by |rJG4IHzWf
              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627018187025)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |println)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text "|\"Running mode:")
                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627018187025)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |if)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text |config/dev?)
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text "|\"dev")
                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627018187025) (:text "|\"release")
            :type :expr
            :at 1613371059437
            :by |rJG4IHzWf
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |rJ5_idt5TBW)
              |j $ {} (:author |root) (:text |dispatch!) (:time 1499755354983) (:type :leaf) (:id |B1i_oOY9pHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyT_suY56Bb)
                  |j $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |S1AdidYc6Hb)
                :time 1499755354983
                :type :expr
                :id |BJhOjOYqpSW
              |t $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1558168945053) (:by |rJG4IHzWf) (:id |VVS6pPHQHl)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1558168945053) (:by |rJG4IHzWf) (:id |YIE9Mo-wWS)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1558168945053) (:by |rJG4IHzWf) (:id |YLHfh72--h)
                      |j $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1558168945053) (:by |rJG4IHzWf) (:id |idCORGLBwR)
                      |r $ {} (:text |op) (:type :leaf) (:at 1558168945053) (:by |rJG4IHzWf) (:id |HgTTTPdPgd)
                    :type :expr
                    :at 1558168945053
                    :by |rJG4IHzWf
                    :id |E_ZxsUfxgp
                :type :expr
                :at 1558168945053
                :by |rJG4IHzWf
                :id |AcOWiU7pN6
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reset!) (:time 1499755354983) (:type :leaf) (:id |H1w9iOt56S-)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399899641) (:type :leaf) (:id |rJOcjdYqaHW)
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |reel-updater) (:time 1507399887573) (:type :leaf) (:id |HkB0Oc8n-leaf)
                      |j $ {} (:author |root) (:text |updater) (:time 1507399888500) (:type :leaf) (:id |r1eu0dqL2Z)
                      |r $ {} (:author |root) (:text |@*reel) (:time 1507399891576) (:type :leaf) (:id |r1tRdqU3W)
                      |v $ {} (:author |root) (:text |op) (:time 1507399892687) (:type :leaf) (:id |S1e3CO9I3W)
                      |x $ {} (:author |root) (:text |op-data) (:time 1507399894594) (:type :leaf) (:id |HklaCd58nb)
                    :time 1507399884621
                    :type :expr
                    :id |rkLeq39LG
                :time 1499755354983
                :type :expr
                :id |BJg_echcIM
            :time 1499755354983
            :type :expr
            :id |SytOodK9pSZ
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1627018118886) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1627018120728) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1627018121569
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1627018129485) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |some?) (:type :leaf) (:at 1627018131035) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1627018140058) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627018129724
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |tip!) (:type :leaf) (:at 1627018141865) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"error") (:type :leaf) (:at 1627018144287) (:by |rJG4IHzWf)
                      |r $ {} (:text |build-errors) (:type :leaf) (:at 1627018147114) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627018140977
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |vT $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |:changes)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627025042961)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |fn)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627025042961)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |r)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |p)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627025042961)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025042961) (:text |render-app!)
                        :type :expr
                        :at 1627025042961
                        :by |rJG4IHzWf
                      |yT $ {}
                        :data $ {}
                          |T $ {} (:text |tip!) (:type :leaf) (:at 1627018151451) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1627018153471) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1627018154756) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627018149995
                        :by |rJG4IHzWf
                      |Q $ {} (:text |do) (:type :leaf) (:at 1627018128210) (:by |rJG4IHzWf)
                      |u $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |clear-cache!) (:time 1507461702453) (:type :leaf) (:id |H1xoB5tw2Wleaf)
                        :time 1507461699387
                        :type :expr
                        :id |H1xoB5tw2W
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1627025035048) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1627025037483) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1627025049708) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627025033676
                        :by |rJG4IHzWf
                      |w $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |reset!) (:time 1507461706990) (:type :leaf) (:id |r1ZgIcFvhWleaf)
                          |j $ {} (:author |root) (:text |*reel) (:time 1507461708965) (:type :leaf) (:id |B1mX85Yv3-)
                          |r $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |refresh-reel) (:time 1507461730190) (:type :leaf) (:id |HkIL9YDh-)
                              |j $ {} (:author |root) (:text |@*reel) (:time 1507461719097) (:type :leaf) (:id |B1nL9Yv3W)
                              |r $ {} (:author |root) (:text |schema/store) (:time 1507461721870) (:type :leaf) (:id |Bylwqtw3W)
                              |v $ {} (:author |root) (:text |updater) (:time 1507461722724) (:type :leaf) (:id |SkQfP9twhZ)
                            :time 1507461710020
                            :type :expr
                            :id |Sye88ctw2W
                        :time 1507461704162
                        :type :expr
                        :id |r1ZgIcFvhW
                      |y $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |println) (:time 1499755354983) (:type :leaf) (:id |HyVosdFqaBb)
                          |j $ {} (:author |root) (:text "||Code updated.") (:time 1499755354983) (:type :leaf) (:id |BkHisOK5TSZ)
                        :time 1499755354983
                        :type :expr
                        :id |HJXoiuY9THb
                    :time 1499755354983
                    :type :expr
                    :id |Sk5qouK9aBZ
                :type :expr
                :at 1627018129018
                :by |rJG4IHzWf
            :type :expr
            :at 1627018118128
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |SkGujdK5aSW
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |S1ESouY9pSW)
            |j $ {} (:author |root) (:text |app.main) (:time 1499755354983) (:type :leaf) (:id |HJHriOFcTHZ)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1613371297729) (:by |rJG4IHzWf)
                    |j $ {} (:text |app.page) (:type :leaf) (:at 1613371298909) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1613371300017) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1613371300318) (:by |rJG4IHzWf)
                        |j $ {} (:text |ssr-processing!) (:type :leaf) (:at 1613371300938) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1613371300175
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1613371295209
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1627018094233) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1627018096115) (:by |rJG4IHzWf)
                    |r $ {} (:text |tip!) (:type :leaf) (:at 1627018097851) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627018092236
                  :by |rJG4IHzWf
                |yyr $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1627018106527) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1627018109614) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1627018112174) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627018099236
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJ0DiuF5aSZ)
                    |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |rJJOoOY5pS-)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |rye_i_FqTBb)
                    |v $ {} (:author |root) (:text |schema) (:time 1499755354983) (:type :leaf) (:id |SJbujOK96rW)
                  :time 1499755354983
                  :type :expr
                  :id |BJawo_tcaHW
                |yj $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399674614) (:type :leaf) (:id |Byez-dqLhbleaf)
                    |j $ {} (:author |root) (:text |reel.util) (:time 1507399678694) (:type :leaf) (:id |r1-XZO5LnW)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399680625) (:type :leaf) (:id |BkuW_qLnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399681518) (:type :leaf) (:id |ByeF-uqI3W)
                        |j $ {} (:author |root) (:text |listen-devtools!) (:time 1507399682662) (:type :leaf) (:at 1518156292092) (:by |root) (:id |Syxc-_cI3b)
                      :time 1507399680857
                      :type :expr
                      :id |ByZK-uq83b
                  :time 1507399674125
                  :type :expr
                  :id |Byez-dqLhb
                |yr $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399684313) (:type :leaf) (:id |HyxhW_582-leaf)
                    |j $ {} (:author |root) (:text |reel.core) (:time 1507399687162) (:type :leaf) (:id |rkT-OcUn-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399688098) (:type :leaf) (:id |Bkr1MOqL2Z)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399688928) (:type :leaf) (:id |BkEgM_qU3W)
                        |j $ {} (:author |root) (:text |reel-updater) (:time 1507399691010) (:type :leaf) (:id |Bk--G_q8h-)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root) (:id |By_Z935Uz)
                      :time 1507399688322
                      :type :expr
                      :id |BkHgM_q8hW
                  :time 1507399683930
                  :type :expr
                  :id |HyxhW_582-
                |yv $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399715600) (:type :leaf) (:id |rJgi7OcU3Wleaf)
                    |j $ {} (:author |root) (:text |reel.schema) (:time 1507399717674) (:type :leaf) (:id |BybnXdcIhW)
                    |r $ {} (:author |root) (:text |:as) (:time 1507399755750) (:type :leaf) (:id |rJ-Cmu583Z)
                    |v $ {} (:author |root) (:text |reel-schema) (:time 1507399757678) (:type :leaf) (:id |Hk-NL_q8n-)
                  :time 1507399715229
                  :type :expr
                  :id |rJgi7OcU3W
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1518157534486) (:by |root) (:id |HkZI1kT9LMleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1518157537473) (:by |root) (:id |Hyvk1T5Lz)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1518157538193) (:by |root) (:id |Hy5yy698G)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1518157538636) (:by |root) (:id |B1Ucy1TcUG)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1518157540981) (:by |root) (:id |B1Zj1ypq8G)
                      :type :expr
                      :at 1518157538431
                      :by |root
                      :id |BJvckk6cLz
                  :type :expr
                  :at 1518157534012
                  :by |root
                  :id |HkZI1kT9LM
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788303612) (:by |root) (:id |SkewMXh6y7leaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root) (:id |SkbOz72T17)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root) (:id |SJNYz7n6Jm)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root) (:id |ry7cM73ak7)
                  :type :expr
                  :at 1527788302920
                  :by |root
                  :id |SkewMXh6y7
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |SkPHjOK96rZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ByKHidF56r-)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:id |H15HidK9Tr-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |ByiSsOF9THZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rJ6BiuF96BZ)
                        |j $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:id |rJAri_KcTS-)
                        |r $ {} (:author |root) (:text |clear-cache!) (:time 1499755354983) (:type :leaf) (:id |Hkk8sOFq6rb)
                        |v $ {} (:author |root) (:text |realize-ssr!) (:time 1499755354983) (:type :leaf) (:id |Byx8i_F9TH-)
                      :time 1499755354983
                      :type :expr
                      :id |rJhBiuK5aHb
                  :time 1499755354983
                  :type :expr
                  :id |Hk_HouY9prW
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkYUj_t9pBW)
                    |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |SyqIj_Y9aHZ)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BkoIjut9pHW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkTLj_FcpBW)
                        |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |Hy0IidKqTr-)
                      :time 1499755354983
                      :type :expr
                      :id |Sy2IsOYqaSZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy_IiOKqprZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ryDvs_K96rb)
                    |j $ {} (:author |root) (:text |app.updater) (:time 1508556737455) (:type :leaf) (:id |B1_vsuK96r-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BJKvodKcTB-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJjDjuFqpSb)
                        |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJhwiOY5TB-)
                      :time 1499755354983
                      :type :expr
                      :id |Hy5woOKqTHb
                  :time 1499755354983
                  :type :expr
                  :id |SyLDodYcTS-
              :time 1499755354983
              :type :expr
              :id |BJ8SodF9prb
          :time 1499755354983
          :type :expr
          :id |rkQBo_Yc6Hb
      |app.page $ {}
        :defs $ {}
          |base-info $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |HJ0mlsuYcpr-)
              |j $ {} (:author |root) (:text |base-info) (:time 1499755354983) (:type :leaf) (:id |SyJVgo_tqTBb)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |SkWNgiOY96HZ)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:title) (:time 1499755354983) (:type :leaf) (:id |HJmVxjdKqTrW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |:title) (:time 1499755354983) (:type :leaf) (:at 1527868489424) (:by |root) (:id |HJN4lj_tq6BW)
                          |j $ {} (:text |config/site) (:type :leaf) (:at 1527868490774) (:by |root) (:id |H1G831yeQ)
                        :type :expr
                        :at 1527868487079
                        :by |root
                        :id |SJz1U31yg7
                    :time 1499755354983
                    :type :expr
                    :id |ryG4xsuF9pSb
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:icon) (:time 1499755354983) (:type :leaf) (:id |Sy8VgidK5pr-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |:icon) (:time 1508248023135) (:type :leaf) (:at 1527868493420) (:by |root) (:id |ByDVlsuY56r-)
                          |j $ {} (:text |config/site) (:type :leaf) (:at 1527868495181) (:by |root) (:id |SJUI3JyeQ)
                        :type :expr
                        :at 1527868492888
                        :by |root
                        :id |H1rIny1eQ
                    :time 1499755354983
                    :type :expr
                    :id |r1S4xiuKqpBb
                  |v $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:ssr) (:time 1499755354983) (:type :leaf) (:id |SkFEli_F56HW)
                      |j $ {} (:author |root) (:text |nil) (:time 1499755354983) (:type :leaf) (:id |H1qVgsOFqTHb)
                    :time 1499755354983
                    :type :expr
                    :id |S1_ExidK5aBb
                  |x $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:inline-html) (:time 1506669345582) (:type :leaf) (:id |Bk3Vej_KcTrb)
                      |j $ {} (:author |root) (:text |nil) (:time 1499755354983) (:type :leaf) (:id |Hkp4ls_KcaHb)
                    :time 1499755354983
                    :type :expr
                    :id |SyiEeodYcTH-
                :time 1499755354983
                :type :expr
                :id |ryx4xo_tcTrb
            :time 1499755354983
            :type :expr
            :id |BJaXgs_YcTH-
          |ssr-processing! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1613371304176) (:by |rJG4IHzWf)
              |j $ {} (:text |ssr-processing!) (:type :leaf) (:at 1613371303034) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1613371303034
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                              |j $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |assoc) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:base) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                  |r $ {} (:text |schema/store) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1613373497077
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |assoc) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:store) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                  |r $ {} (:text |schema/store) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1613373497077
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1613373497077
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1613373497077
                        :by |rJG4IHzWf
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |file) (:type :leaf) (:at 1613374111972) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"dist/index.html") (:type :leaf) (:at 1613374109731) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1613374103403
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |html-content) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |make-string) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-container) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                  |j $ {} (:text |reel) (:type :leaf) (:at 1613373497077) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1613373497077
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1613373497077
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1613373497077
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |content) (:type :leaf) (:at 1613374026506) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fs/readFileSync) (:type :leaf) (:at 1613374028000) (:by |rJG4IHzWf)
                              |j $ {} (:text |file) (:type :leaf) (:at 1613374114232) (:by |rJG4IHzWf)
                              |r $ {} (:text "|\"utf8") (:type :leaf) (:at 1613374028000) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1613374028000
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1613374025694
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1613373497077
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fs/writeFileSync) (:type :leaf) (:at 1613374033218) (:by |rJG4IHzWf)
                      |j $ {} (:text |file) (:type :leaf) (:at 1613374115892) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |replace) (:type :leaf) (:at 1613374043006) (:by |rJG4IHzWf)
                          |T $ {} (:text |content) (:type :leaf) (:at 1613374040163) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"<div class=\"app\" ></div>") (:type :leaf) (:at 1613374055449) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1613374065207) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"<div class=\"app\" data-ssr=\"true\" >") (:type :leaf) (:at 1613374348948) (:by |rJG4IHzWf)
                              |n $ {} (:text |html-content) (:type :leaf) (:at 1613374075986) (:by |rJG4IHzWf)
                              |r $ {} (:text "|\"</div>") (:type :leaf) (:at 1613374070438) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1613374064216
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1613374040478
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1613374030463
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |echo) (:type :leaf) (:at 1613374098882) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"replaced") (:type :leaf) (:at 1613374101861) (:by |rJG4IHzWf)
                      |r $ {} (:text |file) (:type :leaf) (:at 1613374117614) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1613374098430
                    :by |rJG4IHzWf
                :type :expr
                :at 1613373497077
                :by |rJG4IHzWf
            :type :expr
            :at 1613371303034
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |SyOzgodKq6rb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkOeljdK5pHW)
            |j $ {} (:author |root) (:text |app.page) (:time 1499755354983) (:type :leaf) (:id |rkFgls_FqTBW)
            |r $ {}
              :data $ {}
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788265660) (:by |root) (:id |Hkx-eX3pkmleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788267102) (:by |root) (:id |Sk-MeQ3akm)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788267664) (:by |root) (:id |HkHQl72Tym)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788268746) (:by |root) (:id |r1-NxXnaJ7)
                  :type :expr
                  :at 1527788265374
                  :by |root
                  :id |Hkx-eX3pkm
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1613373995308) (:by |rJG4IHzWf)
                    |j $ {} (:text "|\"fs") (:type :leaf) (:at 1613373997488) (:by |rJG4IHzWf)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1613373997991) (:by |rJG4IHzWf)
                    |v $ {} (:text |fs) (:type :leaf) (:at 1613373998484) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1613373994946
                  :by |rJG4IHzWf
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |SyjxeidtqpSW)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJTxgi_YcaH-)
                    |j $ {} (:author |root) (:text |respo.render.html) (:time 1499755354983) (:type :leaf) (:id |Sy0eeouF5THZ)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |ryk-eiOK5TBW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ByWbxsOF9pr-)
                        |j $ {} (:author |root) (:text |make-string) (:time 1499755354983) (:type :leaf) (:id |HJMbgjOtcaBZ)
                      :time 1499755354983
                      :type :expr
                      :id |ByeWgs_K9prb
                  :time 1499755354983
                  :type :expr
                  :id |BJnexiuYcpHb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkaZgoOF9pr-)
                    |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |B1RWxjdKqpSb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HJyMgj_KcTr-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HyWMxoOt5TB-)
                        |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |rJzGloOKcTBb)
                      :time 1499755354983
                      :type :expr
                      :id |rJxfxsdt9THZ
                  :time 1499755354983
                  :type :expr
                  :id |rJhWlj_Yq6S-
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rJVzlj_K56rW)
                    |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |B1HzlsOtqTB-)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |SJUMxo_t9prW)
                    |v $ {} (:author |root) (:text |schema) (:time 1499755354983) (:type :leaf) (:id |Skwfej_tqTrb)
                  :time 1499755354983
                  :type :expr
                  :id |BJQMxo_FqTBb
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1508558974176) (:type :leaf) (:id |B1xrYdHOableaf)
                    |j $ {} (:author |root) (:text |reel.schema) (:time 1508558979185) (:type :leaf) (:id |ryvYdrOTZ)
                    |r $ {} (:author |root) (:text |:as) (:time 1508558980099) (:type :leaf) (:id |Sybst_HOa-)
                    |v $ {} (:author |root) (:text |reel-schema) (:time 1508558983541) (:type :leaf) (:id |HypFOBOTZ)
                  :time 1508558973189
                  :type :expr
                  :id |B1xrYdHOab
              :time 1499755354983
              :type :expr
              :id |By9lliuY5prb
          :time 1499755354983
          :type :expr
          :id |Hyvlej_Y5arb
      |app.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |_xoOpQsvPM)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |BP0ZLrPzwa)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |gq9HHyyIys)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |XsIS3t-L4R)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |YUhDgcijDx)
                        :type :expr
                        :at 1558168729531
                        :by |rJG4IHzWf
                        :id |z5y4glUohx
                      |j $ {} (:text |false) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |mPhekM_ZYP)
                    :type :expr
                    :at 1558168729531
                    :by |rJG4IHzWf
                    :id |JOYAqyIQ_p
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |hHiUvLRJB2)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |YxpIzHxEpu)
                        :type :expr
                        :at 1558168729531
                        :by |rJG4IHzWf
                        :id |YpanggZI5X
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |hfFUn9LJpvC)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |1VsQdvFsc54)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |e3TtjriXqzj)
                        :type :expr
                        :at 1558168729531
                        :by |rJG4IHzWf
                        :id |qzVnJ9pheF
                    :type :expr
                    :at 1558168729531
                    :by |rJG4IHzWf
                    :id |2oigcGrkyY
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |wTMxXHdiHqv)
                      |j $ {} (:text |false) (:type :leaf) (:at 1558168729531) (:by |rJG4IHzWf) (:id |RaJOUbYHM-K)
                    :type :expr
                    :at 1558168729531
                    :by |rJG4IHzWf
                    :id |ia7uOlQS9J1
                :type :expr
                :at 1558168729531
                :by |rJG4IHzWf
                :id |qiq18oUocD
            :type :expr
            :at 1558168729531
            :by |rJG4IHzWf
            :id |G09vhXbgJO
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1558168735743) (:by |rJG4IHzWf) (:id |vLX_w9_d8R)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1558168735743) (:by |rJG4IHzWf) (:id |htYVGJ1PyI)
              |r $ {} (:text |true) (:type :leaf) (:at 1612250978685) (:by |rJG4IHzWf)
            :type :expr
            :at 1558168735743
            :by |rJG4IHzWf
            :id |Xdq4SvEgLN
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root) (:id |Hy-Of025IG)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root) (:id |SyfufCnc8G)
              |r $ {}
                :data $ {}
                  |wT $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-folder) (:type :leaf) (:at 1528008977180) (:by |root) (:id |H1xHfWfWeXleaf)
                      |j $ {} (:text "|\"tiye.me:cdn/tiye-site") (:type :leaf) (:at 1533404368597) (:by |rJG4IHzWf) (:id |BySKfbfWx7)
                    :type :expr
                    :at 1528008973460
                    :by |root
                    :id |H1xHfWfWeX
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root) (:id |HJxzN3kyxmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/tiye.jpg") (:type :leaf) (:at 1533404422739) (:by |rJG4IHzWf) (:id |rJeUB2k1xQ)
                    :type :expr
                    :at 1527868457696
                    :by |root
                    :id |HJxzN3kyxm
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1558168750923) (:by |rJG4IHzWf) (:id |jPiy6cbc6L)
                      |j $ {} (:text "|\"tiye-site") (:type :leaf) (:at 1558168755289) (:by |rJG4IHzWf) (:id |ys1Arclp4P)
                    :type :expr
                    :at 1558168750923
                    :by |rJG4IHzWf
                    :id |AqRDamgVGc
                  |yr $ {}
                    :data $ {}
                      |T $ {} (:text |:upload-folder) (:type :leaf) (:at 1528009091856) (:by |root) (:id |S1WFZfblQleaf)
                      |j $ {} (:text "|\"tiye.me:repo/tiye/tiye.me/") (:type :leaf) (:at 1533404400516) (:by |rJG4IHzWf) (:id |rJmnY-f-g7)
                    :type :expr
                    :at 1528009081454
                    :by |root
                    :id |S1WFZfblQ
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root) (:id |HyZ5XCh58M)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:storage) (:type :leaf) (:at 1518157348163) (:by |root) (:id |Sk-j70n5UG)
                      |j $ {} (:text "|\"tiye-site") (:type :leaf) (:at 1533404378336) (:by |rJG4IHzWf) (:id |ByN2XChq8z)
                    :type :expr
                    :at 1518157346876
                    :by |root
                    :id |ryzsXA35Lz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root) (:id |HkeSAB3K1Xleaf)
                      |j $ {} (:text "|\"http://localhost:8100/main.css") (:type :leaf) (:at 1527526903571) (:by |root) (:id |Hyx0Arht1X)
                    :type :expr
                    :at 1527526861413
                    :by |root
                    :id |HkeSAB3K1X
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root) (:id |rygq0H3YJmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf) (:at 1527526887965) (:by |root) (:id |HklT1LntyQ)
                    :type :expr
                    :at 1527526865931
                    :by |root
                    :id |rygq0H3YJm
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root) (:id |Syt-WGZgQleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/tiye-site/") (:type :leaf) (:at 1533404365040) (:by |rJG4IHzWf) (:id |Bye6-ZzbxX)
                    :type :expr
                    :at 1528008960614
                    :by |root
                    :id |Syt-WGZgQ
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root) (:id |HJlgNn11gmleaf)
                      |j $ {} (:text "|\"题叶@jiyinyiyong") (:type :leaf) (:at 1533404388065) (:by |rJG4IHzWf) (:id |S1eWS2JJlm)
                    :type :expr
                    :at 1527868456422
                    :by |root
                    :id |HJlgNn11gm
                :type :expr
                :at 1518157327696
                :by |root
                :id |Hy7OfCnqUG
            :type :expr
            :at 1518157327696
            :by |root
            :id |SJxuM0258M
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
          :id |Hk7B0z3pJX
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root) (:id |SkZHRz3TJ7)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root) (:id |HJzrRGhp1X)
          :type :expr
          :at 1527788237503
          :by |root
          :id |BJlrAf2TyX
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)

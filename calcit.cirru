
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
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
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |js/console.log) (:type :leaf) (:at 1627025116019) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025116561) (:text |parse-cirru-edn)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627025116561)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025116561) (:text |slurp)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627025116561) (:text "|\"data/meta.cirru")
                        :type :expr
                        :at 1627025116561
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627025112751
                    :by |rJG4IHzWf
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
                                  |r $ {} (:author |root) (:text |ui/column) (:time 1499755354983) (:type :leaf) (:at 1533404687856) (:by |rJG4IHzWf) (:id |H1qGodF96BW)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627024946725) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-image) (:type :leaf) (:at 1627024951996) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"url(https://r.tiye.me/tiye/logo/leaf.jpg)") (:type :leaf) (:at 1627024959259) (:by |rJG4IHzWf)
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
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1533404660973) (:by |rJG4IHzWf) (:id |cQv3dF77Oeleaf)
                          |j $ {} (:text |nil) (:type :leaf) (:at 1533404661546) (:by |rJG4IHzWf) (:id |mZbI2Bt_qv)
                          |r $ {} (:text |200) (:type :leaf) (:at 1533404665348) (:by |rJG4IHzWf) (:id |X8QGVqEkBf)
                        :type :expr
                        :at 1533404657482
                        :by |rJG4IHzWf
                        :id |cQv3dF77Oe
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
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
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
                  |T $ {} (:author |root) (:text |case) (:time 1499755354983) (:type :leaf) (:id |ry61gjOFqpH-)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
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
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |op) (:type :leaf) (:at 1612250931394) (:by |rJG4IHzWf)
                      |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |S1Lexs_tcpBZ)
                    :type :expr
                    :at 1612250930589
                    :by |rJG4IHzWf
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

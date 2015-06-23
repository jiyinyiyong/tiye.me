
var
  deku $ require :deku
  RichCard $ deku.element.bind null $ require :./component/rich-card
  LineCard $ deku.element.bind null $ require :./component/line-card
  TextCard $ deku.element.bind null $ require :./component/Text-card
  projectsData $ require :./data/projects
  sitesData $ require :./data/sites
  concernsData $ require :./data/concerns
  skillsData $ require :./data/skills
  avatarUrl $ require :../images/tiye-400x400.jpg
  onlineIcon $ require :../images/online.png
  teambitonIcon $ require :../images/teambition.png

var
  div $ deku.element.bind null :div

= module.exports $ {}

  :render $ \ ()

    var renderHeaderCover $ \ ()
      return $ div ({} (:class :page-header))
        div $ {} (:class :white-cover)
          :style $ {}
            :border-left-width $ + innerWidth :px

    var renderFooterCover $ \ ()
      return $ div ({} (:class :page-footer))
        div $ {} (:class :white-cover)
          :style $ {}
            :border-left-width $ + innerWidth :px

    return $ div ({} (:class :page))
      renderHeaderCover

      div ({} (:class :page-content))
        div ({} (:class :layout-left))
          RichCard $ {} $ :data $ {} (:major ":题叶, Chen Yong") (:minor ":FP, GUI, Writing")
            :logo avatarUrl
          LineCard $ {} $ :data $ {}
            :text ":Working at Teambition, 张江, Shanghai"
            :logo teambitonIcon
        div ({} (:class :layout-right))
          LineCard $ {} $ :data $ {} (:text :@jiyinyiyong) (:logo avatarUrl)
          LineCard $ {} $ :data $ {} (:text ":Always online") (:logo onlineIcon)

      div ({} (:class :page-content))
        div ({} (:class :layout-left))
          div ({} (:class :heading)) :Concerns
          concernsData.map $ \ (data index)
            return $ RichCard $ {} (:data data) (:key index)
        div ({} (:class :layout-right))
          div ({} (:class :heading)) :Skills
          skillsData.map $ \ (data index)
            return $ LineCard $ {} (:data data) (:key index)

      div ({} (:class :page-content))
        div ({} (:class :layout-left))
          div ({} (:class :heading)) :Projects
          projectsData.map $ \ (project index)
            return $ RichCard $ {} (:data project) (:key index)
        div ({} (:class :layout-right))
          div ({} (:class :heading)) :Activities
          sitesData.map $ \ (site index)
            return $ LineCard $ {} (:data site) (:key index)

      renderFooterCover

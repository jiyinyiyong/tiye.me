
var
  React $ require :react
  RichCard $ React.createFactory $ require :./component/rich-card
  LineCard $ React.createFactory $ require :./component/line-card
  TextCard $ React.createFactory $ require :./component/Text-card
  projectsData $ require :./data/projects
  sitesData $ require :./data/sites
  concernsData $ require :./data/concerns
  skillsData $ require :./data/skills
  avatarUrl $ require :../images/tiye-400x400.jpg
  onlineIcon $ require :../images/online.png
  teambitonIcon $ require :../images/teambition.png

var
  div $ React.createFactory :div

= module.exports $ React.createClass $ {}
  :displayName :layout-page

  :renderHeaderCover $ \ ()
    return $ div ({} (:className :page-header))
      div $ {} (:className :white-cover)
        :style $ {}
          :borderLeftWidth innerWidth

  :renderFooterCover $ \ ()
    return $ div ({} (:className :page-footer))
      div $ {} (:className :white-cover)
        :style $ {}
          :borderLeftWidth innerWidth

  :render $ \ ()

    return $ div ({} (:className :page))
      this.renderHeaderCover

      div ({} (:className :page-content))
        div ({} (:className :layout-left))
          RichCard $ {} $ :data $ {} (:major ":题叶, Chen Yong") (:minor ":FP, GUI, Writing")
            :logo avatarUrl
          LineCard $ {} $ :data $ {}
            :text ":Working at Teambition, 张江, Shanghai"
            :logo teambitonIcon
        div ({} (:className :layout-right))
          LineCard $ {} $ :data $ {} (:text :@jiyinyiyong) (:logo avatarUrl)
          LineCard $ {} $ :data $ {} (:text ":Always online") (:logo onlineIcon)

      div ({} (:className :page-content))
        div ({} (:className :layout-left))
          div ({} (:className :heading)) :Concerns
          concernsData.map $ \ (data index)
            return $ RichCard $ {} (:data data) (:key index)
        div ({} (:className :layout-right))
          div ({} (:className :heading)) :Skills
          skillsData.map $ \ (data index)
            return $ LineCard $ {} (:data data) (:key index)

      div ({} (:className :page-content))
        div ({} (:className :layout-left))
          div ({} (:className :heading)) :Projects
          projectsData.map $ \ (project index)
            return $ RichCard $ {} (:data project) (:key index)
        div ({} (:className :layout-right))
          div ({} (:className :heading)) :Activities
          sitesData.map $ \ (site index)
            return $ LineCard $ {} (:data site) (:key index)

      this.renderFooterCover

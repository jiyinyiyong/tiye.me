
var
  React $ require :react
  NameCard $ React.createFactory $ require :./component/name-card
  NameLink $ React.createFactory $ require :./component/name-link
  ProjectCard $ React.createFactory $ require :./component/project-card
  SiteLink $ React.createFactory $ require :./component/site-link
  projectsData $ require :./data/projects
  sitesData $ require :./data/sites

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
      div ({} (:className :page-user))
        NameCard
        NameLink
      div ({} (:className :page-content))
        div ({} (:className :layout-projects))
          div ({} (:className :heading)) :Projects
          projectsData.map $ \ (project index)
            return $ ProjectCard $ {} (:project project) (:key index)
        div ({} (:className :layout-projects))
          div ({} (:className :heading)) :Sites
          sitesData.map $ \ (site index)
            return $ SiteLink $ {} (:site site) (:key index)
      this.renderFooterCover

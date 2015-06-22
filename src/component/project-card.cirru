
var
  React $ require :react


var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :project-card

  :propTypes $ {}
    :project T.object.isRequired

  :onClick $ \ (event)
    window.open this.props.project.link

  :render $ \ ()
    return $ div ({} (:className :project-card) (:onClick this.onClick))
      div $ {} (:className :logo)
        :style $ {} (:backgroundImage (+ ":url(" this.props.project.logo ":)"))
      div ({} (:className :details))
        div ({} (:className :name)) this.props.project.name
        div ({} (:className :desc)) this.props.project.desc

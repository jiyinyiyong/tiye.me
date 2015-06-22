
var
  React $ require :react

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :rich-card

  :propTypes $ {}
    :data T.object.isRequired

  :onClick $ \ (event)
    window.open this.props.data.link

  :render $ \ ()
    return $ div ({} (:className ":card rich-card") (:onClick this.onClick))
      div $ {} (:className :logo)
        :style $ {} (:backgroundImage (+ ":url(" this.props.data.logo ":)"))
      div ({} (:className :details))
        div ({} (:className :major)) this.props.data.major
        div ({} (:className :minor)) this.props.data.minor

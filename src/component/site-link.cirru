
var
  React $ require :react

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :site-link

  :propTypes $ {}
    :site T.object.isRequired

  :onClick $ \ ()
    window.open this.props.site.link

  :render $ \ ()
    return $ div ({} (:className :site-link) (:onClick this.onClick))
      div $ {} (:className :icon)
        :style $ {} $ :backgroundImage
          + ":url(" this.props.site.icon ":)"
      div ({} (:className :name)) this.props.site.name

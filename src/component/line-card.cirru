
var
  React $ require :react

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :line-card

  :propTypes $ {}
    :data T.object.isRequired

  :onClick $ \ (event)
    if (? this.props.data.link) $ do
      window.open this.props.data.link

  :render $ \ ()
    return $ div ({} (:className ":card line-card") (:onClick this.onClick))
      div $ {} (:className :logo)
        :style $ {} (:backgroundImage (+ ":url(" this.props.data.logo ":)"))
      div ({} (:className :text)) this.props.data.text

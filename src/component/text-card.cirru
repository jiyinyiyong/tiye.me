
var
  React $ require :react

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :line-card

  :propTypes $ {}
    :text T.string.isRequired

  :render $ \ ()
    return $ div ({} (:className ":card text-card"))
      div ({} (:className :text)) this.props.text

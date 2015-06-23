
var
  deku $ require :deku

var
  div $ deku.element.bind null :div

= module.exports $ {}

  :propTypes $ {}
    :text $ {}
      :type :string

  :render $ \ (component setState)
    return $ div ({} (:class ":card text-card"))
      div ({} (:class :text)) component.props.text

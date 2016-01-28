
var
  deku $ require :deku

var
  div $ deku.element.bind null :div

= module.exports $ {}

  :propTypes $ {}
    :data $ {}
      :type :object

  :render $ \ (component setState)

    var data component.props.data

    var onClick $ \ (event)
      if (? data.link) $ do
        window.open data.link
      return undefined

    return $ div ({} (:class ":card rich-card") (:onClick onClick))
      div $ {} (:class :logo)
        :style $ {} (:background-image (+ ":url(" data.logo ":)"))
      div ({} (:class :details))
        div ({} (:class :major)) data.major
        div ({} (:class :minor)) data.minor


var
  React $ require :react

var
  div $ React.createFactory :div

= module.exports $ React.createClass $ {}
  :displaName :name-card

  :render $ \ ()
    return $ div ({} (:className :name-card))
      div ({} (:className :avatar))
      div ({} (:className :intro))
        div ({} (:className :major)) ":题叶, Chen Yong"
        div ({} (:className :minor)) ":FP, GUI, Writing"

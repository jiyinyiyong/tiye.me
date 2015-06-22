
var
  React $ require :react

var
  div $ React.createFactory :div

= module.exports $ React.createClass $ {}
  :displayName :name-link

  :render $ \ ()
    return $ div ({} (:className :name-link))
      div ({} (:className :avatar))
      div ({} (:className :name)) :@jiyinyiyong

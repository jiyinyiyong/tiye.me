
var
  fs $ require :fs
  webpack $ require :webpack

= module.exports $ object
  :entry $ object
    :vendor $ array
      , :webpack-dev-server/client?http://0.0.0.0:8080
      , :webpack/hot/dev-server
      , :deku
    :main $ array :./src/main

  :output $ object
    :path :build/
    :filename :[name].js
    :publicPath :http://localhost:8080/build/

  :resolve $ object
    :extensions $ array :.js :.cirru :

  :module $ object
    :loaders $ []
      {} (:test /\.cirru$) (:loader :cirru-script) (:ignore /node_modules)
      {} (:test /\.css$) (:loader :style!css?importLoaders=1!autoprefixer)
      {} (:test "/\.(png|jpg)$") (:loader :url)

  :plugins $ array
    new webpack.optimize.CommonsChunkPlugin :vendor :vendor.js

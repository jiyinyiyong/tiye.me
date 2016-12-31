
(ns tiye-server.twig.container (:require [recollect.bunch :refer [create-twig]]))

(def twig-container
  (create-twig :container (fn [db state] {:state nil, :logged-in? false, :user nil})))

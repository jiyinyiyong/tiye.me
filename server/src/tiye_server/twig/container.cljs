
(ns tiye-server.twig.container (:require [recollect.bunch :refer [create-twig]]))

(def twig-container
  (create-twig
   :container
   (fn [db state]
     {:state state,
      :statistics {:user-count (count (:states db)),
                   :nicknames (->> (:states db) (map (fn [] ["name" false])))},
      :messages (:messages db),
      :buffter [],
      :logged-in? false,
      :user nil})))

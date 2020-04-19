
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp >> <> div button textarea span]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md-block comp-md]]
            [app.config :refer [dev?]]
            [shadow.resource :refer [inline]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/column)}
    (=< nil 80)
    (comp-md-block
     (inline "about.md")
     {:style {:max-width 800, :margin :auto, :font-size 16, :padding 16}})
    (=< nil 200)
    (when dev? (comp-reel (>> states :reel) reel {})))))

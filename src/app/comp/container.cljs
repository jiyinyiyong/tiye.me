
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md-block comp-md]]
            [app.config :refer [dev?]]
            [app.macros :refer [inline-resource]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/column)}
    (=< nil 80)
    (comp-md-block
     (inline-resource "markdown/about.md")
     {:style {:width 800, :margin :auto, :font-size 16}})
    (=< nil 200)
    (div
     {:style (merge
              ui/center
              {:height 48,
               :background-color "rgba(0, 0, 0, 0.75)",
               :color :silver,
               :position :fixed,
               :bottom 0,
               :width "100%",
               :left 0}),
      :class-name "footer"}
     (comp-md "Find more on [GitHub](https://github.com/jiyinyiyong).\n"))
    (when dev? (cursor-> :reel comp-reel states reel {})))))

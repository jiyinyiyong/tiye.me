
(ns tiye.style.typeset
  (:require [hsl.core :refer [hsl]]))

(def heading {:line-height 2, :font-size "24px", :margin-top "40px"})

(def entry {})

(def paragraph {:line-height 2})

(def description {:line-height 2, :color (hsl 0 0 60), :font-size 16})

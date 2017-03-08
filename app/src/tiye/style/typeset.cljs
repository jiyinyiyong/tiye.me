
(ns tiye.style.typeset (:require [hsl.core :refer [hsl]]))

(def global
  {:font-family "\"Helvetica Neue\", \"PingFang SC\", \"Microsoft Yahei\", 思源黑体, STXihei, 微软雅黑, sans-serif"})

(def title {:font-weight "bold", :line-height 2, :font-size "15px"})

(def description {:color (hsl 0 0 60), :font-size "14px", :line-height 2})

(def paragraph {:line-height 2})

(def heading
  {:font-size "20px",
   :line-height 2,
   :margin-top "16px",
   :font-weight "lighter",
   :color (hsl 0 0 70)})

(def entry {})

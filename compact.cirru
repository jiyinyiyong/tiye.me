
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version nil)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |card-width $ quote
          def card-width $ js/Math.min 480 (- js/window.innerWidth 24)
        |comp-avatar $ quote
          defcomp comp-avatar (on-home)
            [] (effect-bump)
              div
                {} (:class-name css-avatar)
                  :on-click $ fn (e d!) (on-home nil :home d!)
                div $ {} (:class-name css-avatar-outline)
        |comp-card $ quote
          defcomp comp-card (idx key on-open on-close)
            [] (effect-fading)
              let
                  info $ get site-map key
                div
                  {} (:class-name css-card)
                    :style $ {}
                      :left $ * (+ card-width 12) idx
                      :height 640
                      :top -320
                      :width card-width
                  div
                    {} $ :style
                      merge ui/row-parted $ {} (:position :absolute) (:top 0) (:left 0) (:width "\"100%") (:padding "\"4px") (:backdrop-filter "\"blur(2px)")
                    span
                      {} (:class-name "\"show-on-hover")
                        :style $ {} (:line-height "\"20px") (:height "\"20px")
                        :title "\"Command + Click to close all"
                      comp-icon :x
                        {}
                          :color $ hsl 0 0 0
                          :font-size 20
                          :cursor :pointer
                        fn (e d!)
                          let
                              all? $ or (-> e :event .-metaKey) (-> e :event .-ctrlKey)
                            on-close idx all? d!
                    <> (:title info)
                      {} (:font-family ui/font-fancy) (:font-size 14) (:font-weight 300)
                        :color $ hsl 0 0 60
                    span $ {} (:class-name "\"right-corner") (:inner-text "\" ")
                  =< nil 8
                  if (nil? info)
                    <> $ str "\"Unknown data: " key
                    div
                      {} $ :style
                        merge ui/expand $ {} (:padding "\"0 12px") (:overflow :auto)
                      =< nil 48
                      , &
                        -> info (get :content)
                          map $ fn (directive)
                            if (list? directive)
                              render-content (first directive) (rest directive)
                                fn (key d!) (on-open idx key d!)
                              <> $ str "\"Unknown " directive
                        =< nil 120
        |comp-cards $ quote
          defcomp comp-cards (router on-open on-close)
            list->
              {} $ :style
                merge ui/row $ {} (:margin "\"auto 0")
                  :width $ * (+ card-width 4) (count router)
                  :position :relative
                  :transition-duration "\"300ms"
                  :transition-property :width
                  :pointer-events :auto
              -> router $ map-indexed
                fn (idx key)
                  [] key $ comp-card idx key on-open on-close
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                router $ :router store
                push-tab $ fn (idx x d!)
                  d! :push-page $ [] idx x
                close-tab $ fn (idx all? d!)
                  d! :close-page $ [] all? idx
              div ({})
                div
                  {} $ :class-name css-bg
                  create-element :iframe $ {} (:src "\"https://r.tiye.me/Triadica/sapium/") (:class-name css-iframe)
                div
                  {} $ :class-name css-container
                  comp-empty (empty? router) push-tab
                  comp-cards router push-tab close-tab
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-empty $ quote
          defcomp comp-empty (visible? on-home)
            div
              {} (:class-name css-profile)
                :style $ if visible?
                  {} (:opacity 1) (:transform "\"translate(0,0px)")
              div
                {} $ :style
                  merge ui/center $ {} (:pointer-events :auto)
                comp-avatar on-home
              =< nil 32
              div
                {} $ :style
                  merge ui/center $ {} (:color :white) (:font-size 20) (:line-height "\"28px") (:text-shadow "\"1px 1px 4px black")
                <> "\"题叶"
        |css-avatar $ quote
          defstyle css-avatar $ {}
            "\"$0" $ {} (:background-image "\"url(https://cdn.tiye.me/logo/tiye.jpg)") (:background-size "\"120px 120px") (:width 120) (:height 120) (:border-radius "\"50%")
              :box-shadow $ str "\"1px 1px 4px " (hsl 120 80 50) "\",1px 1px 4px black"
              :transition-duration "\"300ms"
              :transition-timing-function "\"cubic-bezier(0.54, 0.17, 0.53, 1.88)"
              :cursor :pointer
              :position :relative
              :background-position :center
            "\"$0:hover" $ {}
              :box-shadow $ str "\"1px 1px 6px " (hsl 120 90 80)
              :transform "\"scale(1.04)"
            "\"$0:active" $ {}
              :box-shadow $ str "\"1px 1px 20px " (hsl 120 90 90)
              :transform "\"scale(1.08)"
              :transition-duration "\"100ms"
              :animation-name "\"breathing"
              :animation-duration "\"4s"
              :animation-iteration-count :infinite
            (str "\"$0:hover ." css-avatar-outline)
              {} $ :border-color (hsl 0 0 100 0.8)
            (str "\"$0:active ." css-avatar-outline)
              {} $ :border-width "\"5px"
        |css-avatar-outline $ quote
          defstyle css-avatar-outline $ {}
            "\"$0" $ {} (:position :absolute) (:width "\"100%") (:height "\"100%") (:border-radius "\"50%")
              :border $ str-spaced "\"5px solid" (hsl 0 0 100 0.9)
        |css-bg $ quote
          defstyle css-bg $ {}
            "\"$0" $ merge ui/global ui/fullscreen
              {} (:background-image "\"url(https://r.tiye.me/tiye/logo/leaf.jpg)") (:background-size "\"cover") (:background-position :center) (:position :fixed) (:top 0) (:left 0) (:width "\"100%") (:height "\"100%") (:z-index -1) (:opacity 0.7) (:filter "\"grayscale(0.5)")
        |css-card $ quote
          defstyle css-card $ {}
            "\"$0" $ merge ui/column
              {} (:padding "\"4px") (:box-shadow "\"1px 1px 4px black") (:border-radius "\"2px") (:border "\"2px solid white") (:margin-right 4) (:transition-duration "\"300ms") (:position :absolute) (:border-radius "\"6px") (:transform-origin "\"-10% 33.3%")
                :box-shadow $ str "\"0 0 10px 4px " (hsl 200 60 90 0.3)
                :background-color $ hsl 0 0 100 0.96
        |css-container $ quote
          defstyle css-container $ {}
            "\"$0" $ merge ui/global ui/fullscreen
              {} (:display :flex) (:font-size 20) (; :backdrop-filter "\"blur(2px)") (:padding "\"0 12px 0 12vw") (:scroll-behavior :smooth)
                :box-shadow $ str "\"inset 0 -40px 1200px " (hsl 0 0 0)
                ; :background-color $ hsl 180 60 20 0.01
                :font-family $ str "\"Buda," (:font-family ui/global)
                :pointer-events :none
        |css-iframe $ quote
          defstyle css-iframe $ {}
            "\"$0" $ {} (:width "\"100%") (:height "\"100%")
        |css-profile $ quote
          defstyle css-profile $ {}
            "\"$0" $ merge ui/center
              {} (:margin :auto) (:position :fixed) (:top 0) (:left 0) (:width "\"100%") (:height "\"100%") (:opacity 0.01) (:transition-duration "\"300ms") (:transform "\"translate(12vw,0px)") (:-webkit-tap-highlight-color :transparent) (:transition-delay "\"120ms") (:animation-name "\"entering") (:animation-duration "\"800ms")
        |effect-bump $ quote
          defeffect effect-bump () (action el at?)
            if (= action :mount)
              do
                -> el .-style .-scale $ set! 0.6
                js/setTimeout $ fn ()
                  -> el .-style .-scale $ set! 1
                  , 0
        |effect-fading $ quote
          defeffect effect-fading () (action el at?)
            case-default action nil
              :mount $ do
                -> el .-style .-opacity $ set! 0.1
                -> el .-style .-transform $ set! "\"scale(0.6) translate(-80px,0px)"
                flipped js/setTimeout 0 $ fn ()
                  -> el .-style .-opacity $ set! 1
                  -> el .-style .-transform $ set! "\"scale(1) translate(0,0)"
                flipped js/setTimeout 240 $ fn ()
                  -> el (.!querySelector "\".right-corner") (wo-js-log)
                    .!scrollIntoView $ js-object (:block "\"end") (:behavoir "\"smooth")
              :unmount $ let
                  el' $ .!cloneNode el
                -> el .-parentElement $ .!appendChild el'
                js/setTimeout
                  fn ()
                    -> el' .-style .-opacity $ set! 0.01
                    -> el' .-style .-transform $ set! "\"scale(0.8) translate(-24px,0)"
                    -> el' .-style .-width $ set! 0
                  , 10
                js/setTimeout
                  fn () $ .!remove el'
                  , 300
        |render-content $ quote
          defn render-content (kind args on-open)
            case-default kind
              div ({})
                <> $ str "\"Unknown kind: " kind
              :title $ div
                {} $ :style
                  {} (:font-weight 700) (:font-size 32) (:margin-top 8) (:font-weight 300)
                <> $ nth args 0
              :text $ div
                {} $ :style
                  {} (:line-height "\"26px") (:margin-bottom 12)
                <> $ nth args 0
              :links $ div
                {} $ :style
                  {} $ :margin "\"8px 0px"
                , &
                  -> args $ map
                    fn (xs)
                      if (list? xs)
                        render-content (nth xs 0) (rest xs) on-open
                        <> $ str "\"Unknown " xs
              :route $ div
                {} (:class-name "\"hover-scale")
                  :style $ {} (:display :inline-block) (:min-width 40) (:border "\"1px solid #ddf") (:padding "\"0 8px") (:margin-right 8) (:margin-bottom 8) (:cursor :pointer)
                  :on-click $ fn (e d!)
                    on-open (nth args 0) d!
                <> $ nth args 1
              :url $ div ({})
                <> "\"☍" $ {}
                  :color $ hsl 200 80 70
                =< 6 nil
                a $ {}
                  :style $ {} (:font-size 16) (:line-height "\"20px")
                  :href $ nth args 0
                  :inner-text $ nth args 1
                  :target "\"_blank"
              :html $ div
                {}
                  :style $ {} (:position :relative)
                  :innerHTML $ nth (w-log args) 0
              :xigua $ div
                {}
                  :style $ {} (:position :relative)
                  :innerHTML $ str "\"<iframe width=\"100%\" height=\"260px\" frameborder=\"0\" src=\"" (nth args 0) "\"\" referrerpolicy=\"unsafe-url\" allowfullscreen></iframe>"
        |site-map $ quote
          def site-map $ parse-cirru-edn (slurp "\"data/meta.cirru")
        |slurp $ quote
          defmacro slurp (file) (read-file file)
      :ns $ quote
        ns app.comp.container $ :require
          respo.util.format :refer $ hsl
          respo-ui.core :as ui
          respo.core :refer $ defcomp >> <> div button textarea span a list-> defeffect create-element
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md-block comp-md
          app.config :refer $ dev?
          feather.core :refer $ comp-icon
          respo.css :refer $ defstyle
    |app.config $ {}
      :defs $ {}
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:storage "\"tiye-site") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/tiye-site/") (:cdn-folder "\"tiye.me:cdn/tiye-site") (:title "\"题叶@jiyinyiyong") (:icon "\"http://cdn.tiye.me/logo/tiye.jpg") (:storage-key "\"tiye-site") (:upload-folder "\"tiye.me:repo/tiye/tiye.me/")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener "\"keydown" $ fn (event)
              if
                = "\"Escape" $ wo-js-log (.-key event)
                dispatch! :reduce-page nil
            println "|App started."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |reload! $ quote
          defn reload! () $ if (some? build-errors) (tip! "\"error" build-errors)
            do (clear-cache!) (remove-watch *reel :changes)
              add-watch *reel :changes $ fn (r p) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              println "|Code updated."
              tip! "\"ok~" "\"Ok"
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache! realize-ssr!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          app.page :refer $ ssr-processing!
          "\"bottom-tip" :default tip!
          "\"./calcit.build-errors" :default build-errors
    |app.page $ {}
      :defs $ {}
        |base-info $ quote
          def base-info $ {}
            :title $ :title config/site
            :icon $ :icon config/site
            :ssr nil
            :inline-html nil
        |ssr-processing! $ quote
          defn ssr-processing! () $ let
              reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
              file "\"dist/index.html"
              html-content $ make-string (comp-container reel)
              content $ fs/readFileSync file "\"utf8"
            fs/writeFileSync file $ replace content "\"<div class=\"app\" ></div>" (str "\"<div class=\"app\" data-ssr=\"true\" >" html-content "\"</div>")
            echo "\"replaced" file
      :ns $ quote
        ns app.page $ :require
          respo.render.html :refer $ make-string
          app.comp.container :refer $ comp-container
          app.schema :as schema
          reel.schema :as reel-schema
          app.config :as config
          "\"fs" :as fs
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :router $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"unknown op" op) store
              :states $ update-states store op-data
              :push-page $ let[] (idx x) op-data
                update store :router $ fn (rs)
                  if (nil? idx) (conj rs x) (.assoc-after rs idx x)
              :close-page $ let[] (all? idx) op-data
                if all?
                  update store :router $ fn (rs) (.slice rs 0 idx)
                  update store :router $ fn (rs) (dissoc rs idx)
              :reduce-page $ update store :router
                fn (r)
                  if (empty? r) r $ rest r
              :hydrate-storage op-data
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states


{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
    :version nil
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          respo.util.format :refer $ hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span a list->
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md-block comp-md
          [] app.config :refer $ [] dev?
          feather.core :refer $ comp-icon
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                state $ or (:data states)
                  {} $ :router ([])
                cursor $ or (:cursor states) ([])
                router $ :router state
                push-tab $ fn (idx x d!) (println x)
                  d! cursor $ update state :router
                    fn (rs)
                      if (nil? idx)
                        w-log $ conj rs x
                        .assoc-after rs idx x
                close-tab $ fn (idx all? d!)
                  if all?
                    d! cursor $ update state :router
                      fn (rs) (.slice rs 0 idx)
                    d! cursor $ update state :router
                      fn (rs) (dissoc rs idx)
              div
                {} $ :style
                  merge ui/global ui/fullscreen $ {} (:background-image "\"url(https://r.tiye.me/tiye/logo/leaf.jpg)") (:background-size "\"cover") (:background-position :center) (:display :flex) (:padding "\"0 200px")
                if
                  empty? $ w-log router
                  comp-empty push-tab
                  comp-cards router push-tab close-tab
                when dev? $ comp-reel (>> states :reel) reel ({})
        |render-content $ quote
          defn render-content (kind args on-open)
            case-default kind
              div ({})
                <> $ str "\"Unknown kind: " kind
              :title $ div ({})
                <> $ nth args 0
              :text $ div ({})
                <> $ nth args 0
              :links $ div
                {} $ :style
                  {} $ :margin "\"16px 0px"
                , &
                  -> args $ map
                    fn (xs)
                      if (list? xs)
                        render-content (nth xs 0) (rest xs) on-open
                        <> $ str "\"Unknown " xs
              :route $ div
                {}
                  :style $ {} (:display :inline-block) (:min-width 40) (:border "\"1px solid #ddf") (:padding "\"0 8px") (:margin-right 8) (:margin-bottom 8) (:cursor :pointer)
                  :on-click $ fn (e d!)
                    on-open (nth args 0) d!
                <> $ nth args 1
              :url $ div ({})
                <> "\"☍" $ {}
                  :color $ hsl 200 80 70
                =< 8 nil
                a $ {}
                  :href $ nth args 0
                  :inner-text $ nth args 1
                  :target "\"_blank"
        |slurp $ quote
          defmacro slurp (file) (read-file file)
        |comp-cards $ quote
          defcomp comp-cards (router on-open on-close)
            list->
              {} $ :style
                merge ui/row $ {} (:margin "\"auto 0")
              -> router $ map-indexed
                fn (idx key)
                  let
                      info $ get site-map key
                    [] key $ div
                      {} $ :style
                        merge ui/column $ {}
                          :background-color $ hsl 0 0 100 0.96
                          :height 560
                          :width 320
                          :padding "\"0 8px"
                          :box-shadow "\"1px 1px 4px black"
                          :border-radius "\"2px"
                          :border "\"2px solid white"
                          :margin-right 4
                      div
                        {} $ :style (merge ui/row-parted)
                        span
                          {} $ :class-name "\"show-on-hover"
                          comp-icon :x
                            {}
                              :color $ hsl 0 0 0
                              :font-size 14
                              :cursor :pointer
                            fn (e d!)
                              let
                                  all? $ or (-> e :event .-metaKey) (-> e :event .-ctrlKey)
                                on-close idx all? d!
                        <> (:title info)
                          {} (:font-family ui/font-fancy) (:font-weight 300)
                            :color $ hsl 0 0 30
                        span $ {}
                      if (nil? info)
                        <> $ str "\"Unknown data: " key
                        div ({}) & $ -> info (get :content)
                          map $ fn (directive)
                            if (list? directive)
                              render-content (first directive) (rest directive)
                                fn (key d!) (on-open idx key d!)
                              <> $ str "\"Unknown " directive
        |comp-empty $ quote
          defcomp comp-empty (on-home)
            div
              {} $ :style
                {} $ :margin :auto
              div
                {} $ :style ui/center
                div $ {}
                  :style $ {} (:background-image "\"url(https://cdn.tiye.me/logo/tiye.jpg)") (:background-size "\"cover") (:width 80) (:height 80) (:border-radius "\"50%") (:border "\"4px solid white") (:box-shadow "\"1px 1px 4px black") (:cursor :pointer)
                  :on-click $ fn (e d!) (on-home nil :home d!)
              =< 8 nil
              div
                {} $ :style
                  merge ui/center $ {} (:color :white) (:font-size 21) (:line-height "\"28px") (:text-shadow "\"1px 1px 4px black")
                <> "\"题叶"
                <> "\"@jiyinyiyong" $ {} (:font-size 14)
        |site-map $ quote
          def site-map $ parse-cirru-edn (slurp "\"data/meta.cirru")
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"unknown op" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :hydrate-storage op-data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          [] app.config :as config
          [] app.page :refer $ [] ssr-processing!
          "\"bottom-tip" :default tip!
          "\"./calcit.build-errors" :default build-errors
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |k dispatch!
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (some? build-errors) (tip! "\"error" build-errors)
            do (clear-cache!) (remove-watch *reel :changes)
              add-watch *reel :changes $ fn (r p) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              println "|Code updated."
              tip! "\"ok~" "\"Ok"
    |app.page $ {}
      :ns $ quote
        ns app.page $ :require
          [] respo.render.html :refer $ [] make-string
          [] app.comp.container :refer $ [] comp-container
          [] app.schema :as schema
          [] reel.schema :as reel-schema
          [] app.config :as config
          [] "\"fs" :as fs
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
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:storage "\"tiye-site") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/tiye-site/") (:cdn-folder "\"tiye.me:cdn/tiye-site") (:title "\"题叶@jiyinyiyong") (:icon "\"http://cdn.tiye.me/logo/tiye.jpg") (:storage-key "\"tiye-site") (:upload-folder "\"tiye.me:repo/tiye/tiye.me/")

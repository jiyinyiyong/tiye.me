
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru) (:version nil)
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require ([] respo-ui.core :as ui) ([] respo.core :refer $ [] defcomp >> <> div button textarea span) ([] respo.comp.space :refer $ [] =<) ([] reel.comp.reel :refer $ [] comp-reel) ([] respo-md.comp.md :refer $ [] comp-md-block comp-md) ([] app.config :refer $ [] dev?)
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/column)
                =< nil 80
                comp-md-block (slurp "\"markdown/about.md")
                  {} $ :style
                    {} (:max-width 800) (:margin :auto) (:font-size 16) (:padding 16)
                =< nil 200
                when dev? $ comp-reel (>> states :reel) reel ({})
        |slurp $ quote
          defmacro slurp (file) (read-file file)
      :proc $ quote ()
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process)
              = "\"true" js/process.env.cdn
            :else false
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:storage "\"tiye-site") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/tiye-site/") (:cdn-folder "\"tiye.me:cdn/tiye-site") (:title "\"题叶@jiyinyiyong") (:icon "\"http://cdn.tiye.me/logo/tiye.jpg") (:storage-key "\"tiye-site") (:upload-folder "\"tiye.me:repo/tiye/tiye.me/")
      :proc $ quote ()
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require ([] respo.core :refer $ [] render! clear-cache! realize-ssr!) ([] app.comp.container :refer $ [] comp-container) ([] app.updater :refer $ [] updater) ([] app.schema :as schema) ([] reel.util :refer $ [] listen-devtools!) ([] reel.core :refer $ [] reel-updater refresh-reel) ([] reel.schema :as reel-schema) ([] cljs.reader :refer $ [] read-string) ([] app.config :as config) ([] app.page :refer $ [] ssr-processing!)
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector "\"[data-ssr]")
        |device-main-action $ quote
          defmacro device-main-action ()
            let
                ssr? $ = "\"true" (get-env "\"ssr")
              if ssr?
                do (echo "\"enabling SSR..") (quote-replace $ ssr-processing!)
                quote-replace $ page-init!
        |page-init! $ quote
          defn page-init! () (println "\"Running mode:" $ if config/dev? "\"dev" "\"release")
            when ssr? (echo "\"detected SSR content.") (render-app! realize-ssr!)
            render-app! render!
            add-watch *reel :changes $ fn () (render-app! render!)
            listen-devtools! |a dispatch!
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data) (when config/dev? $ println "\"Dispatch:" op) (reset! *reel $ reel-updater updater @*reel op op-data)
        |main! $ quote
          defn main! () (device-main-action)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (clear-cache!) (reset! *reel $ refresh-reel @*reel schema/store updater) (println "|Code updated.")
        |mount-target $ quote (def mount-target $ .querySelector js/document |.app)
      :proc $ quote ()
    |app.page $ {}
      :ns $ quote
        ns app.page $ :require ([] respo.render.html :refer $ [] make-string) ([] app.comp.container :refer $ [] comp-container) ([] app.schema :as schema) ([] reel.schema :as reel-schema) ([] app.config :as config) ([] "\"fs" :as fs)
      :defs $ {}
        |base-info $ quote
          def base-info $ {} (:title $ :title config/site) (:icon $ :icon config/site) (:ssr nil) (:inline-html nil)
        |ssr-processing! $ quote
          defn ssr-processing! ()
            let
                reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
                file "\"dist/index.html"
                html-content $ make-string (comp-container reel)
                content $ fs/readFileSync file "\"utf8"
              fs/writeFileSync file $ replace content "\"<div class=\"app\" ></div>" (str "\"<div class=\"app\" data-ssr=\"true\" >" html-content "\"</div>")
              echo "\"replaced" file
      :proc $ quote ()
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {} (:states $ {}) (:content |)
      :proc $ quote ()
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require ([] respo.cursor :refer $ [] update-states)
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case op (:states $ update-states store op-data) (:content $ assoc store :content op-data) (:hydrate-storage op-data) (op store)
      :proc $ quote ()

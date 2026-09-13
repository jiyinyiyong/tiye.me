
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native)
      :reload-fn 'app.main/reload!
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.browser $ %{} 'FileEntry
      :defs $ {}
        'Element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Element
            :style 'app.browser/Style
            :parent-element $ :: 'JsNullish 'app.browser/Element
            .clone-node $ :: 'Fn $ {}
              :args $ [] 'app.browser/Element 'Bool
              :return 'app.browser/Element
            .append-child! $ :: 'Fn $ {}
              :args $ [] 'app.browser/Element 'app.browser/Element
              :return 'app.browser/Element
            .query-selector $ :: 'Fn $ {}
              :args $ [] 'app.browser/Element 'String
              :return $ :: 'JsNullish 'app.browser/Element
            .scroll-into-view $ :: 'Fn $ {}
              :args $ [] 'app.browser/Element 'JsObject
              :return 'Unit
            .remove! $ :: 'Fn $ {}
              :args $ [] 'app.browser/Element
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:append-child! |appendChild) (:clone-node |cloneNode) (:parent-element |parentElement) (:query-selector |querySelector) (:remove! |remove)
              :scroll-into-view |scrollIntoView
          :schema $ :: 'Trait
        'Navigator $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Navigator
            :gpu $ :: 'JsNullish 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'Style $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Style (:scale 'String) (:opacity 'String) (:transform 'String) (:width 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :writable $ #{} :opacity :scale :transform :width
          :schema $ :: 'Trait
        'bump! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn bump! (raw)
            let
                element $ unsafe-coerce raw 'app.browser/Element
                style $ .-style element
              set! (.-scale style) |0.6
              host/set-timeout!
                fn ()
                  hint-fn $ {}
                    :args $ []
                    :return 'Unit
                    :features $ #{} :js-ffi
                  set! (.-scale style) |1
                  , &unit
                , 0
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'card-width $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn card-width ()
            &min 480 $ -
              host/viewport-width
              , 24
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
            :features $ #{} :js-ffi
        'close-all? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn close-all? (event)
            let
                raw $ unsafe-coerce (read-field event :event) 'js-ffi.browser/KeyboardEventHost
                meta? $ raw :meta-key?
                ctrl? $ raw :ctrl-key?
              or meta? ctrl?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'escape? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn escape? (raw)
            let
                event $ unsafe-coerce raw 'js-ffi.browser/KeyboardEventHost
              = |Escape $ event :key
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'fade-in! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn fade-in! (raw)
            let
                element $ unsafe-coerce raw 'app.browser/Element
                style $ .-style element
              set! (.-opacity style) |0.1
              set! (.-transform style) "|scale(0.6) translate(-80px,0px)"
              host/set-timeout!
                fn ()
                  hint-fn $ {}
                    :args $ []
                    :return 'Unit
                    :features $ #{} :js-ffi
                  set! (.-opacity style) |1
                  set! (.-transform style) "|scale(1) translate(0,0)"
                  , &unit
                , 0
              host/set-timeout!
                fn ()
                  hint-fn $ {}
                    :args $ []
                    :return 'Unit
                    :features $ #{} :js-ffi
                  let
                      corner $ .query-selector element |.right-corner
                    when (js-present? corner)
                      .scroll-into-view corner $ js-object (:block |end) (:behavior |smooth)
                  , &unit
                , 240
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'fade-out! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn fade-out! (raw)
            let
                element $ unsafe-coerce raw 'app.browser/Element
                clone $ .clone-node element false
                style $ .-style clone
                parent $ element :parent-element
              when (js-present? parent) (.append-child! parent clone)
              host/set-timeout!
                fn ()
                  hint-fn $ {}
                    :args $ []
                    :return 'Unit
                    :features $ #{} :js-ffi
                  set! (.-opacity style) |0.01
                  set! (.-transform style) "|scale(0.8) translate(-24px,0)"
                  set! (.-width style) |0
                  , &unit
                , 10
              host/set-timeout!
                fn ()
                  hint-fn $ {}
                    :args $ []
                    :return 'Unit
                    :features $ #{} :js-ffi
                  .remove! clone
                , 300
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'gpu-supported? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn gpu-supported? ()
            js-present? $ .-gpu $ unsafe-coerce js/navigator 'app.browser/Navigator
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.browser
          :require (js-ffi.browser :as host)
            reel.schema :refer $ read-field
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'card-width $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def card-width
            browser/card-width
          :examples $ []
          :schema $ :: 'Number
        'comp-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-avatar (on-home)
            decorate-defcomp
              %{} Component (:name :comp-avatar)
                :effects $ [] $ effect-bump
                :listeners $ []
                :tree $ %some $ div
                  {} (:class-name css-avatar)
                    :on-click $ fn (e d!)
                      on-home (%none) :home d!
                  div $ {} $ :class-name css-avatar-outline
              , |comp-avatar
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Component
            :args $ [] 'Fn
        'comp-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-card (idx key on-open on-close)
            decorate-defcomp
              %{} Component (:name :comp-card)
                :effects $ [] $ effect-fading
                :listeners $ []
                :tree $ %some $ let
                    info $ find-page key
                    title-text $ match info
                      (:some page) (:title page)
                      (:none) "|Unknown page"
                    directives $ match info
                      (:some page) (:content page)
                      (:none) ([])
                  div
                    {} (:class-name css-card)
                      :style $ {}
                        :left $ str
                          * (+ card-width 12) idx
                          , |px
                        :height |640px
                        :top |-320px
                        :width $ str card-width |px
                    div
                      {} $ :style $ merge styles/row-parted
                        {} (:position |absolute) (:top |0px) (:left |0px) (:width |100%) (:padding |4px) (:backdrop-filter "|blur(2px)")
                      span
                        {} (:class-name |show-on-hover)
                          :style $ {} (:line-height |20px) (:height |20px)
                          :title "|Command + Click to close all"
                        comp-icon :x
                          {}
                            :color $ hsl 0 0 0
                            :font-size 20
                            :cursor :pointer
                          fn (e d!)
                            on-close idx
                              event-has-close-all? e
                              , d!
                      <> title-text $ {} (:font-family ui/font-fancy) (:font-size |14px) (:font-weight |300)
                        :color $ hsl 0 0 60
                      span $ {} (:class-name |right-corner) (:inner-text "| ")
                    =< nil 8
                    if (option:none? info)
                      <> $ str "|Unknown data: " key
                      div
                        {} $ :style $ merge styles/expand
                          {} (:padding "|0 12px") (:overflow |auto)
                        =< nil 48
                        , &
                          -> directives $ map $ fn (directive)
                            hint-fn $ {}
                              :args $ [] 'app.schema/Content
                              :return 'respo.schema/Element
                            render-content directive $ fn (key d!)
                              on-open (%some idx) key d!
                          =< nil 120
              , |comp-card
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Component
            :args $ [] 'Number 'Tag 'Fn 'Fn
        'comp-cards $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-cards (router on-open on-close)
            list->
              {} $ :style $ merge styles/row
                {} (:margin "|auto 0")
                  :width $ str
                    * (+ card-width 4) (count router)
                    , |px
                  :position |relative
                  :transition-duration |300ms
                  :transition-property |width
                  :pointer-events |auto
              -> router $ map-indexed $ fn (idx key)
                [] key $ comp-card idx key on-open on-close
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Component
            :args $ [] (:: 'List 'Tag) 'Fn 'Fn
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                router $ :router store
                push-tab $ fn (idx x d!)
                  d! $ :: :push-page idx x
                close-tab $ fn (idx all? d!)
                  d! $ :: :close-page all? idx
              div ({})
                div
                  {} $ :class-name css-bg
                  create-element :iframe $ {}
                    :src $ if (gpu-supported?) |https://webgpu.art/caterfoil.mbt/ |https://r.tiye.me/Triadica/sapium/
                    :class-name css-iframe
                div
                  {} $ :class-name style-container
                  comp-empty (empty? router) push-tab
                  comp-cards router push-tab close-tab
                  when dev? $ comp-reel (>> states :reel)
                    reel-view/view-data reel
                    {}
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Component
            :args $ [] $ :: 'reel.typed/State 'app.schema/Action 'app.schema/Store
        'comp-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-empty (visible? on-home)
            div
              {} (:class-name css-profile)
                :style $ if visible? $ {} (:opacity |1)
                  :transform "|translate(0,0px)"
              div
                {} $ :style $ assoc styles/center :pointer-events |auto
                comp-avatar on-home
              =< nil 32
              div
                {} $ :style $ merge styles/center
                  {} (:color |white) (:font-size |20px) (:line-height |28px)
                    :text-shadow "|1px 1px 4px black"
                <> "|题叶"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Component
            :args $ [] 'Bool 'Fn
        'css-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-avatar
            {}
              |$0 $ {}
                :background-image "|url(https://cdn.tiye.me/logo/tiye.jpg)"
                :background-size "|120px 120px"
                :width |120px
                :height |120px
                :border-radius |50%
                :box-shadow $ str "|1px 1px 4px " (hsl 120 80 50) "|,1px 1px 4px black"
                :transition-duration |300ms
                :transition-timing-function "|cubic-bezier(0.54, 0.17, 0.53, 1.88)"
                :cursor |pointer
                :position |relative
                :background-position |center
              |$0:hover $ {}
                :box-shadow $ str "|1px 1px 6px " $ hsl 120 90 80
                :transform "|scale(1.04)"
              |$0:active $ {}
                :box-shadow $ str "|1px 1px 20px " $ hsl 120 90 90
                :transform "|scale(1.08)"
                :transition-duration |100ms
                :animation-name |breathing
                :animation-duration |4s
                :animation-iteration-count |infinite
              (str "|$0:hover ." css-avatar-outline)
                {} $ :border-color $ hsl 0 0 100 0.8
              (str "|$0:active ." css-avatar-outline)
                {} $ :border-width |5px
          :examples $ []
          :schema $ :: 'String
        'css-avatar-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-avatar-outline
            {} $ |$0 $ {} (:position |absolute) (:width |100%) (:height |100%) (:border-radius |50%)
              :border $ str-spaced "|5px solid" $ hsl 0 0 100 0.9
          :examples $ []
          :schema $ :: 'String
        'css-bg $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-bg
            {} $ |$0 $ merge styles/base styles/fullscreen
              {}
                :background-image "|url(https://r.tiye.me/tiye/logo/leaf.jpg)"
                :background-size |cover
                :background-position |center
                :position |fixed
                :top |0px
                :left |0px
                :width |100%
                :height |100%
                :z-index |-1
                :opacity |0.7
                :filter "|grayscale(0.5)"
          :examples $ []
          :schema $ :: 'String
        'css-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-card
            {} $ |$0 $ merge styles/column
              {} (:padding |4px)
                :box-shadow "|1px 1px 4px black"
                :border-radius |2px
                :border "|2px solid white"
                :margin-right |4px
                :transition-duration |300ms
                :position |absolute
                :border-radius |6px
                :transform-origin "|-10% 33.3%"
                :box-shadow $ str "|0 0 10px 4px " $ hsl 200 60 90 0.3
                :background-color $ hsl 0 0 100 0.96
          :examples $ []
          :schema $ :: 'String
        'css-iframe $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-iframe
            {} $ |$0 $ {} (:width |100%) (:height |100%)
          :examples $ []
          :schema $ :: 'String
        'css-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-profile
            {} $ |$0 $ merge styles/center
              {} (:margin |auto) (:position |fixed) (:top |0px) (:left |0px) (:width |100%) (:height |100%) (:opacity |0.01)
                :transition-duration |300ms
                :transform "|translate(12vw,0px)"
                :-webkit-tap-highlight-color |transparent
                :transition-delay |120ms
                :animation-name |entering
                :animation-duration |800ms
          :examples $ []
          :schema $ :: 'String
        'effect-bump $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn effect-bump () (effect-on-mount browser/bump!)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Effect
            :args $ []
        'effect-fading $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn effect-fading ()
            effect-watch ([]) browser/fade-in! $ %some browser/fade-out!
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Effect
            :args $ []
        'event-has-close-all? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-has-close-all? (event)
            browser/close-all? event
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'gpu-supported? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn gpu-supported? ()
            browser/gpu-supported?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'render-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-content (directive on-open)
            match directive
              (:title t)
                div
                  {} $ :style $ {} (:font-size |32px) (:margin-top |8px) (:font-weight |300)
                  <> t
              (:text t)
                div
                  {} $ :style $ {} (:line-height |26px) (:margin-bottom |12px)
                  <> t
              (:links links)
                div
                  {} $ :style $ {} (:margin "|8px 0px")
                  , & $ -> links $ map
                    fn (xs)
                      hint-fn $ {}
                        :args $ [] 'app.schema/Content
                        :return 'respo.schema/Element
                      render-content xs on-open
              (:route target title)
                div
                  {} (:class-name |hover-scale)
                    :style $ {} (:display |inline-block) (:min-width |40px) (:border "|1px solid #ddf") (:padding "|0 8px") (:margin-right |8px) (:margin-bottom |8px) (:cursor |pointer)
                    :on-click $ fn (e d!) (on-open target d!)
                  <> title
              (:url target title)
                div ({})
                  <> "|🌐" $ {}
                    :color $ hsl 200 80 70
                    :font-size |14px
                  =< 6 nil
                  a $ {}
                    :style $ {} (:font-size |16px) (:line-height |20px)
                    :href target
                    :inner-text title
                    :target |_blank
              (:html h)
                div $ {}
                  :style $ {} $ :position |relative
                  :innerHTML h
              (:xigua url)
                div $ {}
                  :style $ {} $ :position |relative
                  :innerHTML $ str "|<iframe width=\"100%\" height=\"260px\" frameborder=\"0\" src=\"" url "|\" referrerpolicy=\"unsafe-url\" allowfullscreen></iframe>"
              (:image src alt)
                img $ {} (:src src) (:alt alt)
                  :class-name style-embed-image
              _ $ div ({})
                <> $ str "|Unknown kind: " directive
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'respo.schema/Element
            :args $ [] 'app.schema/Content 'Fn
        'style-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-container
            {} $ |$0 $ merge styles/base styles/fullscreen
              {} (:display |flex) (:font-size |20px) (; :backdrop-filter "|blur(2px)") (:padding "|0 12px 0 12vw") (:scroll-behavior |smooth)
                :box-shadow $ str "|inset 0 -40px 1200px " $ hsl 0 0 0
                ; :background-color $ hsl 180 60 20 0.01
                :font-family $ str |Buda, ui/default-fonts
                :pointer-events |none
          :examples $ []
          :schema $ :: 'String
        'style-embed-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-embed-image
            {} $ |& $ {} (:max-width |100%)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span a list-> create-element img effect-on-mount effect-watch decorate-defcomp
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md-block comp-md
            app.config :refer $ dev?
            feather.core :refer $ comp-icon
            respo.css :refer $ defstyle
            app.schema :refer $ site-map find-page
            reel.typed-compat :as reel-view
            app.style :as styles
            app.browser :as browser
            respo.schema :refer $ Component
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? true
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage |tiye-site)
              :dev-ui |http://localhost:8100/main.css
              :release-ui |http://cdn.tiye.me/favored-fonts/main.css
              :cdn-url |http://cdn.tiye.me/tiye-site/
              :cdn-folder |tiye.me:cdn/tiye-site
              :title "|题叶@jiyinyiyong"
              :icon |http://cdn.tiye.me/logo/tiye.jpg
              :storage-key |tiye-site
              :upload-folder |tiye.me:repo/tiye/tiye.me/
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            typed-reel/new-reel schema/store
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Action 'app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            let
                control $ typed-reel/decode-control op
              reset! *reel $ match control
                (:some command)
                  typed-reel/apply-control updater @*reel command
                (:none)
                  typed-reel/record-op updater @*reel
                    schema/normalize-action op
                    generate-id!
                    expect-number |Date.now $ js/Date.now
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |k dispatch!
            host/add-event-listener! |keydown $ fn (event)
              when (browser/escape? event)
                dispatch! $ :: :reduce-page
              , &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (some? build-errors) (tip! |error build-errors)
              do (clear-cache!) (remove-watch *reel :changes)
                add-watch *reel :changes $ fn (r p) (render-app!)
                reset! *reel $ typed-reel/refresh updater @*reel schema/store
                println "|Code updated."
                tip! |ok~ |Ok
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            app.page :refer $ ssr-processing!
            |bottom-tip :default tip!
            |./calcit.build-errors :default build-errors
            reel.typed :as typed-reel
            js-ffi.contract :refer $ expect-number
            app.browser :as browser
            js-ffi.browser :as host
    'app.page $ %{} 'FileEntry
      :defs $ {}
        'base-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def base-info
            {}
              :title $ :title config/site
              :icon $ :icon config/site
              :ssr nil
              :inline-html nil
          :examples $ []
          :schema $ :: 'Dynamic
        'ssr-processing! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ssr-processing! ()
            let
                reel $ typed-reel/new-reel schema/store
                file |dist/index.html
                html-content $ make-string $ comp-container reel
                content $ fs/readFileSync file |utf8
              fs/writeFileSync file $ '.replace content "|<div class=\"app\" ></div>" $ str "|<div class=\"app\" data-ssr=\"true\" >" html-content |</div>
              echo |replaced file
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.page
          :require
            respo.render.html :refer $ make-string
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            |fs :as fs
            reel.typed :as typed-reel
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Action
            :push-page (:: 'Option 'Number) 'Tag
            :close-page 'Bool 'Number
            :reduce-page
            :states (:: 'List 'Tag) 'Dynamic
            :hydrate-storage 'app.schema/Store
          :examples $ []
          :schema $ :: 'EnumDef
        'Content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Content (:title 'String) (:text 'String)
            :links $ :: 'List 'app.schema/Content
            :route 'Tag 'String
            :url 'String 'String
            :html 'String
            :xigua 'String
            :image 'String 'String
          :examples $ []
          :schema $ :: 'EnumDef
        'Page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Page (:title 'String)
            :content $ :: 'List 'app.schema/Content
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :router $ :: 'List 'Tag
            :states $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'find-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-page (key)
            if (&map:contains? site-map key)
              %some $ &map:get site-map key
              %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Tag
            :return $ :: 'Option 'app.schema/Page
        'load-as-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-as-code (file)
            if (string? file)
              quasiquote $ parse-cirru-edn-as
                ~ $ read-file file
                :: 'Map 'Tag 'app.schema/Page
              raise |Expected-a-literal-file-path
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr $ :: 'Map 'Tag 'app.schema/Page
            :required $ [] 'Syntax
        'normalize-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-action (op)
            match op
              (:push-page idx page)
                Action :push-page
                  decode-map-as idx $ :: 'Option 'Number
                  decode-map-as page 'Tag
              (:close-page all? idx)
                Action :close-page (decode-map-as all? 'Bool) (decode-map-as idx 'Number)
              (:reduce-page) (Action :reduce-page)
              (:states cursor state)
                Action :states
                  decode-map-as cursor $ :: 'List 'Tag
                  , state
              (:hydrate-storage data)
                Action :hydrate-storage $ decode-map-as data 'app.schema/Store
              _ $ raise |Unknown-application-action
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'app.schema/Action
            :args $ [] 'Enum
        'site-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site-map (load-as-code |data/meta.cirru)
          :examples $ []
          :schema $ :: 'Map 'Tag 'app.schema/Page
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            %{} Store
              :router $ []
              :states $ {}
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'base $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def base
            {} (:line-height |2) (:font-size |14px)
              :font-family "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif"
              :color "|hsl(0,0%,20%)"
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def center
            {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'column $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def column
            {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'expand $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def expand
            {} (:flex |1) (:overflow |auto)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'fullscreen $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def fullscreen
            {} (:position |absolute) (:left |0px) (:top |0px) (:width |100%) (:height |100%) (:overflow |auto)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row
            {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'row-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-parted
            {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry
          :doc "|Handles state updates based on dispatched operations"
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor state)
                assoc store :states $ update-state-tree (:states store) cursor state
              (:push-page idx page)
                assoc store :router $ match idx
                  (:none)
                    append (:router store) page
                  (:some index)
                    &list:assoc-after (:router store) index page
              (:close-page all? idx)
                assoc store :router $ if all?
                  take (:router store) idx
                  dissoc (:router store) idx
              (:reduce-page)
                assoc store :router $ rest $ :router store
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :return 'app.schema/Store
            :args $ [] 'app.schema/Store 'app.schema/Action 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            app.schema :refer $ Store Action
            respo.cursor :refer $ update-state-tree

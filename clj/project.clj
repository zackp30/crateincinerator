(defproject crateincinerator "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [lib-noir "0.8.4"]
                 [ring-server "0.3.1"]
                 [selmer "0.6.8"]
                 [com.taoensso/timbre "3.2.1"]
                 [com.taoensso/tower "2.0.2"]
                 [markdown-clj "0.9.44"]
                 [environ "0.5.0"]
                 [noir-exception "0.2.2"]]

  :repl-options {:init-ns crateincinerator.repl}
  :plugins [[lein-ring "0.8.10"]
            [lein-environ "0.5.0"]
            [lein-cljsbuild "0.3.0"]]
  :ring {:handler crateincinerator.handler/app
         :init    crateincinerator.handler/init
         :destroy crateincinerator.handler/destroy}
  :hooks [ leiningen.cljsbuild ]
  :cljsbuild {
              :repl-listen-port 9002
              :builds [{:source-paths ["src-cljs"]
                        :compiler {:output-to "resources/public/js/site.js"
                                   :optimizations :advanced}}]}
  :profiles
  {:uberjar {:aot :all}
   :production {:ring {:open-browser? false
                       :stacktraces?  false
                       :auto-reload?  false}}
   :dev {:dependencies [[ring-mock "0.1.5"]
                        [ring/ring-devel "1.3.0"]
                        [pjstadig/humane-test-output "0.6.0"]]
         :injections [(require 'pjstadig.humane-test-output)
                      (pjstadig.humane-test-output/activate!)]
         :env {:dev true}}})

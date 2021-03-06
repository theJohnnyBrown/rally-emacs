{:user
 {:plugins [[lein-ancient "0.5.5"]
            [jonase/eastwood "0.1.1"]
            [cider/cider-nrepl "0.7.0-SNAPSHOT"]]}
 :repl
 {:dependencies [[org.clojars.gjahad/debug-repl "0.3.3"]
                 [org.clojure/tools.namespace "0.2.4"]
                 [im.chit/vinyasa "0.1.8"]
                 [spyscope "0.1.4"]
                 ;[blackwater "0.0.9"]
                 [clj-time "0.6.0"]
                 [print-foo "0.5.0"]]
  :repl-options {:nrepl-middleware
                 [cider.nrepl.middleware.classpath/wrap-classpath
                  cider.nrepl.middleware.complete/wrap-complete
                  cider.nrepl.middleware.info/wrap-info
                  cider.nrepl.middleware.inspect/wrap-inspect
                  cider.nrepl.middleware.stacktrace/wrap-stacktrace]}
  :injections [(load-file (.getAbsolutePath (clojure.java.io/file (System/getenv "HOME") ".lein/user.clj")))
               (require 'vinyasa.inject)
               (require 'spyscope.core)
               (require 'alex-and-georges.debug-repl)
               (use 'print.foo)
               ;(require 'black.water.jdbc)
               (vinyasa.inject/inject 'clojure.core '>
                                      '[[clojure.repl doc source]
                                        [clojure.pprint pprint pp]
                                        [alex-and-georges.debug-repl debug-repl]
                                        ;[clojure.tools.names.repl refresh]
                                        ;[black.water.jdbc decorate-cjj!]
                                        [user run-test spy]
                                        ])]}}

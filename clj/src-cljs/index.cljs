(ns main
  (:require [clojure.browser.repl :as repl]))

(defn ^:export init []
  (js/alert "ohey"))

;; ( "var game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload: $preload, create: $create, update: $update })")
(repl/connect "http://localhost:9002/repl")

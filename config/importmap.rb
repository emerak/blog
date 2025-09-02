# Pin npm packages by running ./bin/importmap

pin "application"
pin "htm" # @3.1.1
pin "htm/preact", to: "htm--preact.js" # @3.1.1
pin "preact" # @10.27.1
pin "preact/hooks", to: "preact--hooks.js" # @10.27.1
pin_all_from "app/javascript/components", under: "components"

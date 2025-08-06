# Pin npm packages by running ./bin/importmap

pin "application"
pin "react" # @19.1.0
pin "react-dom" # @19.1.0
pin "htm" # @3.1.1
pin "react-dom/client", to: "react-dom--client.js" # @19.1.0
pin "scheduler" # @0.26.0
pin "htm/react", to: "htm--react.js" # @3.1.1
pin_all_from "app/javascript/components", under: "components"


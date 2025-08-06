import { createRoot } from 'react-dom/client';

import { html } from 'htm/react';

const App = () => html`<h1>Hello from React + Importmap!</h1>`;


const root = createRoot(document.getElementById("react-root"));
if (root) {
  root.render(html`<${App} />`);
}

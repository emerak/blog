import { render } from 'preact';
import { html } from 'htm/preact';
import Posts from 'components/posts';


const root = document.getElementById("react-root");
render(html`<${Posts}}/>`, root);

import { render, Component } from 'preact';
import { html } from 'htm/preact';

export default class Post extends Component {
  render({title= "", content= "", published_at= null}){
    return html`<article><h2>${title}</h2>
  <p>${content}</p>
  <footer>
    <p>Published on: ${published_at}</p>
  </footer>
</article>`;
  }
}

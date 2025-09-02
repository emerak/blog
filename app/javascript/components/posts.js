import { render, Component } from 'preact';
import { useState, useEffect } from 'preact/hooks';
import { html } from 'htm/preact';
import Post from 'components/post';

export default function Posts() {
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3000/posts.json')
      .then((res) => {
        return res.json();
      })
      .then((jsonData) => {
        setPosts(jsonData);
      });

  }, []);

  return html`
    <ul>
      ${posts.map(item => html`
        <li key=${item.id}>
          <${Post} title=${item.title} content=${item.content} published_at=${item.published_at}/>
        </li>
      `)}
    </ul>
  `

}

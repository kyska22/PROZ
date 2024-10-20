//capturando os elementos

let titulo = document.getElementById('titulo')

let link = document.querySelector('a');

let listaNaoOrdenada = document.querySelector('ul')

let listaOrdenada = document.querySelector('ol')

//mudando os elementos

titulo.innerText = 'Titulo desde JS'
link.innerText = 'Accesa ao site aqui'

listaNaoOrdenada.innerHTML = `
<li>HTML</li>
<li>CSS</li>
<li>Python</li>
<li>JavaScript</li>
<li>Bases de Dados</li>
`
listaOrdenada.innerHTML = `
<li><a href="https://chat.openai.com/auth/login/">ChatGPT</a></li>
<li><a href="https://www.perplexity.ai/">Perplexiti</a></li>
<li><a href="https://www.phind.com/search?home=true">phind</a></li>
`

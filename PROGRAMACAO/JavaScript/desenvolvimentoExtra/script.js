let titulo = document.createElement("h1");
titulo.id = "titulo";
titulo.innerText = "IFome Family"


const corpo = document.querySelector("body");
corpo.appendChild(titulo);

let pepito = document.createElement("div")

pepito.innerHTML = `
  <div>
    <h2>Pepito de carne</h2>
    <img src="./img/pepito.jfif" alt="pepito de carne">
    <h3>Ingredientes</h3>
    <p>Pão frances, carne, alface, molho da casa, milho e salada</p>
    <p id = "preco-pepito">R$ 18.90</p>
`

corpo.appendChild(pepito);

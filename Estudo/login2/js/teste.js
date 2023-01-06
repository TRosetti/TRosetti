

fetch('json/dados.json')
.then(response => response.json())
.then(dados =>{
    console.log(dados.nome)
    console.log(dados.senha)
})



function cadastro(){
    var cadastrar = document.getElementById("main")
    var h1 = document.querySelector("div.form h1")
    var confirmarSenha = document.querySelector("#c-senha")
    var esqueceuSenha = document.getElementById("EsqueceuSenha")
    var temConta = document.querySelector(".footer p")
    var login = document.querySelector(".footer button")
    if(cadastrar.style.flexDirection === 'row'){

        cadastrar.style.flexDirection = 'row-reverse'
        h1.innerHTML = 'Create Account'
        confirmarSenha.style.display = 'block'
        esqueceuSenha.style.display = 'none'
        temConta.innerHTML = "Já tem uma conta?"
        login.innerHTML = "Login"
    }else{
        cadastrar.style.flexDirection = 'row'
        h1.innerHTML = 'Login'
        confirmarSenha.style.display = 'none'
        esqueceuSenha.style.display = 'block'
        temConta.innerHTML = "Ainda não tem uma conta?"
        login.innerHTML = "Cadastrar"
    }
}

var dados = {nome: 'thiagorosetti1234@gmail.com', senha: 'thiago1234'}

function entrar(){
    var temConta = document.querySelector(".footer p")

    let user = document.getElementById("usuario")
    let password = document.getElementById("senha")

    usuario = String(user.value)
    senha = String(password.value)

    temConta.innerHTML = `${usuario}`

    if(usuario === dados.nome && senha === dados.senha){
        temConta.innerHTML += ` (certo)`
        window.location.href="index.html" // esse código te manda para a página que esta escrita no href
    }else{
        temConta.innerHTML += ` (errado)`
    }

 
}


let h1 = document.querySelector('h1')
let nomeInput = document.querySelector('#nome')
let confirmacaoInput = document.querySelector('#confirmacao')
let conta = document.querySelector('#conta')
let content = document.querySelector('.content')
let main = document.querySelector('main')
let aside = document.querySelector('aside')


function cadastro(){
    h1.innerHTML = 'Cadastro'
    nomeInput.style.display = 'block'
    confirmacaoInput.style.display = 'block'
    conta.innerHTML = 'Já possui uma conta? <span id="cadastrar" onclick="login()">Login</span>'
    content.style.flexDirection = 'row-reverse'
}

    


function login(){
    h1.innerHTML = 'Login'
    nomeInput.style.display = 'none'
    confirmacaoInput.style.display = 'none'
    conta.innerHTML = 'Não tem uma conta? <span id="cadastrar" onclick="cadastro()">Cadastrar</span>'
    content.style.flexDirection = 'row'
}
const form = require('./form');


function cadastro(){
    form.h1.innerHTML = 'Cadastro'
    form.nomeInput.style.display = 'block'
    form.confirmacaoInput.style.display = 'block'
    form.conta.innerHTML = 'Já possui uma conta? <span id="cadastrar" onclick="login()">Login</span>'
}


function login(){
    form.h1.innerHTML = 'Login'
    form.nomeInput.style.display = 'none'
    form.confirmacaoInput.style.display = 'none'
    form.conta.innerHTML = 'Não tem uma conta? <span id="cadastrar" onclick="cadastro()">Cadastrar</span>'
}
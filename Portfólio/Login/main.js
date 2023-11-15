const form = document.querySelector('#Form')
const nameInput = document.querySelector('#Nome')
const emailInput = document.querySelector('#Email')
const passwordInput = document.querySelector('#Senha')
const button = document.querySelector('#login')

form.addEventListener("submit", (event) =>{
    event.preventDefault(); // serve para não enviar antes de acionar o servidor 

    if(nameInput.value === ""){
        alert("Por favor, preencha o seu nome")
        return;
    }
    if(emailInput.value === "" || !isEmailValid(emailInput.value)){
        alert("Por favor, preencha o seu email corretamente")
        return; 
    }
    form.submit()
})

function isEmailValid(email){
    // criar regex para validar email
    const emailRegex = new RegExp(
        /^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]{2,}$/
    );
    
    if(emailRegex.test(email)){
        return true;
    }

    return false;
}


function mostrarSenha(){
    var senha = document.querySelector("#Senha")
    if(senha.type == 'password'){
        senha.type = 'text';
    }else if(senha.type == 'text'){
        senha.type = 'password'
    }
    
}
var n = 0
function singIn(){
    main = document.querySelector('main')
    nome = document.querySelector('.Nome')
    termos = document.querySelector('.agree')
    if(n == 0){
        main.style.flexDirection = 'row-reverse'
        nome.style.display = 'none'
        termos.style.display = 'none'
        n++
        // console.log(n)
    }else if( n == 1){
        main.style.flexDirection = 'row'
        nome.style.display = 'flex'
        termos.style.display = 'inline-block'
        n = 0
        // console.log(n)
    }
    
}

// const nameInput = document.querySelector('#Nome')
// const emailInput = document.querySelector('#Email')
// const passwordInput = document.querySelector('#Senha')
// const button = document.querySelector('#teste')


const pessoa = {
    nome: 'Thiago',
    email: 'teste@email.com',
    senha: 'thiago1'
}

button.addEventListener("click", teste)

function teste(){
    pessoa[nome] = nameInput;
    pessoa[email] = emailInput;
    pessoa[senha]= passwordInput;

    console.log(pessoa)
  
}




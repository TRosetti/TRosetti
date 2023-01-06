// const button = document.querySelector("#inscreva-se-btn")
// const popup = document.querySelector('.popup-box')

// button.addEventListener('click', function(){
//     popup.style.display = 'flex'
// })

// popup.addEventListener('click', event => {
//     const classNameOfClickedElement = event.target.classList[0]
//     const classNames = ['popup-close', 'popup-wrapper', 'popup-link']
//     const shouldClosePopup = classNames.some(className => className === classNameOfClickedElement)
    
//     if(shouldClosePopup){
//         popup.style.display = 'none'
//     }
// })

// -------------------------------------------------------- //



var dados = {usuario: "thiago", senha: "1234"}


function popup(){
    let cSenha =  document.getElementById("c-senha")
    let popup1 = document.querySelector('div.popup-box')
    popup1.style.display = 'flex'
    cSenha.style.display = "none"
}

function closePopup(){
    let popup1 = document.querySelector('div.popup-box')
    popup1.style.display = 'none'
}

function entrar(){
    let inputText = document.getElementById("text")
    let usuario = String(inputText.value)
    let inputPassword = document.getElementById("senha")
    let senha = String(inputPassword.value)
    
    if(usuario === dados.usuario && senha === dados.senha){
        window.location.href="https://www.instagram.com/t_rosetti/"
    }else{

        if(usuario != dados.usuario){
            let userIncorreto = document.getElementById("p-user")
            userIncorreto.style.display = "block"
        }else if(senha != dados.senha){
            let passwordIncorreto = document.getElementById('p-senha')
            passwordIncorreto.style.display = "block"
        }
        
    }

}


function conta(){
    let cadastrarButton = document.getElementById('cadastrar')
    if( cadastrarButton.value == "Cadastrar"){
        cadastrar()
    }else{
        login()
    }

}

function login(){
    let cSenha =  document.getElementById("c-senha")
    let loginH2 = document.querySelector(".login h2 span")
    let footerP = document.querySelector(".footer p")
    let cadastrarButton = document.getElementById('cadastrar')

    loginH2.innerHTML = 'Cadastrar'
    cSenha.style.display = "none"
    footerP.innerHTML = "Ainda não tem conta?"
    cadastrarButton.value = "Cadastrar"
}

function cadastrar(){

    let cSenha =  document.getElementById("c-senha")
    let loginH2 = document.querySelector(".login h2 span")
    let footerP = document.querySelector(".footer p")
    let cadastrarButton = document.getElementById('cadastrar')


    loginH2.innerHTML = 'Cadastrar'
    cSenha.style.display = "flex"
    footerP.innerHTML = "Já tem uma conta?"
    cadastrarButton.value = "Login"

}
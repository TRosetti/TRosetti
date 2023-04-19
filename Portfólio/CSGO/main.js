
var perfil= document.querySelector("#Third")
var dados = document.querySelector(".dados")

perfil.addEventListener("mouseover", function(){
    this.style.width = "500px";
    dados.style.display = "flex"
})

perfil.addEventListener(`mouseout`, function(){
    this.style.width = "100px"
    dados.style.display = "none"
})

function friends(){
    
    for(var c = 1; c <= 10; c++){;
        var friends = document.querySelector(".friends")
        
    }
}


for(var c = 0; c <= 5; c++){
    // Crie uma nova div
    var medalhas = document.createElement("div");

    // Adicione uma classe à nova div
    medalhas.classList.add("medalhas");


    // Encontre o elemento pai onde você deseja adicionar a nova div
    var pai = document.getElementById("medalha");

    // Adicione a nova div ao elemento pai
    pai.appendChild(medalhas);
}


const button = document.querySelector('button')

button.addEventListener("click", () => {

    Notification.requestPermission().then(perm =>{
        if(perm === "granted"){
            new Notification('Exemplo de notificação', {
                body: "Esse é o corpo da notificação"
            })
        }
    })
    
})
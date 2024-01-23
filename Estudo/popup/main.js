const body = document.querySelector('body')
const popup = document.querySelector('.popup')

function popUp(){
    popup.style.display = 'block'
    body.classList.add('active')
    console.log('foi')
    body.style.overflow = 'hidden';
}


function closePopup() {
    popup.style.display = 'none'
    body.classList.remove('active')
    body.style.overflow = 'auto';
}

// body.addEventListener('click', () =>{
//     if(body.className == 'active'){
//         body.classList.remove('active')
//     }else{
//         console.log('NAO')
//     }
   
// })
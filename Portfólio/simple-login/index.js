const express = require('express'); 
const app = express();
const bodyParser = require('body-parser')
const User = require('./models/login')



// Config 
    //  Body Parser        - Pega os dados do formulario
    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())               

// Servir arquivos estáticos
app.use(express.static('public'));

// Rotas 
app.get('/', function(req, res){
    res.sendFile(__dirname + '/public/views/layouts/index.html');
})

// Cadastro 

app.post('/add', function(req, res){ 
    User.create({
        nome: req.body.Nome,
        email: req.body.Email,
        senha: req.body.Senha

    }).then(function(){ 
        // res.redirect('/')
        res.send('Usuario cadastrado')

    }).catch( function(error){ 
        res.send(`Ocorreu um erro: ${error}`) 

    }) 
})

app.listen(8081, function(){
    console.log('Servidor Rodando na url http://localhost:8081');
}); 
// control + C  para o servidor 


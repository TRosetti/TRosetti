const Sequelize = require('sequelize')

// Conexão com o banco de dados
const sequelize = new Sequelize('loginApp', 'root', 'T_Rosetti1', {
    host: "localhost",
    dialect: 'mysql'
})
    
module.exports = {
    Sequelize: Sequelize,
    sequelize: sequelize
}


sequelize.authenticate().then(function(){
    console.log("Conectado com sucesso")
}).catch(function(error){
    console.log('Falha ao se conectar: ' + error)
})


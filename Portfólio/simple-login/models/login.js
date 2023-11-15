const db = require('./db')

const User = db.sequelize.define('usuarios',{
    nome: {
        type: db.Sequelize.STRING  // lembrando,   STRING tem uma quantidade máxima de caracteres ,  TEXT não
    },
    email: {
        type: db.Sequelize.STRING 
    },
    senha: {
        type: db.Sequelize.TEXT   // lembrando, nesse caso não vamos por criptação na senha, mas é necessario em uma apliacação real
    }
})

module.exports = User   // Estamos exportando o User para que possamos acessar ela em outro arquivo



// User.sync({force: true})         Essa linha só é usada uma vez para criar a tabela , depois temos que apagar

       
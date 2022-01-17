const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(express.static('kepek'))
app.use(express.static('konyv_kep'))

app.use(cors())

app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get('/konyv_fajtai', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'konyv_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT * from konyv_fajtai', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  })
  app.get('/konyv', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'konyv_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT `leiras_konyv`, konyv.konyv_kep, konyv.konyv_nev FROM `leiras` INNER JOIN konyv_fajtai ON leiras_id=konyv_fajtai.konyv_id INNER JOIN konyv ON konyv_fajtai.konyv_id = konyv.konyv_id', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  }) 


  app.get('/konyv_fajtai', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'konyv_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT `konyv_nev`, konyv_fajtai.konyvfajta_kep FROM `konyv` INNER JOIN konyv_fajtai ON konyv.konyv_id=konyv_fajtai.konyv_id', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  }) 

  app.post('/szavazatfelvitel', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'konyv_adatb'
    })
    
    connection.connect()
    
    connection.query('insert into szavazat values (null, '+req.body.bevitel1+' )', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()


  
  })



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
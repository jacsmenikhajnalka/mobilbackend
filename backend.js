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

app.post('/szavazatfelvitel', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('INSERT INTO szavazatfelvitel values (NULL,'+req.body.bevitel1+')', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()



})
app.post('/szavazatfelvitel2', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('UPDATE szavazatfelvitel SET szavazo_ertek=(szavazo_ertek+1)WHERE szavazat_id=2', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()



})
app.post('/szavazatfelvitel3', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('UPDATE szavazatfelvitel SET szavazo_ertek=(szavazo_ertek+1)WHERE szavazat_id=3', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()



})
app.post('/szavazatfelvitel4', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('UPDATE szavazatfelvitel SET szavazo_ertek=(szavazo_ertek+1)WHERE szavazat_id=4', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()



})
app.post('/szavazatfelvitel5', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('UPDATE szavazatfelvitel SET szavazo_ertek=(szavazo_ertek+1)WHERE szavazat_id=5', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()



})
app.post('/szavazatfelvitel6', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'konyv_adatb'
  })
  
  connection.connect()
  
  connection.query('UPDATE szavazatfelvitel SET szavazo_ertek=(szavazo_ertek+1)WHERE szavazat_id=6', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
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
    
    connection.query('SELECT * FROM `leiras` INNER JOIN konyv_fajtai ON leiras_id=konyv_fajtai.konyv_id INNER JOIN konyv ON konyv_fajtai.konyv_id = konyv.konyv_id', function (err, rows, fields) {
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
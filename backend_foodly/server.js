const express = require('express')
const app = express()
const port = 3000
const dotenv = require('dotenv')

app.get('/', (req, res) => res.send("Hello World"))
app.listen(port, () => console.log(`Foodly Backend is Running on ${port}!`))
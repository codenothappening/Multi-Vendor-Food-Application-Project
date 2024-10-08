const express = require('express')
const app = express()
const port = process.env.PORT || 3000;
const dotenv = require('dotenv');
const mangoose = require('mongoose');


dotenv.config();
mangoose.connect(process.env.MONGOURL)
    .then(() => console.log("Foodly connected to Database"))
    .catch((err) => console.log(err));

app.get('/', (req, res) => res.send("Hello World"))
app.listen(process.env.PORT || 6013, () => console.log(`Foodly Backend is Running on ${process.env.PORT}!`))
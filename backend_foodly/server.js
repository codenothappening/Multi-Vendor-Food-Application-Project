const express = require('express')
const app = express()
const port = process.env.PORT || 3000;
const dotenv = require('dotenv');
const mangoose = require('mongoose');
const CategoryRoute = require("./routes/category")
const RestaurantRoute = require('./routes/restaurant')


dotenv.config();
mangoose.connect(process.env.MONGOURL)
    .then(() => console.log("Foodly connected to Database"))
    .catch((err) => console.log(err));


app.use(express.json());

app.use(express.urlencoded({extended:true}));
app.use("/api/category",CategoryRoute);

app.use("/api/restaurant",RestaurantRoute);
app.listen(process.env.PORT || 6013, () => console.log(`Foodly Backend is Running on ${process.env.PORT}!`))
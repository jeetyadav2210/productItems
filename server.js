var express=require('express')
var connection= require("./connection")
var bodyParser = require("body-parser")
const e = require('cors')
var app= express()
app.use(express.json())

let product_item = require("./routes/item_details")
let users = require("./routes/users")

app.use("/api",product_item)

app.use("/api",users)

app.listen(5000,() =>{
    console.log("server working now");
})
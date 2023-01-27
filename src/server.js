const express = require('express')
const app = express()
const PORT = process.env.PORT || 8443

app.get('/', (req,res)=>{
    res.send("Namaste World!!!");
})

app.listen(PORT,()=>{
    console.log(`Listening to request on ${PORT}.`)
})


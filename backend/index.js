const express = require("express")

const app = express();
const cors = require('cors')
app.use(cors())

// Statics
app.use(express.static('static'))
app.use(express.json()) 
app.use(express.urlencoded({ extended: true }))

// routers
const indexRouter = require('./routes/index')

app.use(indexRouter.router)

app.listen(3000, () => {
  console.log(`Example app listening at http://localhost:3000`)
})
require('dotenv').config()
const express = require("express");
const bodyParser = require("body-parser");
const DishRouter = require('./routes/DishRoutes');
const AuthRouter = require('./routes/AuthRoutes');
const cors = require("cors")
const app = express();
const port = 9000;

// setup middleware
app.use(bodyParser.json());
app.use(cors());

//
app.use(DishRouter);
app.use(AuthRouter);

//
app.listen(port, () => {
    console.log(`api is ready on http://localhost:${port}`)
});
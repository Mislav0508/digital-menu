require('dotenv').config()
const cookieParser = require("cookie-parser")
const express = require("express");
const bodyParser = require("body-parser");
const DishRouter = require('./routes/DishRoutes');
const AuthRouter = require('./routes/AuthRoutes');
const cors = require("cors")
const app = express();
const port = 9000;

// setup middleware
app.use(cookieParser("mysupersecret"))
app.use(bodyParser.json());

app.use(cors({
origin: function(origin, callback){
    return callback(null, true);
},
optionsSuccessStatus: 200,
credentials: true
}));

//
app.use(DishRouter);
app.use(AuthRouter);

//
app.listen(port, () => {
    console.log(`api is ready on http://localhost:${port}`)
});
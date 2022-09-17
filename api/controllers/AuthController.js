const db = require("../db/db")
const { StatusCodes } = require('http-status-codes');
const jwt = require("jsonwebtoken")

const login = async (req,res) => {
  const { username, password } = req.body
  console.log(username, password);
  try {
    if (!username || !password) {
      throw new Error("Invalid credentials")
    }
    const [user] = await db.promise().query(`SELECT * FROM user WHERE Username = '${username}';`)
    
    if (!user[0]) {
      throw new Error("User doesn't exist");
    }
    if (user[0].Password !== password) {
      console.log("invalid pass");
      throw new Error('Invalid Password');
    }  
  
    const tokenUser = { username, password }
    const token = jwt.sign(tokenUser, "mysupersecret", {
      expiresIn: "1h",
    });
    const oneDay = 1000 * 60 * 60 * 24;
    res.cookie('token', token, {
      httpOnly: false,
      expires: new Date(Date.now() + oneDay),
      secure: false,
      signed: true
    });
  
    res.status(StatusCodes.OK).json({ user: tokenUser }); 
  } catch (error) {
    res.status(StatusCodes.INTERNAL_SERVER_ERROR).send({msg: error});
  }
}

const logout = async (req,res) => {
  console.log("logout");
}
 


module.exports = {
  login,
  logout
}
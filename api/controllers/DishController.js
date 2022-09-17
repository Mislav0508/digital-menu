const db = require("../db/db")
const { StatusCodes } = require('http-status-codes');
const { v4: uuid4 } = require("uuid");

const getDishes = async (req,res) => {
  try {
    let [dishes] = await db.promise().query(`SELECT * FROM dish;`)
    dishes = dishes.map((x) => {
      return { ...x, strings: '' }
    })
    res.status(StatusCodes.OK).json({dishes});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }
}

const getDropdowns = async (req,res) => {
  const [dropdowns] = await db.promise().query('SELECT DISTINCT Category, Availability FROM dish;')
  const Availability = [...new Set(dropdowns.map(x => {
    return x.Availability
  }))]
  const Category = [...new Set(dropdowns.map(x => {
    return x.Category
  }))]
  res.status(StatusCodes.OK).json({dropdowns: { Availability, Category}});
}

const updateDish = async (req,res) => {
  const { dish } = req.body
  const Changed = new Date().toISOString().slice(0, 19).replace('T', ' ');
  try {
    await db.promise().query(`UPDATE digitalmenu.dish
    SET Name = '${dish.Name}',
    Description = '${dish.Description}',
    Price = ${dish.Price},
    Category = '${dish.Category}',
    Availability = '${dish.Availability}',
    WaitTimeMinutes = ${dish.WaitTimeMinutes},
    SoldOut = ${!dish.SoldOut ? 0 : 1},
    Changed = '${Changed}'
    WHERE _id='${dish._id}';`)
    console.log(dish);

    res.status(StatusCodes.OK).json({dish});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }  
}

const createDish = async (req,res) => {
  const { dish } = req.body
  const _id = uuid4()
  const Created = new Date().toISOString().slice(0, 19).replace('T', ' ');
  console.log(dish,_id,Created);
  try {
    await db.promise().query(`INSERT INTO dish 
    (_id, Name, Description, Price, Category, Availability, WaitTimeMinutes, SoldOut, Created)
    VALUES 
    ('${_id}', 
    '${dish.Name}',
    '${dish.Description}',
    ${parseFloat(dish.Price).toFixed(2)}, 
    '${dish.Category}', 
    '${dish.Availability}',
    ${Math.round(parseFloat(dish.WaitTimeMinutes))},
    ${dish.SoldOut ? 1 : 0}, 
    '${Created}');`)
    res.send({dish, _id})
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }
}

const deleteDish = async (req,res) => {
  const { _id } = req.body
  try {
    await db.promise().query(`DELETE FROM digitalmenu.dish
    WHERE _id='${_id}';`)
    res.status(StatusCodes.OK).json({msg: "Dish was successfully deleted."});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  } 
}

module.exports = {
  getDishes,
  getDropdowns,
  updateDish,
  createDish,
  deleteDish
}
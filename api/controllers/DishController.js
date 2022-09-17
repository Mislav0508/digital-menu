const db = require("../db/db")
const { StatusCodes } = require('http-status-codes');
const { uuid } = require("uuidv4");

const getDishes = async (req,res) => {
  try {
    const [dishes] = await db.promise().query(`SELECT * FROM dish;`)
    res.status(StatusCodes.OK).json({dishes});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }
}
const clearDishes = async (req,res) => {
  res.status(StatusCodes.OK).json({dishes: []});
}
const getDishById = async (req,res) => {
  const dish = _dishes.find(x => x._id === req.params._id)
  console.log(dish);
  res.status(StatusCodes.OK).json({dishes: dish ? dish : null});
}
const updateDish = async (req,res) => {
  const { dish } = req.body
  const Changed = new Date().toISOString().slice(0, 19).replace('T', ' ');
  try {
    await db.promise().query(`UPDATE digitalmenu.dish
    SET Name = '${dish.Name}',
    Description = '${dish.Description}',
    Price = ${dish.Price},
    CategoryID = ${dish.CategoryID},
    AvailabilityID = ${dish.AvailabilityID},
    WaitTimeMinutes = ${dish.WaitTimeMinutes},
    SoldOut = ${dish.SoldOut},
    Changed = '${Changed}'
    WHERE _id='${dish._id}';`)
    console.log(dish);

    res.status(StatusCodes.OK).json({dish});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }  
}
const createDish = async (req,res) => {
  res.send("create dish")
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
  clearDishes,
  getDishById,
  updateDish,
  createDish,
  deleteDish
}
const db = require("../db/db")
const { StatusCodes } = require('http-status-codes');
const { uuid } = require("uuidv4");

const getDishes = async (req,res) => {
  try {
    const [_dishes] = await db.promise().query(`SELECT * FROM dish;`)
    res.status(StatusCodes.OK).json({dishes: _dishes});
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({msg: "Something went wrong"})
  }
}
const clearDishes = async (req,res) => {
  let _dishes = []
  res.status(StatusCodes.OK).json({dishes: _dishes});
}
const getDishById = async (req,res) => {
  const dish = _dishes.find(x => x._id === req.params._id)
  console.log(dish);
  res.status(StatusCodes.OK).json({dishes: dish ? dish : null});
}
const updateDish = async (req,res) => {
  if (req.body == null) {
    res.status(StatusCodes.BAD_REQUEST).json({
      status: "Failed",
      message: "No content provided"
    });
  }  
  else {
    console.log(req.body);
    const dish = req.body,
    status = "OK";
    
    if (!dish._id) {
      //
      dish._id = uuid();
      dish._Created = new Date().toISOString().slice(0, 19).replace('T', ' ')
      dish._Changed = null;

      //
      _dishes.push(dish);
    }
    else {
      //
      const dishIndex = _dishes.findIndex(x => x._id === dish._id);

      //
      if (dishIndex >= 0) {
          //
          dish._Changed = new Date().toISOString().slice(0, 19).replace('T', ' ')

          //
          _dishes[dishIndex] = dish;
      }
      else {
          //
          status = `dish not found for _id ${dish._id}`;
      }
    }

    // res.status(StatusCodes.OK).json({
    //   status: status,
    //   dishes: dish
    // });
  }
}
const createDish = async (req,res) => {
  res.send("create dish")
}
const deleteDish = async (req,res) => {
  res.send("delete dish")
}

module.exports = {
  getDishes,
  clearDishes,
  getDishById,
  updateDish,
  createDish,
  deleteDish
}
const express = require("express")
const router = express.Router()

const { getDishes,
  clearDishes,
  getDishById,
  updateDish,
  createDish,
  deleteDish } = require('../controllers/DishController');

router.get('/dishes', getDishes);
router.get('/dishes/clear', clearDishes);
router.get('/dishes/:_id', getDishById);
router.put('/dishes', updateDish);
router.post('/dishes', createDish);
router.delete('/dishes/:_id', deleteDish);

module.exports = router;
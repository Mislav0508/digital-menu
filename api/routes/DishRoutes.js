const express = require("express")
const router = express.Router()

const { getDishes,
  getDishById,
  getDropdowns,
  updateDish,
  createDish,
  deleteDish } = require('../controllers/DishController');

router.get('/dishes', getDishes);
router.post('/edit-dish/:id', getDishById);
router.get('/dishes/dropdowns', getDropdowns);
router.put('/dishes/:_id', updateDish);
router.post('/dishes', createDish);
router.delete('/dishes/:_id', deleteDish);

module.exports = router;
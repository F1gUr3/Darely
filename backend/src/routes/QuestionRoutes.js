const { GetRandomQuestion, GetAllQuestions } = require("../controllers/QuestionController");
const express = require('express');

const router = express.Router();

router.get("/", GetAllQuestions);
router.get("/:category/:type/random", GetRandomQuestion);

module.exports = router;
const { GetAllQuestions, GetRandomQuestion, CreateNewQuestion } = require("../controllers/QuestionController");
const express = require('express');

const router = express.Router();

router.get("/", GetAllQuestions);
router.get("/:category/:type/random", GetRandomQuestion);
router.post("/createNew", (req, res) => {
    CreateNewQuestion
} )

module.exports = router;
const sequelize = require("../config/db");
const Question = require("../models/QuestionModel");

const GetRandomQuestion = async (req, res) => {
    try{
        const category = req.params.category;
        const type = req.params.type;

        const question = await Question.findOne({
            where:{
                category: category,
                type: type,
            },
            order: sequelize.random(),

        });
        res.json(question);
    }
    catch(e){
        res.status(500).json("Failed to get question: " + e);
    }
}
const GetAllQuestions = async (req, res) => {
    try{
        const questions = await Question.findAll();
        res.json(questions);

    }
    catch(e){
        res.status(500).json("Failed to get questions.");

    }

}

const CreateNewQuestion = (req, res) => {
    try {
        const { category, type, content } = req.body;
        console.log(req.body);

        if (!category || !type || !content) {
            return res.status(400).json("Missing required fields: category, type, or content");
        }

        const newQuestion = Question.create({
            category: category,
            type: type,
            content: content,
        });

        res.status(201).json(newQuestion);
    } catch (e) {
        res.status(500).json("Failed to create new question: " + e);
    }
};



module.exports = {
    GetAllQuestions,
    GetRandomQuestion,
    CreateNewQuestion,
}
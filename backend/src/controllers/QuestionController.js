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


module.exports = {
    GetAllQuestions,
    GetRandomQuestion,
}
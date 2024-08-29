const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Question = sequelize.define('question', {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    type: {
        type: DataTypes.STRING(1),
        allowNull: false,
    },
    category: {
        type: DataTypes.STRING(150),
        allowNull: false,
    },
    content: {
        type: DataTypes.TEXT,
        allowNull: false,
    }}, 
    {
        timestamps: false,
    },
    );

module.exports = Question;
const express = require("express");
const cors = require("cors");
const QuestionRoutes = require("./routes/QuestionRoutes");

const app = express();
app.use(cors({
    origin: 5173,
    
}));
app.use(express.json());


app.use("/api/questions", QuestionRoutes)


module.exports = app;
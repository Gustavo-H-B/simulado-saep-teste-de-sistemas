const express = require("express");
const app = express();

const responsavelRoute = require("./routes/responsavelRoute");

app.use(express.json());

app.use(responsavelRoute);

module.exports = app;
const express = require("express");
const app = require("./app");

app.listen(3001, () => {
  console.log("Servidor rodando na porta http://localhost:3001");
});
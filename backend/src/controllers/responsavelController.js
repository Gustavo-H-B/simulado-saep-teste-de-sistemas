const express = require("express");
import { listarResponsaveis } from "../models/responsavelModel";

const router = express.Router();

router.get("/", async (req, res) => {
  try {
    const dados = await listarResponsaveis();
    return res.status(200).json(dados);
  } catch (erro) {
    return res.status(500).json({ erro: "Erro interno no servidor." });
  }
});

export default router;
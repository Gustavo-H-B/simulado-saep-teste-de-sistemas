const db = require("../config/database");

export async function listarResponsaveis() {
  const [linhas] = await db.query("SELECT * FROM responsaveis");
  return linhas;
}
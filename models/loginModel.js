const db = require('../config/db');

const getUserByUsername = async (email) => {
  const [rows] = await db.execute('SELECT * FROM login WHERE username = ?', [email]);
  return rows[0];
};

module.exports = {
  getUserByUsername
};

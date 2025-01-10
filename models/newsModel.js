const pool = require("../config/db");  // Assuming you're using a connection pool for MySQL

// Get all news
exports.getAllNews = async () => {
  try {
    const [rows] = await pool.query('SELECT * FROM news');
    return rows;  // Returning the rows directly
  } catch (error) {
    throw error;  // Let the controller handle the error
  }
};

// Get news by ID
exports.getNewsById = async (id) => {
  try {
    const [rows] = await pool.query('SELECT * FROM news WHERE id = ?', [id]);
    return rows[0];  // Return the first result
  } catch (error) {
    throw error;
  }
};

// Create new news
exports.createNews = async (newsData) => {
  try {
    const { category_id, news_title, news_short_title, date, image, news_content } = newsData;
    const [result] = await pool.query('INSERT INTO news (category_id, news_title, news_short_title, date, image, news_content) VALUES (?, ?, ?, ?, ?, ?)', 
    [category_id, news_title, news_short_title, date, image, news_content]);
    return result.insertId;  // Return the inserted ID
  } catch (error) {
    throw error;
  }
};

// Update news by ID
exports.updateNews = async (id, newsData) => {
  try {
    const { category_id, news_title, news_short_title, date, image, news_content } = newsData;
    const [result] = await pool.query('UPDATE news SET category_id = ?, news_title = ?, news_short_title = ?, date = ?, image = ?, news_content = ? WHERE id = ?', 
    [category_id, news_title, news_short_title, date, image, news_content, id]);
    return result.affectedRows;  // Return number of affected rows
  } catch (error) {
    throw error;
  }
};

// Delete news by ID
exports.deleteNews = async (id) => {
  try {
    const [result] = await pool.query('DELETE FROM news WHERE id = ?', [id]);
    return result.affectedRows;  // Return number of affected rows
  } catch (error) {
    throw error;
  }
};

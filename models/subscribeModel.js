const db = require('../config/db'); // Import the database connection pool

// Model to insert email into the database
exports.addSubscription = async (email) => {
  try {
    const query = 'INSERT INTO subscribe (email) VALUES (?)';
    const [result] = await db.execute(query, [email]); // Use db.execute for promise-based queries
    return result; // Return the result of the query
  } catch (error) {
    throw error; // If error occurs, throw it to be handled by the controller
  }
};

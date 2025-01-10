const db = require('../config/db');

// Create a function to insert form data
const createForm = async (formData) => {
  try {
    const { name, designation, organization, email, phone_number, message, form_type } = formData;

    // Determine form_id based on form_type
    let form_id = null;
    if (form_type === 1) {
      form_id = 1; // Contact form
    } else if (form_type === 2) {
      form_id = 2; // Downloads form
    }

    // SQL query to insert form data into the oviya_form table
    const query = `INSERT INTO oviya_form (name, designation, organization, email, phone_number, message, form_id)
                   VALUES (?, ?, ?, ?, ?, ?, ?)`;

    // Execute the query using the promise pool
    const [rows] = await db.query(query, [name, designation, organization, email, phone_number, message, form_id]);

    return rows;
  } catch (error) {
    throw new Error('Error inserting form data: ' + error.message);
  }
};

module.exports = {
  createForm
};

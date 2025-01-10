const formModel = require('../models/formModel');
const transporter = require('../config/emailConfig');
require('dotenv').config();
const submitForm = async (req, res) => {
  try {
    const { name, designation, organization, email, phone_number, message, form_type } = req.body;

    // Save form data in the database
    const result = await formModel.createForm({
      name,
      designation,
      organization,
      email,
      phone_number,
      message,
      form_type
    });

    // Determine email subject and message based on form_type
    let subject = '';
    if (form_type === 1) {
      subject = 'Thank You for Contacting Us!';
    } else if (form_type === 2) {
      subject = 'Thank You for Downloading!';
    }

    // Send email
    const mailOptions = {
      from: process.env.EMAIL_USER, // Sender email
      to: email,                   // Receiver email (user's email)
      subject: subject,
      html: `
        <p>Hi ${name},</p>
        <p>Thank you for reaching out. We have received your message:</p>
        <p>${message}</p>
        <p>Best Regards,<br>Team</p>
      `
    };

    await transporter.sendMail(mailOptions);

    return res.status(200).json({ message: 'Form submitted successfully and email sent', result });
  } catch (error) {
    console.error('Error submitting form:', error);
    return res.status(500).json({ error: error.message || 'Internal server error' });
  }
};

module.exports = { submitForm };

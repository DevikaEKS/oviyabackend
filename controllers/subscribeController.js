const subscribeModel = require('../models/subscribeModel'); // Import the model

// Controller to handle email subscription
exports.subscribeEmail = async (req, res) => {
  const { email } = req.body; // Get email from the request body

  try {
    // Call the model to insert the email into the database
    const result = await subscribeModel.addSubscription(email);

    // Respond with success if the email was successfully inserted
    return res.status(200).json({ message: 'Subscription successful', result });
  } catch (error) {
    // Handle errors and respond with a failure message
    return res.status(500).json({ message: 'Error storing email', error });
  }
};

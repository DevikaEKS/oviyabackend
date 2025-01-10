const jwt = require('jsonwebtoken');
const loginModel = require('../models/loginModel');

const login = async (req, res) => {
  const { email, password } = req.body;

  try {
    const user = await loginModel.getUserByUsername(email);

    if (!user) {
      return res.status(400).json({ message: 'Invalid credentials' });
    }

    // Compare plaintext password directly
    if (user.password !== password) {
      return res.status(400).json({ message: 'Invalid credentials' });
    }

    const payload = { userId: user.id, roleId: user.role_id };
    const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRES_IN });

    // Role-based logging
    if (user.role_id === 1) {
      console.log('Hello Admin');
    } else if (user.role_id === 2) {
      console.log('Hello Sales');
    }

    // Send user data along with the token
    res.status(200).json({
      message: 'Login successful',
      token,
      user: {
        id: user.id,
        email: user.email,
        role_id: user.role_id,
      },
    });
  } catch (error) {
    console.error('Error during login:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = { login };

const express = require('express');
const dotenv = require('dotenv');
const bodyParser = require('body-parser');
const authRoutes = require('./routes/authRoutes');
const formRoutes = require('./routes/formRoutes');
const newsRoutes = require("./routes/newsRoutes");
const subscribeRoutes = require('./routes/subscribeRoutes');
const cors = require('cors');
const db = require('./config/db');
const path = require("path");
dotenv.config();

// Initialize the app object before using it
const app = express();

// Enable CORS before any routes or middleware
app.use(cors({
  origin: ["http://192.168.254.144:5173","http://localhost:3000","http://localhost:5173"], // Allowed origins
  methods: ["GET", "POST", "PUT", "DELETE"], // Allowed HTTP methods
  allowedHeaders: ["Content-Type", "Authorization"], // Allowed headers
  credentials: true, // Allow cookies and credentials
}));

app.use(bodyParser.json()); // Parse incoming JSON requests
app.use(bodyParser.urlencoded({ extended: true }));

// Serve uploaded images


// Define routes
app.use('/api/auth', authRoutes);
app.use('/api/',formRoutes);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));
app.use("/api/news", newsRoutes);
app.use('/api', subscribeRoutes);

// Start Server and connect to MySQL
db.query("SELECT 1")
  .then(() => {
      console.log("MySQL connected!");
      app.listen(process.env.PORT, () => console.log(`Server running on port ${process.env.PORT}`));
  })
  .catch((err) => console.error("Database connection failed:", err.message));

const express = require("express");
const router = express.Router();
const newsController = require("../controllers/newsController");
const upload = require("../middleware/uploadMiddleware");


router.post("/", upload.single("image"), newsController.createNews);
router.get("/", newsController.getAllNews);
router.get("/:id", newsController.getNewsById);
router.put("/:id", upload.single("image"), newsController.updateNews);
router.delete("/:id", newsController.deleteNews);

module.exports = router;

const express = require("express");
const router = express.Router();
const { Questions } = require("../models");

router.get("/", async (req, res) => {
  const questions = await Questions.findAll();
  res.json(questions);
});

module.exports = router;

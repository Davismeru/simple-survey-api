const express = require("express");
const multer = require("multer");
const path = require("path");
const router = express.Router();
const { Responses } = require("../models");

// handle uploadding of files using multer
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./uploads");
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + file.originalname);
  },
});

const upload = multer({
  storage: storage,
  fileFilter: (req, file, cb) => {
    const fileTypes = /pdf/;
    const mimeType = fileTypes.test(file.mimetype);
    const extname = fileTypes.test(path.extname(file.originalname));

    if (mimeType && extname) {
      return cb(null, true);
    }
    cb("invalid file formats");
  },
}).array("certificates");

// fetch all responses router
router.get("/", async (req, res) => {
  const { page, limit = 3, email } = req.query;

  // pagination
  const paginationResponses = await Responses.findAndCountAll({
    page,
    limit,
    offset: page * limit,
  });

  const totalPages = Math.ceil(paginationResponses?.count / limit);
  const totalItems = paginationResponses?.count;
  const data = paginationResponses?.rows;

  // filter responses
  const filteredResponses = await Responses.findAndCountAll();
  const filteredData = filteredResponses?.rows.filter((row) => {
    if (row.email_address.includes(email)) {
      return row;
    }
  });

  res.send({ totalPages, totalItems, data, filteredData });
});

// post user response fron client
router.put("/", upload, async (req, res) => {
  const arr = [];
  req.files.map((file) => {
    arr.push(file.path);
  });
  const response = {
    full_name: req.body.full_name,
    email_address: req.body.email_address,
    description: req.body.description,
    gender: req.body.gender,
    programming_stack: req.body.programming_stack,
    certificates: arr.toString(),
  };
  console.log(req.files);
  await Responses.create(response);
  res.json(response);
});

module.exports = router;

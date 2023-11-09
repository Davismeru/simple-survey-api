const express = require("express");
const cors = require("cors");
const app = express();
require("dotenv").config;

app.use(express.json());
app.use(cors());
app.use("/uploads", express.static("./uploads"));
const db = require("./models");

// responses router
const responsesRouter = require("./routes/Responses");
app.use("/api/questions/responses", responsesRouter);

// questions router
const questionsRouter = require("./routes/Questions");
app.use("/api/questions", questionsRouter);

// download files function
app.get("/api/questions/responses/certificates/:id", (req, res) => {
  res.download(__dirname + "/uploads/" + req.params.id);
  console.log(res);
});

db.sequelize
  .sync()
  .then(() => {
    app.listen(process.env.PORT || 3000, () => {
      console.log("server running");
    });
  })
  .catch((err) => {
    console.log(err);
  });

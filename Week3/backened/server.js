const express = require("express");
const mongoose = require("mongoose");

const app = express();
const PORT = 5000;

mongoose.connect("mongodb+srv://snehatomar8612:tomars23@devops.5peqtft.mongodb.net/?appName=DevOps")
  .then(() => console.log("Connected to MongoDB"))
  .catch(err => console.log(err));

app.get("/", (req, res) => {
  res.send("MERN backend running inside Docker");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

import express from "express";
const app = express();
app.get("/", (req, res) => {
  res.send("welcome to express app");
});
app.get("/login", (req, res) => {
  res.send("welcome to login");
});
app.listen(7500, () => {
  console.log("server has started");
});

/*
import express from "express";

const app = express();

app.listen(7500, ()=>{
    console.log("Server is started");
})
 */

import express, { Request, Response } from "express";
import cors from "cors";
import bodyParser from "body-parser";

// Create express app
const app = express();
const PORT = 3000;

// Middlewares
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes
app.get("/", (req: Request, res: Response) => {
  req;
  res.send("<div style='text-align:center;margin-top:40vh;'><h1>Hello World</h1></div>");
});
// Start server
app.listen(PORT, () => {
  console.log(`Restart server with port: ${PORT}`);
});

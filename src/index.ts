import express, { json } from "express";
import "express-async-errors";
import dotenv from "dotenv";
import carsRouter from "./routes/carsRouter.js";
import handleErrorsMiddleware from "./middlewares/errorHandlerMiddleware.js";
import { connectDb } from "./config/database.js";
dotenv.config();

const app = express();
app.use(json());
app.use(carsRouter);
app.use(handleErrorsMiddleware);
connectDb();

const port = +process.env.PORT || 5000;


app.listen(port, () => {
  console.log(`Server is up and running on port: ${port}`);
})
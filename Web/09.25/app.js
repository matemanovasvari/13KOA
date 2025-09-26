//cars
//id, brand, model
import express from "express";
import * as db from "./util/database.js";

const PORT = 3000;
const app = express();

app.use(express.json());



app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
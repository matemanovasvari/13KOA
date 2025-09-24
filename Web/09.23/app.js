import express from "express";
import * as db from "./util/database.js";

const PORT = 3000;
const app = express();

app.use(express.json());

app.get("/books", (req, res) => {
    const books = db.getBooks();
    res.status(200).json(books);
});

app.get("/books/:id", (req, res) => {
    const book = db.getBooksById(+req.params.id);
    if(!book){
        return res.status(404).json({message: "Book not found!"});
    };
    res.status(200).json(book);
});

app.post("/books", (req, res) => {
    const {title, author} = req.body;

    if(!title || !author){
        return res.status(400).json({message: "Missing data!"});
    }
    const saveResult = db.saveBook(title, author);
    res.status(200).json({id: saveResult.lastInsertRowid, title, author});
});


app.listen(PORT, () => {
    console.log(`Server runs on http://localhost:${PORT}`);
});
import express from "express";

const PORT = 3000;
const app = express();

app.use(express.json());

const cars = [
    {id: 1, brand: "Toyota", model: "Corolla"},
    {id: 1, brand: "Toyota", model: "Yaris"},
    {id: 1, brand: "Suyuki", model: "Swift"},
    {id: 1, brand: "Mayda", model: "Miata"},
    {id: 1, brand: "Mitsubishi", model: "L300"},
]

app.get("/", (req, res) => {
    res.status(200).json(cars);
});

app.get("/cars/:id", (req, res) => {
    const id = +req.params.id;

    const car = cars.find(x => x.id === id);
    if(!car){
        return res.status(404).json({message:"Car not found!"});
    }
    res.status(200).json(car);
});

app.post("/cars", (req, res) => {
    const { brand, model } = req.body;

    if(!brand || !model){
        return res.status(400).json({message:"Invalid credentials!"});
    }

    const id = cars.lenght ? cars[cars.length - 1].id + 1 : 1;
    const car = {id, brand, model};

    cars.push(car);

    res.status(201).json(car);
});

app.put("/cars/:id", (req, res) => {
    const id = +req.params.id;

    const car = cars.find(x => x.id === id);
    if(!car){
        return res.status(404).json({message:"Car not found!"});
    }

    const {brand, model} = req.body;
    if(!brand || !model){
        return res.status(400).json({message:"Invalid credentials!"});
    }

    const index = cars.indexOf(car);
    car = {id: car.id, brand, model}
    cars[index] = car;
    res.status(200).json(car);
});

app.delete("/cars/:id", (req, res) =>{
    const id = +req.params.id;

    const car = cars.find(x => x.id === id);
    if(!car){
        return res.status(404).json({message:"Car not found!"});
    }
    const index = cars.indexOf(car);
    cars.splice(index, 1);
    res.status(200).json({message:"Deleted successfully!"});
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
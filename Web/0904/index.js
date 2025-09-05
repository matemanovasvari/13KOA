const name = document.getElementById("name").value;
const city = document.getElementById("city").value;
const postal = document.getElementById("postal").value;
const street = document.getElementById("street").value;
const address = document.getElementById("address").value;

const data = {
    name,
    city,
    postal,
    street,
    address
};

console.log(data);

const btn = document.getElementById("add");

btn.addEventListener("click", () => {
    console.log(data);
    if(name != null && city != null && postal != null && street != null && address != null ){
        localStorage.setItem(`${localStorage.length == undefined ? "0" : localStorage.length}`, data);
    };
    console.log(localStorage)
});
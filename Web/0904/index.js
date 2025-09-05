const btn = document.getElementById("add");

displayData();

btn.addEventListener("click", () => {
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
    if(name != null && city != null && postal != null && street != null && address != null ){
        localStorage.setItem("user", JSON.stringify(data));
    };
    console.log(localStorage)

    displayData();
});

function displayData(){
    const user = localStorage.getItem("user"); 
    const data = JSON.parse(user);

    if(data != null){
        document.getElementById("data").innerHTML = `<h2>Name: ${data.name}<h2><h2>City: ${data.city}<h2><h2>Postal: ${data.postal}<h2><h2>Street: ${data.street}<h2><h2>Address: ${data.address}<h2>`
    }
    else{
        document.getElementById("data").innerHTML = `<h2>No data!<h2>`;
    }
}
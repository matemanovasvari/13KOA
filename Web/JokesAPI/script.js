const randomJokeBtn = document.getElementById("random");

randomJokeBtn.addEventListener("click", async () => {
  const response = await fetch(
    "https://official-joke-api.appspot.com/jokes/random"
  );
  const data = await response.json();
  console.log(data);

  const container = document.getElementById("container");
  container.innerHTML = "";

  const jokediv = document.createElement("div");
  jokediv.id = "joke";
  jokediv.innerHTML = `
    <div id="setup">
      ${data.setup}<br>
      <button id="reveal">Reveal</button>
    </div>
    <div id="punchline" style="display: none;">
      ${data.punchline}
    </div>
    <button id="close"></button>
  `;

  container.appendChild(jokediv);

  const revealBtn = document.getElementById("reveal");
  revealBtn.addEventListener("click", () => {
    document.getElementById("punchline").style.display = "block";
    revealBtn.style.display = "none";
  });

  const closeBtn = document.getElementById("close");
  closeBtn.addEventListener("click", () => {
    document.getElementById("container").innerHTML = "";
  });
});

const getByIdBtn = document.getElementById("fromId");

getByIdBtn.addEventListener("click", async () => {
  const id = Number(document.getElementById("id").value);

  const response = await fetch(
    `https://official-joke-api.appspot.com/jokes/${id}`
  );
  const data = await response.json();
  console.log(data);

  const container = document.getElementById("container");
  container.innerHTML = "";

  const jokediv = document.createElement("div");
  jokediv.id = "joke";
  jokediv.innerHTML = `
    <div id="setup">
      ${data.setup}<br>
      <button id="reveal">Reveal</button>
    </div>
    <div id="punchline" style="display: none;">
      ${data.punchline}
    </div>
    <button id="close"></button>
  `;

  container.appendChild(jokediv);

  
  const revealBtn = document.getElementById("reveal");
  revealBtn.addEventListener("click", () => {
      document.getElementById("punchline").style.display = "block";
      revealBtn.style.display = "none";
    });
    
    const closeBtn = document.getElementById("close");
    closeBtn.addEventListener("click", () => {
        document.getElementById("container").innerHTML = "";
    });

    if(data.setup === undefined){
      document.getElementById("setup").innerHTML = "No joke found";
    }
});

const getByCategoryBtn = document.getElementById("fromCategory");

getByCategoryBtn.addEventListener("click", async () => {
  const category = document.getElementById("category").value;

  const response = await fetch(
    `https://official-joke-api.appspot.com/jokes/${category}/random`
  );
  const data = (await response.json())[0];
  console.log(data);

  const container = document.getElementById("container");
  container.innerHTML = "";

  const jokediv = document.createElement("div");
  jokediv.id = "joke";
  jokediv.innerHTML = `
    <div id="setup">
      ${data.setup}<br>
      <button id="reveal">Reveal</button>
    </div>
    <div id="punchline" style="display: none;">
      ${data.punchline}
    </div>
    <button id="close"></button>
  `;

  container.appendChild(jokediv);

  const revealBtn = document.getElementById("reveal");
  revealBtn.addEventListener("click", () => {
    document.getElementById("punchline").style.display = "block";
    revealBtn.style.display = "none";
  });

  const closeBtn = document.getElementById("close");
  closeBtn.addEventListener("click", () => {
    document.getElementById("container").innerHTML = "";
  });
});
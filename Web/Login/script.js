const closeLoginButton = document.getElementById("close_login");
const openRegisterButton = document.getElementById("openRegister");
const closeRegisterButton = document.getElementById("close_register");

let isUserLoggedIn = false;

window.addEventListener("DOMContentLoaded", () => {
  const loggedInUser = localStorage.getItem("loggedInUser");
  if (loggedInUser) {
    isUserLoggedIn = true;
    document.getElementById("login").classList.remove("active");
    document.getElementById("logoutBtn").style.display = "block";
  } else {
    document.getElementById("login").classList.add("active");
    document.getElementById("logoutBtn").style.display = "none";
  }
});

if (!isUserLoggedIn) {
  document.getElementById("logoutBtn").style.display = "none";
}

if (isUserLoggedIn) {
  document.getElementById("logoutBtn").style.display = "block";
  document.getElementById("login").classList.remove("active");
}

openRegisterButton.addEventListener("click", () => {
  document.getElementById("login").classList.remove("active");
  document.getElementById("register").classList.add("active");
});

closeRegisterButton.addEventListener("click", () => {
  document.getElementById("register").classList.remove("active");
  document.getElementById("login").classList.add("active");

  document.getElementById("emailInput").value = "";
  document.getElementById("passwordLoginInput").value = "";
});

document.getElementById("register-form").addEventListener("submit", function (e) {
  e.preventDefault();
  const email = document.getElementById("registerEmailInput").value.trim();
  const password = document.getElementById("passwordInput").value.trim();
  const passwordAgain = document.getElementById("passwordAgainInput").value.trim();

  const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  const passwordRegex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[^A-Za-z0-9]).{8,}$/;

  let users = JSON.parse(localStorage.getItem("users")) || [];

  const existingUser = users.find(user => user.email === email);

  if (!regex.test(email)) {
    document.getElementById("errorRegister").textContent = "Email is in incorrect format!";
  }
  else if (!passwordRegex.test(password)) {
    document.getElementById("errorRegister").textContent = "Password is in incorrect format!";
  }
  else if (password !== passwordAgain) {
    document.getElementById("errorRegister").textContent = "Passwords don't match!";
  }
  else if (existingUser) {
    document.getElementById("errorRegister").textContent = "A user with this email already exists!";
  }
  else {
    const newUser = { email, password };
    users.push(newUser);
    localStorage.setItem("users", JSON.stringify(users));

    document.getElementById("register").classList.remove("active");
    document.getElementById("login").classList.add("active");
    document.getElementById("register-form").reset();
    document.getElementById("errorRegister").textContent = "";

    console.log("Users after register:", JSON.parse(localStorage.getItem("users")));
  }
});

document.getElementById("login-form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const email = document.getElementById("emailInput").value.trim();
  const password = document.getElementById("passwordLoginInput").value.trim();

  let users = JSON.parse(localStorage.getItem("users")) || [];

  const user = users.find(u => u.email === email);

  if (user && user.password === password) {
    isUserLoggedIn = true;
    localStorage.setItem("loggedInUser", JSON.stringify(user)); 
    document.getElementById("login-form").reset();
    document.getElementById("login").classList.remove("active");
    document.getElementById("logoutBtn").style.display = "block";
    document.getElementById("errorLogin").textContent = "";
  }
  else if (!user) {
    document.getElementById("errorLogin").textContent = "Incorrect email address!";
  }
  else if (user.password !== password) {
    document.getElementById("errorLogin").textContent = "Incorrect password!";
  }
});

document.getElementById("logoutBtn").addEventListener("click", () => {
  localStorage.removeItem("loggedInUser");
  document.getElementById("login").classList.add("active");
  document.getElementById("logoutBtn").style.display = "none";
});
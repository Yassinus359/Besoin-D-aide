<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Besoin d'aide</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <h1>Besoin d'aide</h1>
    <p>Une plateforme pour aider et être aidé</p>
</header>

<section class="form">
    <h2>Demander de l'aide</h2>
    <input type="text" id="name" placeholder="Ton nom">
    <textarea id="message" placeholder="Explique ton problème"></textarea>
    <button onclick="addMessage()">Envoyer</button>
</section>

<section class="messages">
    <h2>Demandes</h2>
    <div id="messagesList"></div>
</section>

<script src="script.js"></script>
</body>
</html>
body {
    font-family: Arial;
    background: #f4f4f4;
    margin: 0;
}

header {
    background: #007BFF;
    color: white;
    padding: 20px;
    text-align: center;
}

.form, .messages {
    background: white;
    margin: 20px;
    padding: 20px;
    border-radius: 10px;
}

input, textarea {
    width: 100%;
    margin: 10px 0;
    padding: 10px;
}

button {
    background: #28a745;
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
}

.message {
    background: #eee;
    padding: 10px;
    margin-top: 10px;
    border-radius: 5px;
}
function addMessage() {
    let name = document.getElementById("name").value;
    let message = document.getElementById("message").value;

    if(name === "" || message === "") {
        alert("Remplis tous les champs !");
        return;
    }

    let messageDiv = document.createElement("div");
    messageDiv.className = "message";
    messageDiv.innerHTML = "<strong>" + name + ":</strong> " + message;

    document.getElementById("messagesList").appendChild(messageDiv);

    document.getElementById("name").value = "";
    document.getElementById("message").value = "";
}

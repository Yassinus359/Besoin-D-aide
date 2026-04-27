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

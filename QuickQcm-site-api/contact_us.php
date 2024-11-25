<?php
session_start(); // Démarrer la session

$matieresProfesseur = []; // Initialisation d'un tableau pour stocker les matières du professeur

// Vérification si l'utilisateur est connecté
if (isset($_SESSION['email']) && isset($_SESSION['mdp'])) {
    try {
        // Connectez-vous à la base de données
        $bdd = new PDO("mysql:host=localhost:3308;dbname=projetqcm;charset=utf8mb4", 'root', '');
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Récupérer l'email de l'utilisateur connecté
        $email = $_SESSION['email'];

        // Préparer la requête pour récupérer les informations de l'utilisateur
        $recupUser = $bdd->prepare('SELECT * FROM professeurs WHERE email = ?');
        $recupUser->execute(array($email));
        $userData = $recupUser->fetch(PDO::FETCH_ASSOC);

        // Vérifier si les données utilisateur ont été récupérées
        if ($userData) {
            $id_prof = $userData['id'];

            // Préparer la requête pour récupérer les matières du professeur
            // Préparer la requête pour récupérer les matières du professeur
            $recupMatiere = $bdd->prepare('SELECT DISTINCT matiere.nom_matiere 
                                FROM professeurs 
                                INNER JOIN matiere ON professeurs.id = matiere.id_prof
                                WHERE professeurs.id = ?');
            $recupMatiere->execute(array($id_prof));
            $matiereData = $recupMatiere->fetchAll(PDO::FETCH_ASSOC);


            // Stocker les matières dans un tableau
            foreach ($matiereData as $matiere) {
                $matieresProfesseur[] = $matiere['nom_matiere'];
            }
        } else {
            // L'utilisateur n'existe pas dans la base de données, déconnecter l'utilisateur
            session_destroy();
            header('Location: Error404.html'); // Rediriger vers la page de connexion
            exit;
        }
    } catch (PDOException $e) {
        die("Erreur de connexion : " . $e->getMessage());
    }
} else {
    // L'utilisateur n'est pas connecté, rediriger vers la page de connexion
    header('Location:Error404.html');
    exit;
}


?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>title</title>
    <link rel="stylesheet" href="Acc.css">
    
    <style>
        .breadcrumb{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;padding:.75rem 1rem;margin-bottom:1rem;list-style:none;background-color:#D1000A;border-radius:.25rem}
        .breadcrumb-item+.breadcrumb-item{padding-left:.5rem}
        .breadcrumb-item+.breadcrumb-item::before{display:inline-block;padding-right:.5rem;color:#D1000A;content:"/"}
        .breadcrumb-item+.breadcrumb-item:hover::before{text-decoration:underline}
        .breadcrumb-item+.breadcrumb-item:hover::before{text-decoration:none}
        .breadcrumb-item.active{color:#D1000A}
        .z-depth-3 {
    -webkit-box-shadow: 0 11px 7px 0 rgba(0,0,0,0.19),0 13px 25px 0 rgba(0,0,0,0.3);
    box-shadow: 0 11px 7px 0 rgba(0,0,0,0.19),0 13px 25px 0 rgba(0,0,0,0.3);
}
        .contact{
            background-color: white;
            color: black;
        }
        
    footer{
            background-color: black;
            color: white;
        }

        a{
            color:black;
        } 
        a:hover{
            color: white;
        } 
        .bouton {
        background-color: #D1000A;
        color:white
    }   
    .bouton:hover{
        background-color:black;
        color:white
    }
    .bouton:active{
        background-color: #D1000A;
    }
    footer {
            background-color: black; /* Couleur de fond */
            color: white; /* Couleur du texte */
            text-align: center; /* Alignement du texte au centre */
            padding: 2px; /* Espacement intérieur */
            position: fixed; /* Position fixe par rapport à la fenêtre */
            bottom: 0; /* Positionnement au bas de la fenêtre */
            width: 100%; /* Largeur de 100% */
        }
        #navg {
    background-color:black;
}
    </style>
</head>
<body>
        
    <nav class=" z-depth-3">
        <ol id="navg"class="breadcrumb">
          <li class=""><a href="Acc.php"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" id="IconChangeColor" height="15" width="19"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" id="mainIconPathAttribute" fill="white"></path></svg><span style="color:white;"> Accueil &nbsp;</span></a></li>
          <li class="" ><span style="color:#D1000A;"> / Contact</span></li>
        </ol>
      </nav>
    <div class="contact">
    <section class="py-5">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-8 col-xxl-7">
                    <h2 class="display-5  fw-bold md-3">Contactez nous !</h2>
                    <p class="lead">N'hésitez pas à nous contacter si vous rencontrez des problèmes avec la plateforme, ou si vous avez des messages à nous transmettre. Votre retour est précieux pour nous aider à améliorer notre service et à répondre au mieux à vos besoins.</p>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 mt-2">
                    <form>
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <input class="form-control bg-light" name="first_name" placeholder="First name" type="text" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <input class="form-control bg-light" name="last_name" placeholder="Last name" type="text" required>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <input class="form-control bg-light" name="email" placeholder="Email address" type="email" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <textarea class="form-control bg-light" name="message" placeholder="Your message" rows="4" required></textarea><br>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid">
                                    <button class="btn bouton" type="submit">Send message</button><br><br><br>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    </div>

    <footer>
        <p>© 2024 Quick qcm - Tous droits réservés</p>
    </footer>
    <script>
window.addEventListener('unload', function (e) {
    // Envoyer une requête AJAX au serveur pour déconnecter l'utilisateur
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'logout.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.send();
});
    </script>
</body>
</html>
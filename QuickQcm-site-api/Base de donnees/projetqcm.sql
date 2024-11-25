-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : lun. 25 nov. 2024 à 11:06
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetqcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id_matiere` int(11) NOT NULL,
  `nom_matiere` varchar(100) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id_matiere`, `nom_matiere`, `id_prof`) VALUES
(1, 'Mathématique', 1),
(2, 'Electronique numérique', 2),
(3, 'Programmation', 3),
(4, 'Automatisation', 2);

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(11) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(100) NOT NULL,
  `numero_tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `Nom`, `email`, `mdp`, `nom_utilisateur`, `numero_tel`) VALUES
(1, 'Hatim Naqos', 'hatim.naqos@junia.com', 'motdepasse1', 'hatim_naqos1', '+212 666-162391'),
(2, 'Ahmed Essadki', 'ahmed.essadki@junia.com', 'Ahmed434', 'ahmed_essadki1', '+212 653-568587'),
(3, 'Simohammed Hdafa', 'simohdafa@junia.com', 'Simo673', 'simo_hdafa1', '+212 621-211737');

-- --------------------------------------------------------

--
-- Structure de la table `qcm`
--

CREATE TABLE `qcm` (
  `id_qcm` int(11) NOT NULL,
  `nom_fichier` varchar(255) DEFAULT NULL,
  `niveau` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_prof` int(11) DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  `chemin_json` varchar(300) NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contenu`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `qcm`
--

INSERT INTO `qcm` (`id_qcm`, `nom_fichier`, `niveau`, `date`, `id_prof`, `id_matiere`, `chemin_json`, `contenu`) VALUES
(61, 'qcm_data27_05_24_43_02', 'JM3', '2024-05-27', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data27_05_24_43_02\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"QUIZ\",\n    \"date\": \"2024-05-27\",\n    \"duree\": \"-1\",\n    \"calculatrice\": 1,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Combien font 7 + 5 ?\",\n            \"options\": [\n                \"10\",\n                \"11\",\n                \"12\",\n                \"13\"\n            ],\n            \"reponse\": \"3\"\n        },\n        {\n            \"id\": 2,\n            \"texte\": \"Quel est le r\\u00e9sultat de 9 \\u00d7 3 ?\",\n            \"options\": [\n                \"27\",\n                \"21\",\n                \"18\",\n                \"24\"\n            ],\n            \"reponse\": \"1\"\n        },\n        {\n            \"id\": 3,\n            \"texte\": \"Quelle est la valeur de 15 \\u00f7 3 ?\",\n            \"options\": [\n                \"3\",\n                \"4\",\n                \"5\",\n                \"6\"\n            ],\n            \"reponse\": \"3\"\n        }\n    ]\n}'),
(62, 'qcm_data27_05_24_44_54', 'JM3', '2024-05-27', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data27_05_24_44_54\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"QUIZ\",\n    \"date\": \"2024-05-27\",\n    \"duree\": \"1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"test\",\n            \"options\": [\n                \"test\",\n                \"test\",\n                \"test\",\n                \"test\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(63, 'qcm_data27_05_24_34_18', 'JM Soutenance', '2024-05-27', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data27_05_24_34_18\",\n    \"niveau\": \"JM Soutenance\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-05-27\",\n    \"duree\": \"1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Combien font 7 + 5 ?\",\n            \"options\": [\n                \"A\",\n                \"8\",\n                \"9\",\n                \"9\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(64, 'qcm_data05_07_24_16_23', 'JM3', '2024-07-05', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data05_07_24_16_23\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-07-05\",\n    \"duree\": \"2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"RIEN\",\n    \"notation\": [\n        2,\n        0\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        },\n        {\n            \"id\": 2,\n            \"texte\": \"Capitale de France ?\",\n            \"options\": [\n                \"Paris\",\n                \"LILLE\",\n                \"Marrakesh\",\n                \"Barcelone\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(65, 'qcm_data05_07_24_20_43', 'JM3', '2024-07-05', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data05_07_24_20_43\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-07-05\",\n    \"duree\": \"2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"RIEN\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"FES\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        },\n        {\n            \"id\": 2,\n            \"texte\": \"Capitale de France ?\",\n            \"options\": [\n                \"Paris\",\n                \"Lille\",\n                \"Marseille\",\n                \"Toulouse\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(66, 'qcm_data16_09_24_03_36', 'JM3', '2024-09-16', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data16_09_24_03_36\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-09-16\",\n    \"duree\": \"1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"RS\",\n    \"notation\": [\n        2,\n        -3\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"KESH\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(67, 'qcm_data08_10_24_22_57', 'JM3', '2024-10-08', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data08_10_24_22_57\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-10-08\",\n    \"duree\": \"1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"rs\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(68, 'qcm_data23_10_24_29_07', 'JM3', '2024-10-23', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data23_10_24_29_07\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-10-23\",\n    \"duree\": \"0\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"rs\",\n    \"notation\": [\n        2,\n        -3\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(69, 'qcm_data19_11_24_52_47', 'JM3', '2024-11-19', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data19_11_24_52_47\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-19\",\n    \"duree\": \"2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(70, 'qcm_data19_11_24_11_58', 'JM3', '2024-11-19', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data19_11_24_11_58\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-19\",\n    \"duree\": \"1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -1\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"Capitale du maroc ?\",\n            \"options\": [\n                \"Rabat\",\n                \"B\",\n                \"test\",\n                \"asc\"\n            ],\n            \"reponse\": \"2\"\n        }\n    ]\n}'),
(71, 'qcm_data21_11_24_33_22', 'JM3', '2024-11-21', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_33_22\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-21\",\n    \"duree\": \"-2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        -1,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(72, 'qcm_data21_11_24_16_56', 'JM3', '2024-11-16', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_16_56\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-16\",\n    \"duree\": \"-1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(73, 'qcm_data21_11_24_28_01', 'JM3', '2024-11-21', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_28_01\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-21\",\n    \"duree\": \"0\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(74, 'qcm_data21_11_24_40_26', 'JM3', '2024-11-21', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_40_26\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-21\",\n    \"duree\": \"-2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        1,\n        -1\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(75, 'qcm_data21_11_24_40_37', 'JM3', '2024-11-29', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_40_37\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-29\",\n    \"duree\": \"0\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        1,\n        -2\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"C\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(76, 'qcm_data21_11_24_01_05', 'JM3', '2024-11-21', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data21_11_24_01_05\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-21\",\n    \"duree\": \"-1\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        2,\n        -3\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}'),
(77, 'qcm_data25_11_24_27_15', 'JM3', '2024-11-25', 1, 1, 'latexQCM\\', '{\n    \"ecole\": \"Junia Maroc\",\n    \"prof\": \"Hatim Naqos\",\n    \"nomFichier\": \"qcm_data25_11_24_27_15\",\n    \"niveau\": \"JM3\",\n    \"matiere\": \"Math\\u00e9matique\",\n    \"type_qcm\": \"Examen Final\",\n    \"date\": \"2024-11-25\",\n    \"duree\": \"2\",\n    \"calculatrice\": 0,\n    \"documents\": 0,\n    \"autreConsignes\": \"\",\n    \"notation\": [\n        -2,\n        -3\n    ],\n    \"questions\": [\n        {\n            \"id\": 1,\n            \"texte\": \"CAPITALE\",\n            \"options\": [\n                \"Rabat\",\n                \"Casablanca\",\n                \"Marrakesh\",\n                \"Paris\"\n            ],\n            \"reponse\": \"1\"\n        }\n    ]\n}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_matiere`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qcm`
--
ALTER TABLE `qcm`
  ADD PRIMARY KEY (`id_qcm`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_matiere` (`id_matiere`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id_matiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `qcm`
--
ALTER TABLE `qcm`
  MODIFY `id_qcm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `matiere_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeurs` (`id`);

--
-- Contraintes pour la table `qcm`
--
ALTER TABLE `qcm`
  ADD CONSTRAINT `qcm_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeurs` (`id`),
  ADD CONSTRAINT `qcm_ibfk_2` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

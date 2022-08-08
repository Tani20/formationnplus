-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 août 2022 à 21:24
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `formationplus`
--

-- --------------------------------------------------------

--
-- Structure de la table `attestation`
--

CREATE TABLE `attestation` (
  `id` int(11) NOT NULL,
  `etudiant_id` int(11) DEFAULT NULL,
  `convention_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `attestation`
--

INSERT INTO `attestation` (`id`, `etudiant_id`, `convention_id`, `message`) VALUES
(1, 5, 1, 'Bonjour Inoussa 4 chaabane4,\r\n                Vous avez suivi #nbHeur# de formation chez FormationPlus.\r\n                Pouvez-vous nous retourner ce mail avec la pièce jointe signée.\r\n                Cordialement,\r\n                FormationPlus');

-- --------------------------------------------------------

--
-- Structure de la table `convention`
--

CREATE TABLE `convention` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_heur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `convention`
--

INSERT INTO `convention` (`id`, `nom`, `nb_heur`) VALUES
(1, 'Mathématique', 10);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220808165331', '2022-08-08 18:55:23', 453);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `convention_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `convention_id`, `nom`, `prenom`, `mail`) VALUES
(1, 1, 'Inoussa 0', 'chaabane0', 'chaabane\'.0.\'@gmail.com'),
(2, 1, 'Inoussa 1', 'chaabane1', 'chaabane\'.1.\'@gmail.com'),
(3, 1, 'Inoussa 2', 'chaabane2', 'chaabane\'.2.\'@gmail.com'),
(4, 1, 'Inoussa 3', 'chaabane3', 'chaabane\'.3.\'@gmail.com'),
(5, 1, 'Inoussa 4', 'chaabane4', 'chaabane\'.4.\'@gmail.com'),
(6, 1, 'Inoussa 5', 'chaabane5', 'chaabane\'.5.\'@gmail.com'),
(7, 1, 'Inoussa 6', 'chaabane6', 'chaabane\'.6.\'@gmail.com'),
(8, 1, 'Inoussa 7', 'chaabane7', 'chaabane\'.7.\'@gmail.com'),
(9, 1, 'Inoussa 8', 'chaabane8', 'chaabane\'.8.\'@gmail.com'),
(10, 1, 'Inoussa 9', 'chaabane9', 'chaabane\'.9.\'@gmail.com'),
(11, 1, 'Inoussa 10', 'chaabane10', 'chaabane\'.10.\'@gmail.com'),
(12, 1, 'Inoussa 11', 'chaabane11', 'chaabane\'.11.\'@gmail.com'),
(13, 1, 'Inoussa 12', 'chaabane12', 'chaabane\'.12.\'@gmail.com'),
(14, 1, 'Inoussa 13', 'chaabane13', 'chaabane\'.13.\'@gmail.com'),
(15, 1, 'Inoussa 14', 'chaabane14', 'chaabane\'.14.\'@gmail.com'),
(16, 1, 'Inoussa 15', 'chaabane15', 'chaabane\'.15.\'@gmail.com'),
(17, 1, 'Inoussa 16', 'chaabane16', 'chaabane\'.16.\'@gmail.com'),
(18, 1, 'Inoussa 17', 'chaabane17', 'chaabane\'.17.\'@gmail.com'),
(19, 1, 'Inoussa 18', 'chaabane18', 'chaabane\'.18.\'@gmail.com'),
(20, 1, 'Inoussa 19', 'chaabane19', 'chaabane\'.19.\'@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attestation`
--
ALTER TABLE `attestation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_326EC63FDDEAB1A3` (`etudiant_id`),
  ADD UNIQUE KEY `UNIQ_326EC63FA2ACEBCC` (`convention_id`);

--
-- Index pour la table `convention`
--
ALTER TABLE `convention`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_717E22E3A2ACEBCC` (`convention_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attestation`
--
ALTER TABLE `attestation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `convention`
--
ALTER TABLE `convention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attestation`
--
ALTER TABLE `attestation`
  ADD CONSTRAINT `FK_326EC63FA2ACEBCC` FOREIGN KEY (`convention_id`) REFERENCES `convention` (`id`),
  ADD CONSTRAINT `FK_326EC63FDDEAB1A3` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`id`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FK_717E22E3A2ACEBCC` FOREIGN KEY (`convention_id`) REFERENCES `convention` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

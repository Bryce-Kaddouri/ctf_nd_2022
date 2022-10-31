-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 31 oct. 2022 à 05:21
-- Version du serveur : 10.3.36-MariaDB-0+deb10u2
-- Version de PHP : 7.3.33-7+0~20220929.100+debian10~1.gbpdb2e49

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hackathon_2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` varchar(5) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `nom`) VALUES
('1ER01', '1ER 1'),
('1ER02', '1ER 2'),
('2ND01', '2ND 1'),
('2ND02', '2ND 2'),
('TER01', 'TERMINALE 1');

-- --------------------------------------------------------

--
-- Structure de la table `compopartie`
--

CREATE TABLE `compopartie` (
  `partie_id` varchar(5) NOT NULL,
  `partie_dateDebut` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_Fin` varchar(50) DEFAULT NULL,
  `equipe_id` varchar(5) NOT NULL,
  `enigme_id` varchar(5) DEFAULT '1',
  `scoreActuel` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compopartie`
--

INSERT INTO `compopartie` (`partie_id`, `partie_dateDebut`, `date_Fin`, `equipe_id`, `enigme_id`, `scoreActuel`) VALUES
('1', '2019-01-01 10:00:00', NULL, '2', '2', '1'),
('1', '2019-01-01 10:00:00', NULL, '3', '1', '0'),
('1', '2019-01-01 10:00:00', NULL, '4', '1', '0'),
('1', '2019-01-01 10:00:00', NULL, '5', '1', '0'),
('1', '2022-10-29 12:37:53', NULL, '1', '20', '23');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` varchar(5) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `sexe` varchar(50) DEFAULT NULL,
  `classe_id` varchar(5) DEFAULT NULL,
  `equipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id`, `nom`, `prenom`, `sexe`, `classe_id`, `equipe_id`) VALUES
('1', 'DUPONT', 'Jean', 'M', '2ND01', 1),
('10', 'KADDOURI', 'Bryce', 'M', '2ND02', 1),
('11', 'DUPONT', 'Jean', 'M', '1ER01', 1),
('12', 'DURAND', 'Marie', 'F', '1ER01', 1),
('13', 'HOAREAU', 'Theo', 'M', '1ER01', 1),
('14', 'DUPONT', 'Jiselle', 'F', '1ER01', 1),
('15', 'KADDOURI', 'Bryce', 'M', '1ER01', 1),
('16', 'DUPONT', 'Jean', 'M', '1ER02', 1),
('17', 'DURAND', 'Marie', 'F', '1ER02', 1),
('18', 'HOAREAU', 'Theo', 'M', '1ER02', 1),
('19', 'DUPONT', 'Jiselle', 'F', '1ER02', 1),
('2', 'DURAND', 'Marie', 'F', '2ND01', 1),
('20', 'KADDOURI', 'Bryce', 'M', '1ER02', 1),
('21', 'DUPONT', 'Jean', 'M', 'TER01', 1),
('22', 'DURAND', 'Marie', 'F', 'TER01', 1),
('23', 'HOAREAU', 'Theo', 'M', 'TER01', 1),
('24', 'DUPONT', 'Jiselle', 'F', 'TER01', 1),
('25', 'KADDOURI', 'Bryce', 'M', 'TER01', 1),
('3', 'HOAREAU', 'Theo', 'M', '2ND01', 1),
('4', 'DUPONT', 'Jiselle', 'F', '2ND01', 1),
('5', 'KADDOURI', 'Bryce', 'M', '2ND01', 1),
('6', 'DUPONT', 'Jean', 'M', '2ND02', 1),
('7', 'DURAND', 'Marie', 'F', '2ND02', 1),
('8', 'HOAREAU', 'Theo', 'M', '2ND02', 1),
('9', 'DUPONT', 'Jiselle', 'F', '2ND02', 1);

-- --------------------------------------------------------

--
-- Structure de la table `enigme`
--

CREATE TABLE `enigme` (
  `id` varchar(5) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  `point` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enigme`
--

INSERT INTO `enigme` (`id`, `nom`, `flag`, `point`) VALUES
('1', 'enigme 1', 'reponse enigme 1', '1'),
('10', 'enigme 10', 'reponse enigme 10', '2'),
('11', 'enigme 11', 'reponse enigme 11', '1'),
('12', 'enigme 12', 'reponse enigme 12', '1'),
('13', 'enigme 13', 'reponse enigme 13', '1'),
('14', 'enigme 14', 'reponse enigme 14', '1'),
('15', 'enigme 15', 'reponse enigme 15', '4'),
('16', 'enigme 16', 'reponse enigme 16', '1'),
('17', 'enigme 17', 'reponse enigme 17', '1'),
('18', 'enigme 18', 'reponse enigme 18', '1'),
('19', 'enigme 19', 'reponse enigme 19', '1'),
('2', 'enigme 2', 'reponse enigme 2', '1'),
('20', 'enigme 20', 'reponse enigme 20', '4'),
('21', 'enigme 21', 'reponse enigme 21', '1'),
('22', 'enigme 22', 'reponse enigme 22', '1'),
('23', 'enigme 23', 'reponse enigme 23', '1'),
('24', 'enigme 24', 'reponse enigme 24', '1'),
('25', 'enigme 25', 'reponse enigme 25', '8'),
('26', 'enigme 26', 'reponse enigme 26', '1'),
('27', 'enigme 27', 'reponse enigme 27', '1'),
('28', 'enigme 28', 'reponse enigme 28', '1'),
('29', 'enigme 29', 'reponse enigme 29', '1'),
('3', 'enigme 3', 'reponse enigme 3', '1'),
('30', 'enigme 30', 'reponse enigme 30', '8'),
('4', 'enigme 4', 'reponse enigme 4', '1'),
('5', 'enigme 5', 'reponse enigme 5', '2'),
('6', 'enigme 6', 'reponse enigme 6', '1'),
('7', 'enigme 7', 'reponse enigme 7', '1'),
('8', 'enigme 8', 'reponse enigme 8', '1'),
('9', 'enigme 9', 'reponse enigme 9', '1');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` varchar(5) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`id`, `nom`, `login`, `pwd`) VALUES
('1', 'team 974', 'team974', '12-Soleil&'),
('2', 'tryhardTeam', 'tryhard', '123456'),
('3', 'arxTeam', 'arx', '123456'),
('4', 'teamForest', 'forest', '123456');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `infocompopartie`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `infocompopartie` (
`partie_id` varchar(5)
,`partie_dateDebut` timestamp
,`enigme_id` varchar(5)
,`scoreActuel` varchar(50)
,`nom` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la table `partie`
--

CREATE TABLE `partie` (
  `id` int(11) NOT NULL,
  `date_Debut` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_Fin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `partie`
--

INSERT INTO `partie` (`id`, `date_Debut`, `date_Fin`) VALUES
(1, '2019-01-01 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la vue `infocompopartie`
--
DROP TABLE IF EXISTS `infocompopartie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `infocompopartie`  AS SELECT `compopartie`.`partie_id` AS `partie_id`, `compopartie`.`partie_dateDebut` AS `partie_dateDebut`, `compopartie`.`enigme_id` AS `enigme_id`, `compopartie`.`scoreActuel` AS `scoreActuel`, `equipe`.`nom` AS `nom` FROM (`compopartie` join `equipe` on(`compopartie`.`equipe_id` <> 0))  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compopartie`
--
ALTER TABLE `compopartie`
  ADD PRIMARY KEY (`partie_id`,`partie_dateDebut`,`equipe_id`),
  ADD KEY `fk_compopartie_equipe` (`equipe_id`),
  ADD KEY `fk_compopartie_enigme` (`enigme_id`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eleve_classe` (`classe_id`);

--
-- Index pour la table `enigme`
--
ALTER TABLE `enigme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partie`
--
ALTER TABLE `partie`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

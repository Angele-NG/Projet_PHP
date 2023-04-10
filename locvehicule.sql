-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 mars 2023 à 14:23
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `locvehicule`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCat` int(5) NOT NULL AUTO_INCREMENT,
  `codeCat` varchar(10) NOT NULL,
  `libelleCat` varchar(50) NOT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `idChauffeur` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  PRIMARY KEY (`idChauffeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `louervehicule`
--

DROP TABLE IF EXISTS `louervehicule`;
CREATE TABLE IF NOT EXISTS `louervehicule` (
  `idVehicule` int(11) DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  `idChauffeur` int(11) DEFAULT NULL,
  `dateReservation` date DEFAULT NULL,
  `dateDebLoc` date DEFAULT NULL,
  `dateFinLoc` date DEFAULT NULL,
  `cout` int(11) DEFAULT NULL,
  KEY `idVehicule` (`idVehicule`),
  KEY `idClient` (`idClient`),
  KEY `idChauffeur` (`idChauffeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `idMarque` int(11) NOT NULL AUTO_INCREMENT,
  `CodeMarque` int(11) NOT NULL,
  `libMarque` varchar(50) DEFAULT NULL,
  `idCat` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMarque`),
  KEY `idCat` (`idCat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `idVehicule` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(10) DEFAULT NULL,
  `numChassie` varchar(10) DEFAULT NULL,
  `couleur` varchar(15) DEFAULT NULL,
  `nbrePlace` int(4) NOT NULL,
  `idmarque` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVehicule`),
  KEY `idmarque` (`idmarque`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

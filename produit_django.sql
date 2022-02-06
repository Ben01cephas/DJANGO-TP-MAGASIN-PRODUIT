-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 06 fév. 2022 à 23:32
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `produit_django`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add person', 7, 'add_person'),
(26, 'Can change person', 7, 'change_person'),
(27, 'Can delete person', 7, 'delete_person'),
(28, 'Can view person', 7, 'view_person'),
(29, 'Can add magasin profile', 8, 'add_magasinprofile'),
(30, 'Can change magasin profile', 8, 'change_magasinprofile'),
(31, 'Can delete magasin profile', 8, 'delete_magasinprofile'),
(32, 'Can view magasin profile', 8, 'view_magasinprofile'),
(33, 'Can add produit', 9, 'add_produit'),
(34, 'Can change produit', 9, 'change_produit'),
(35, 'Can delete produit', 9, 'delete_produit'),
(36, 'Can view produit', 9, 'view_produit'),
(37, 'Can add magasin', 10, 'add_magasin'),
(38, 'Can change magasin', 10, 'change_magasin'),
(39, 'Can delete magasin', 10, 'delete_magasin'),
(40, 'Can view magasin', 10, 'view_magasin');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'tpproduit', 'magasin'),
(8, 'tpproduit', 'magasinprofile'),
(7, 'tpproduit', 'person'),
(9, 'tpproduit', 'produit');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-06 14:59:22.807592'),
(2, 'auth', '0001_initial', '2022-02-06 14:59:23.293555'),
(3, 'admin', '0001_initial', '2022-02-06 14:59:23.401877'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-06 14:59:23.419828'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-06 14:59:23.432793'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-06 14:59:23.488764'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-06 14:59:23.538487'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-06 14:59:23.557462'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-06 14:59:23.570433'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-06 14:59:23.608529'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-06 14:59:23.612890'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-06 14:59:23.627848'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-06 14:59:23.647019'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-06 14:59:23.672992'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-06 14:59:23.696928'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-06 14:59:23.709769'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-06 14:59:23.730714'),
(18, 'sessions', '0001_initial', '2022-02-06 14:59:23.765743'),
(19, 'tpproduit', '0001_initial', '2022-02-06 15:06:17.896743'),
(20, 'tpproduit', '0002_magasin_magasinprofile_produit_delete_person', '2022-02-06 15:33:24.953999');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tpproduit_magasin`
--

CREATE TABLE `tpproduit_magasin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tpproduit_magasin`
--

INSERT INTO `tpproduit_magasin` (`id`, `name`, `country`, `created_at`, `updated_at`) VALUES
(7, 'PETIT GAMER', 'BF', '2022-02-06', '2022-02-06'),
(8, 'Auchan Benin', 'BJ', '2022-02-06', '2022-02-06'),
(9, 'Le Bon Coin', 'SN', '2022-02-06', '2022-02-06'),
(10, 'Marchand', 'BJ', '2022-02-06', '2022-02-06'),
(11, 'Alibaba', 'BJ', '2022-02-06', '2022-02-06'),
(12, 'Ben Mag', 'BJ', '2022-02-06', '2022-02-06');

-- --------------------------------------------------------

--
-- Structure de la table `tpproduit_magasinprofile`
--

CREATE TABLE `tpproduit_magasinprofile` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `magasin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tpproduit_magasinprofile`
--

INSERT INTO `tpproduit_magasinprofile` (`id`, `email`, `phone`, `created_at`, `updated_at`, `magasin_id`) VALUES
(3, 'alibab@email.com', '11223454', '2022-02-06', '2022-02-06', 11),
(4, 'loui@mail.com', '45298409845', '2022-02-06', '2022-02-06', 7),
(5, '1bon@mail.con', '12121313', '2022-02-06', '2022-02-06', 9),
(6, 'mahoungoucephas@gmail.com', '774378656', '2022-02-06', '2022-02-06', 12);

-- --------------------------------------------------------

--
-- Structure de la table `tpproduit_produit`
--

CREATE TABLE `tpproduit_produit` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `magasin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tpproduit_produit`
--

INSERT INTO `tpproduit_produit` (`id`, `name`, `country`, `created_at`, `updated_at`, `price`, `magasin_id`) VALUES
(5, 'Pain doux', 'BJ', '2022-02-06', '2022-02-06', '150.00', 11);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `tpproduit_magasin`
--
ALTER TABLE `tpproduit_magasin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tpproduit_magasinprofile`
--
ALTER TABLE `tpproduit_magasinprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `magasin_id` (`magasin_id`);

--
-- Index pour la table `tpproduit_produit`
--
ALTER TABLE `tpproduit_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tpproduit_produit_magasin_id_ab11126c_fk_tpproduit_magasin_id` (`magasin_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tpproduit_magasin`
--
ALTER TABLE `tpproduit_magasin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `tpproduit_magasinprofile`
--
ALTER TABLE `tpproduit_magasinprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tpproduit_produit`
--
ALTER TABLE `tpproduit_produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `tpproduit_magasinprofile`
--
ALTER TABLE `tpproduit_magasinprofile`
  ADD CONSTRAINT `tpproduit_magasinpro_magasin_id_887f6648_fk_tpproduit` FOREIGN KEY (`magasin_id`) REFERENCES `tpproduit_magasin` (`id`);

--
-- Contraintes pour la table `tpproduit_produit`
--
ALTER TABLE `tpproduit_produit`
  ADD CONSTRAINT `tpproduit_produit_magasin_id_ab11126c_fk_tpproduit_magasin_id` FOREIGN KEY (`magasin_id`) REFERENCES `tpproduit_magasin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

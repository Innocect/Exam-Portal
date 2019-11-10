-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 08:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cet`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add test', 7, 'add_test'),
(26, 'Can change test', 7, 'change_test'),
(27, 'Can delete test', 7, 'delete_test'),
(28, 'Can view test', 7, 'view_test'),
(29, 'Can add questions', 8, 'add_questions'),
(30, 'Can change questions', 8, 'change_questions'),
(31, 'Can delete questions', 8, 'delete_questions'),
(32, 'Can view questions', 8, 'view_questions'),
(33, 'Can add exam_questions', 9, 'add_exam_questions'),
(34, 'Can change exam_questions', 9, 'change_exam_questions'),
(35, 'Can delete exam_questions', 9, 'delete_exam_questions'),
(36, 'Can view exam_questions', 9, 'view_exam_questions');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$FBwgh3W7lQUO$OUYApYM9aiDdkZ7Jvq6Y7J80CEYfX4iJ6plSFHB9uZI=', '2019-11-09 05:56:11.624870', 1, 'abhishekvarde', '', '', 'abhishek.varde@gmail.com', 1, 1, '2019-11-09 05:55:54.386427');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'db_test', 'test'),
(6, 'sessions', 'session'),
(9, 'stes_test', 'exam_questions'),
(8, 'stes_test', 'questions');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-11-08 21:11:10.412934'),
(2, 'auth', '0001_initial', '2019-11-08 21:11:10.921290'),
(3, 'admin', '0001_initial', '2019-11-08 21:11:12.364453'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-11-08 21:11:12.792823'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-08 21:11:12.825727'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-11-08 21:11:13.100882'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-11-08 21:11:13.132220'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-11-08 21:11:13.175106'),
(9, 'auth', '0004_alter_user_username_opts', '2019-11-08 21:11:13.198045'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-11-08 21:11:13.428545'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-11-08 21:11:13.433455'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-11-08 21:11:13.450506'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-11-08 21:11:13.493294'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-11-08 21:11:13.532190'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-11-08 21:11:13.558121'),
(16, 'auth', '0011_update_proxy_permissions', '2019-11-08 21:11:13.570090'),
(17, 'sessions', '0001_initial', '2019-11-08 21:11:13.619998'),
(18, 'db_test', '0001_initial', '2019-11-09 06:03:40.752503'),
(19, 'stes_test', '0001_initial', '2019-11-09 07:04:19.429680'),
(20, 'stes_test', '0002_auto_20191109_1900', '2019-11-09 13:30:34.310625'),
(21, 'stes_test', '0002_exam_questions', '2019-11-09 13:42:27.721943');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f8goqxg8a8l2uiclb3coyyfb3pwpjnck', 'MTAxMDdhYWZiYjNhNzRkMWZjYTkxMzMxZThlMzUyZjNiYjkxYTMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MzE4MzZmMmQ5M2ExNTgwYTc2ZDE5NmU5OGViYWZjZjU1ZDA3YTAyIn0=', '2019-11-23 05:56:11.628859');

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_exam_questions`
--

CREATE TABLE `stes_test_exam_questions` (
  `question_id` int(11) NOT NULL,
  `question` varchar(400) CHARACTER SET utf16 NOT NULL,
  `image` varchar(400) CHARACTER SET utf16 NOT NULL,
  `option1` varchar(400) CHARACTER SET utf16 NOT NULL,
  `option2` varchar(400) CHARACTER SET utf16 NOT NULL,
  `option3` varchar(400) CHARACTER SET utf16 NOT NULL,
  `option4` varchar(400) CHARACTER SET utf16 NOT NULL,
  `answer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_exam_questions`
--

INSERT INTO `stes_test_exam_questions` (`question_id`, `question`, `image`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(2001, 'A redox reaction is one where_______.', '--', 'only oxidation process takes place', 'only reduction process takes place', 'both oxidation and  reduction reaction takes place simultaneously', 'either oxidation or  reduction process takes place', 'C'),
(2002, 'The conduction of electricity through metallic conductor is due to the movement of _______.', '--', 'metal atoms', 'electrons', 'ions', 'metallic kernels', 'B'),
(2003, 'an electrolyte is one which_____.', '--', 'conducts electric current in any state', 'is capable of ionization and allow passage of electric current in its aqueous solutions', 'dissociates into ions by dissolving in any solvent', 'facilitates the movement of electrons even in the solid state', 'B'),
(2004, 'The flow of current in an electrolyte is due to the movement of______.', '--', 'electrons', 'protons', 'ions', 'molecules', 'C'),
(2005, 'Strong electrolytes are those which______.', '--', 'dissociate into ions only at low dilution', 'do not conduct electricity', 'dissociate into ions only at high dilution', 'completely dissociate into ions at all dilutions', 'D'),
(2006, 'Among the following, which will be the best conductor of electricity?', '--', '1 M acetic acid', '1 M Sulphuric acid', '1 M Boric acid', '1 M Formic acid', 'B'),
(2007, 'Which of the following is poor conductor of electricity?', '--', 'CH3COONa', 'C2H5OH', 'NaCl', 'KOH', 'B'),
(2008, 'Electrolytes when dissolved on water dissociate into ions because____.', '--', 'the water dissolves them', 'they are unstable', 'the forces of repulsion increases', 'the forces of electrostatic attraction are broken down by the water', 'D'),
(2009, 'The increase in conductance of a weak electrolyte solution with dilution is due to the increase in_______.', '--', 'ionic attraction', 'molecular attraction', 'degree of association of the electrolyte', 'degree of ionization of electrolyte', 'D'),
(2010, 'When the solution of electrolyte is diluted, the molar conductance_______.', '--', 'decreases', 'increases', 'remains constant', 'first increases then decreases', 'B'),
(2011, 'At infinite dilution, the contribution of cation and anion to the molar conductance is_____.', '--', 'dependent on each other', 'independent of each other', 'dependent on the nature of the solvent', 'dependent on the cell', 'B'),
(2012, 'The electrodes of a conductivity cell are 3 cm apart and have a cross-sectional area of 4 cm^2.  The cell constant of the cell (in cm^-1) is____. ', '--', '4x3', '4/3', '3/4', '9/4', 'C'),
(2013, 'Which of the following is INCORRECT?', '--', 'The device used to study chemical reactions electrically is called as an electrochemical cell.', 'for electrochemical reactions, the net cell reactions is obtaiined by sum of the oxidation half reaction taking place at the respective electrodes.', 'Electrolytic cells and voltaic cells are the two types of electrochemical cells.', 'In an electrochemical cell, anode is always positive.', 'D'),
(2014, 'Which of the following is NOT a voltaic cell.', '--', 'Cell used foe metal plating', 'Lead storage cell', 'Fuel cell', 'NICAD', 'A'),
(2015, 'Electrolytic cell is used to convert_____.', '--', 'Chemical energy into electrical energy', 'Electrical energy into chemical energy', 'Chemical energy into mechanical energy', 'Electrical energy into mechanical energy', 'B'),
(2016, 'The reaction taking place at the anode during electrolysis is_____.', '--', 'Oxidation', 'Reduction', 'Dissociation', 'Dilution', 'A'),
(2017, 'In the electrolysis of aqueous solution of NACI_____.', '--', 'Cl^- ion is oxidized at cathode', 'Cl^- ion is reduced at anode', 'Cl^- ion is oxidized at anode', 'Cl^- ion is neither reduced nor oxidized', 'C'),
(2018, 'When 1 ampere of current flows for 1 second through a conductor, this quantity is called_____.', '--', 'Coulomb', 'Faraday', 'EMF', 'Ohm', 'A'),
(2019, 'The amount of electric charge on one mole of electrons is_____.', '--', 'Ampere', 'Volt', 'Ohm', 'Faraday', 'D'),
(2020, 'Coulomb is equal to______.', '--', 'Ampere x second', 'Ampere x minute', 'Watt x second', 'Volt x second', 'A'),
(2021, '\\( \\displaystyle \\int{ {4x\\cos \\left( {2 - 3x} \\right)\\,dx} }\\)', '', '\\( \\displaystyle \\int_{6}^{0}{ {\\left( {2 + 5x} \\right){ {\\bf{e}}^{\\frac{1}{3}x} }\\,dx} }\\)', '\\( \\displaystyle \\int{ {4x\\cos \\left( {2 - 3x} \\right)\\,dx} }\\)', '\\( \\displaystyle \\int{ {4x\\cos \\left( {2 - 3x} \\right)\\,dx} }\\)', '\\( \\displaystyle \\int{ {4x\\cos \\left( {2 - 3x} \\right)\\,dx} }\\)', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `stes_test_exam_questions`
--
ALTER TABLE `stes_test_exam_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stes_test_exam_questions`
--
ALTER TABLE `stes_test_exam_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2022;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

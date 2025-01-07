-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2025 at 06:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_compass`
--

-- --------------------------------------------------------

--
-- Table structure for table `career-compass-admin`
--

CREATE TABLE `career-compass-admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career-compass-admin`
--

INSERT INTO `career-compass-admin` (`id`, `email`, `password`) VALUES
(1, 'codemavericknk@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `career_combass_colleges`
--

CREATE TABLE `career_combass_colleges` (
  `id` int(11) NOT NULL,
  `university` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `college_type` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `star` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career_combass_colleges`
--

INSERT INTO `career_combass_colleges` (`id`, `university`, `college`, `college_type`, `state`, `district`, `star`) VALUES
(2, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY CONSTITUENT COLLEGE (Id: C-47507)', 'Constituent / University College', 'Tamil Nadu', 'Ramanathapuram', 3),
(3, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY EVENING COLLEGE, PARAMAKKUDI (Id: C-47508)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(4, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY EVENING COLLEGE, RAMANATHAPURAM (Id: C-47509)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(5, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY EVENING COLLEGE, RAMESWARAM (Id: C-47510)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(6, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY EVENING COLLEGE, THIRUPPUVANAM (Id: C-47512)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(7, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'ALAGAPPA UNIVERSITY EVENING COLLEGE, THONDI (Id: C-47511)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(8, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Ananda College, Devakottai (Id: C-28510)', 'Affiliated ', 'Tamil Nadu', 'Sivaganga', 5),
(9, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Arumugam Pillai Seethaiammal College, Tiruppathur (Id: C-28532)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(10, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Caussanel College of Arts and Science, Muthuppettai (Id: C-28508)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(11, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Dr. Umayal Ramanathan College for Women, Karaikudi (Id: C-28518)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(12, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Dr.Zakir Hussain College, Ilayangudi (Id: C-28533)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(13, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Government Arts College for Women, Ramanathapuram (Id: C-28521)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(14, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Government Arts College for Women, Sivaganga (Id: C-28524)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(15, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Government Arts College, Paramakudi (Id: C-28523)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(16, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Idhaya College for Women, Sarugani (Id: C-28509)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(17, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Madurai Sivakasi Nadar Pioneer Meenaksmi Women college, Poovanthi (Id: C-28534)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(18, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Matha College of Arts and Science, Manamadurai (Id: C-28519)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(19, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'PMT Memorial college, Kamuthi (Id: C-28530)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(20, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Raja Doraisingam Government Arts College, Sivaganga (Id: C-28512)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(21, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Ramasamy Tamil College, Karaikudi (Id: C-28525)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(22, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Seethalakshmi Achi College for Women, Pallathur (Id: C-28516)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(23, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Sethupathi Govt. Arts College, Ramanathapuram (Id: C-28520)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(24, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Sonai Meenal Arts and Science College, Mudukulathur (Id: C-28528)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(25, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Sree Sevugan Annamalai College, Devakottai (Id: C-28535)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(26, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Sri Sarada Niketan college for Women, Amaravathipudur (Id: C-28513)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(27, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Syed Ammal College of Arts and Science, Ramanathapuram (Id: C-28527)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(28, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Syed Hameedha Arabic College, Kilakarai (Id: C-28511)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(29, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'Syed Hameetha Arts and Science College, Kilakarai (Id: C-28531)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(30, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'The Thassim Beevi Abdul Kadar College for Women, Kilakarai (Id: C-28515)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(31, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'THIAGI THARMAKKAN AMIRTHAM COLLEGE OF ARTS AND SCIENCE (Id: C-47506)', 'Affiliated College', 'Tamil Nadu', 'Ramanathapuram', 5),
(32, 'Alagappa University, Alagappa Nagar, Karaikudi (Id: U-0435)', 'VSS Government Arts College, Poolankurichi (Id: C-28522)', 'Affiliated College', 'Tamil Nadu', 'Sivaganga', 5),
(33, 'Aliah University, Kolkata (Id: U-0567)', 'Batna J.M.O. Senior Madrasah (Id: C-11253)', 'Recognized Center', 'West Bengal', 'Maldah', 5),
(34, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Adharsh Vidyalaya College of Arts and Science for Women (Id: C-41066)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(35, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Bharathiar University Arts and Science College (Id: C-41041)', 'Constituent / University College', 'Tamil Nadu', 'Erode', 5),
(36, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Adharsh Vidyalaya College of Arts and Science for Women (Id: C-41066)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(37, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Bharathiar University Arts and Science College (Id: C-41041)', 'Constituent / University College', 'Tamil Nadu', 'Erode', 5),
(38, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Bharathidasan College of Arts and Science (Id: C-41071)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(39, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Bharathidasan School of Business (Id: C-41109)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(40, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Bharathidasan School of Computer Application (Id: C-41055)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(41, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Chikkaiah Naicker College (Id: C-41113)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(42, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Dr.R.A.N.M. Arts and Science College (Id: C-41139)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(43, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Erode Arts and Science College (Id: C-41128)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(44, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Erode Christian College of Arts and Science for Women (Id: C-41067)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(45, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Gobi Arts & Science College (Id: C-41138)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(46, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Kaamadhenu Arts and Science College (Id: C-41098)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(47, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Karuppannan Mariappan College (Id: C-41084)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(48, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Kongu Arts and Science College (Id: C-41104)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(49, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Maharaja Co-Education Arts and Science College (Id: C-41122)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(50, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Nandha Arts and Science College (Id: C-41120)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(51, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Navarasam Arts and Science College For Women (Id: C-41089)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(52, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Pioneer College of Arts and Science (Id: C-41112)', 'Affiliated College', 'Tamil Nadu', 'Coimbatore', 5),
(53, 'Bharathiar University, Coimbatore (Id: U-0447)', 'P K R Arts College for Women (Id: C-41039)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(54, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Saratha College of Arts and Science (Id: C-41091)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(55, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Sree Amman Arts and Science College (Id: C-41086)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(56, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Sri Vasavi College (Id: C-41092)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(57, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Vellakoil Arts and Science College (Id: C-41093)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5),
(58, 'Bharathiar University, Coimbatore (Id: U-0447)', 'Vellalar College for Women (Id: C-41068)', 'Affiliated College', 'Tamil Nadu', 'Erode', 5);

-- --------------------------------------------------------

--
-- Table structure for table `career_combass_courses`
--

CREATE TABLE `career_combass_courses` (
  `id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `course` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career_combass_courses`
--

INSERT INTO `career_combass_courses` (`id`, `course_id`, `course`, `description`) VALUES
(1, 'msc', 'M.Sc Computer Science', 'Advanced studies in computing, algorithms, and emerging technologies for software and IT professionals. \r\n'),
(2, 'msc', 'M.Sc Information Technology', 'Focus on IT management, cloud computing, and cutting-edge technologies for future IT leaders.\r\n\r\n'),
(3, 'msc', 'M.Sc Data Science', 'Specialize in data analysis, predictive modeling, and big data technologies for informed decision-making.'),
(4, 'msc', 'M.Sc Artificial Intelligence', 'Deep dive into AI concepts, neural networks, and natural language processing for innovative solutions.'),
(5, 'msc', 'M.Sc Cybersecurity', 'Enhance your knowledge of network security, ethical hacking, and cybersecurity protocols for secure systems.'),
(6, 'msc', 'M.Sc Cloud Computing', 'Master scalable computing solutions, virtualization, and cloud-based infrastructures for enterprise needs.'),
(7, 'msc', 'M.Sc Robotics', 'Advanced studies in automation, robotics engineering, and AI integration for industrial and research applications.'),
(8, 'msc', 'M.Sc Blockchain Technology', 'Specialize in distributed ledger systems, cryptocurrency, and decentralized application development.'),
(9, 'msc', 'M.Sc Multimedia and Animation', 'Enhance your skills in creative multimedia production, 3D modeling, and advanced animation techniques.'),
(10, 'msc', 'M.Sc Bioinformatics', 'Combine computational tools with biological sciences to analyze and interpret complex biological data.'),
(11, 'msc', 'M.Sc Environmental Science', 'Advanced studies in environmental research, sustainability, and ecological preservation.'),
(12, 'msc', 'M.Sc Mathematics', 'Explore advanced mathematical theories, analytical techniques, and statistical research methodologies.'),
(13, 'msc', 'M.Sc Physics', 'Deep dive into theoretical physics, quantum mechanics, and applied physics for scientific innovation.'),
(14, 'msc', 'M.Sc Chemistry', 'Specialize in organic, inorganic, and physical chemistry for careers in research and industry.'),
(15, 'msc', 'M.Sc Biotechnology', 'Advanced studies in genetic engineering, molecular biology, and biotech innovations for healthcare and industry.'),
(16, 'msc', 'M.Sc Astronomy', 'Advanced exploration of space sciences, astrophysics, and cosmology for research and discovery.'),
(17, 'msc', 'M.Sc Psychology', 'Specialize in clinical, industrial, or counseling psychology for advanced insights into human behavior.'),
(18, 'bsc', 'B.Sc Computer Science', 'Explore the foundations of computing, algorithms, and software development. This course prepares you for careers in software engineering and IT.'),
(19, 'bsc', 'B.Sc Computer Technology', 'Dive into the technical aspects of computers, including hardware, networking, and system architecture. Ideal for tech enthusiasts.'),
(20, 'bsc', 'B.Sc Information Technology', 'Learn about data management, cybersecurity, and IT solutions for modern businesses. Tailored for future IT managers.'),
(21, 'bsc', 'B.Sc Software Engineering', 'Master the art of software design, development, and project management. Perfect for aspiring software developers.'),
(22, 'bsc', 'B.Sc Artificial Intelligence', 'Understand the principles of AI, machine learning, and neural networks. Designed for innovators in AI and robotics.'),
(23, 'bsc', 'B.Sc Data Science', 'Analyze and interpret complex data sets using advanced statistical tools and programming languages.'),
(24, 'bsc', 'B.Sc Cybersecurity', 'Study techniques to protect systems from cyber threats and learn to manage secure networks and systems.'),
(25, 'bsc', 'B.Sc Cloud Computing', 'Learn about cloud platforms, virtual environments, and scalable software solutions for enterprises.'),
(26, 'bsc', 'B.Sc Game Development', 'Combine creativity and technology to design, develop, and produce interactive gaming experiences.'),
(27, 'bsc', 'B.Sc Robotics', 'Delve into robotics design, automation, and control systems. Ideal for future robotics engineers.'),
(28, 'bsc', 'B.Sc Internet of Things (IoT)', 'Understand the interconnectivity of devices, sensors, and applications in the IoT ecosystem.'),
(29, 'bsc', 'B.Sc Blockchain Technology', 'Explore the decentralized world of blockchain, cryptocurrency, and distributed ledger technologies.'),
(30, 'bsc', 'B.Sc Multimedia and Animation', 'Develop skills in digital media creation, animation, video production, and multimedia design.'),
(31, 'bsc', 'B.Sc Biotechnology', 'Explore the applications of biology and technology, including genetic engineering, pharmaceutical production, and environmental biotechnology.'),
(32, 'bsc', 'B.Sc Environmental Science', 'Study environmental issues, sustainability, and the scientific methods for solving global environmental challenges.'),
(33, 'bsc', 'B.Sc Mathematics', 'Explore advanced mathematical theories, analytical techniques, and their applications in real-world scenarios.'),
(34, 'bsc', 'B.Sc Physics', 'Understand the fundamental laws of nature, from quantum mechanics to astrophysics, and their real-world applications.'),
(35, 'bsc', 'B.Sc Chemistry', 'Specialize in the study of chemical processes, reactions, and the development of new materials.'),
(36, 'bcom', 'B.Com General', 'Study the basics of commerce, accounting, economics, and business law to build a foundation for a career in business and finance.'),
(37, 'bcom', 'B.Com Accounting', 'Focus on accounting principles, financial reporting, auditing, and taxation to prepare for a career in finance or accounting.'),
(38, 'bcom', 'B.Com Finance', 'Gain expertise in financial management, investment analysis, and corporate finance to pursue careers in banking and investment.'),
(39, 'bcom', 'B.Com Marketing', 'Learn marketing strategies, consumer behavior, advertising, and sales management to enter the dynamic world of business and marketing.'),
(40, 'bcom', 'B.Com International Business', 'Understand global business dynamics, international trade, and cross-cultural management to build a career in international business.'),
(41, 'bcom', 'B.Com E-Commerce', 'Explore online business models, digital marketing, and electronic transactions to succeed in the fast-growing e-commerce industry.'),
(42, 'bcom', 'B.Com Business Analytics', 'Learn data analysis, statistical techniques, and decision-making processes to provide insights for business strategies and operations.'),
(43, 'bcom', 'B.Com Banking and Insurance', 'Study the banking and insurance sectors, including policies, operations, and financial regulations, for a career in financial services.'),
(44, 'bcom', 'B.Com Taxation', 'Gain an in-depth understanding of tax laws, tax planning, and the tax administration process for careers in taxation and finance.'),
(45, 'bcom', 'B.Com Human Resource Management', 'Learn about organizational behavior, employee management, labor laws, and HR practices for roles in human resource management.'),
(46, 'bcom', 'B.Com Entrepreneurship', 'Develop skills in business development, leadership, and innovation to start and manage your own business successfully.'),
(47, 'bcom', 'B.Com Computer Applications', 'Learn the use of computer systems, software applications, and data management tools in business and commerce environments.'),
(48, 'bcom', 'B.Com Cost Accounting', 'Study the principles of cost management, cost analysis, and budgeting to enhance financial efficiency in business organizations.'),
(49, 'bcom', 'B.Com Logistics and Supply Chain Management', 'Gain expertise in supply chain management, logistics operations, and inventory control to manage business logistics efficiently.'),
(50, 'bcom', 'B.Com Business Law', 'Study the legal framework governing business transactions, contracts, and corporate governance to ensure compliance and risk management.'),
(51, 'be', 'B.E Computer Science Engineering', 'Learn about computer systems, software development, algorithms, and network architecture for careers in IT and software engineering.'),
(52, 'be', 'B.E Electrical Engineering', 'Study electrical circuits, power systems, and electronics for careers in electrical infrastructure, renewable energy, and automation.'),
(53, 'be', 'B.E Civil Engineering', 'Learn the principles of construction, structural analysis, and material science for designing and building infrastructure projects.'),
(54, 'be', 'B.E Mechanical Engineering', 'Study mechanics, thermodynamics, and materials science to design and manufacture machines and mechanical systems.'),
(55, 'be', 'B.E Electronics and Communication Engineering', 'Focus on electronic circuits, communication systems, and signal processing for careers in telecommunication and electronic industries.'),
(56, 'be', 'B.E Information Technology', 'Explore the design, development, and management of software systems, networks, and databases to support IT infrastructure.'),
(57, 'be', 'B.E Biotechnology', 'Combine engineering and biology to develop technologies in healthcare, agriculture, and environmental sustainability.'),
(58, 'be', 'B.E Chemical Engineering', 'Study chemical processes, material properties, and production techniques to innovate in industries like pharmaceuticals, energy, and manufacturing.'),
(59, 'be', 'B.E Aerospace Engineering', 'Learn the principles of flight mechanics, propulsion, and aircraft design for careers in aviation, space exploration, and defense industries.'),
(60, 'be', 'B.E Environmental Engineering', 'Focus on designing solutions to environmental problems, including waste management, pollution control, and sustainable development.'),
(61, 'be', 'B.E Agricultural Engineering', 'Study the application of engineering principles to agriculture, including irrigation, machinery, and sustainable farming practices.'),
(62, 'be', 'B.E Robotics Engineering', 'Learn about the design, construction, and operation of robots and automated systems for use in manufacturing, healthcare, and research.'),
(63, 'be', 'B.E Petroleum Engineering', 'Focus on the exploration, extraction, and processing of petroleum and natural gas resources for energy production.'),
(64, 'be', 'B.E Industrial Engineering', 'Study the optimization of complex systems and processes to improve productivity, efficiency, and quality in industries.'),
(65, 'btech', 'B.Tech Computer Science and Engineering', 'Explore computer systems, software development, artificial intelligence, and data science for careers in IT and technology.'),
(66, 'btech', 'B.Tech Electronics and Communication Engineering', 'Learn about electronic devices, communication systems, and signal processing for careers in electronics, telecommunications, and digital systems.'),
(67, 'btech', 'B.Tech Mechanical Engineering', 'Study the principles of mechanics, thermodynamics, fluid dynamics, and materials science for careers in manufacturing and automation.'),
(68, 'btech', 'B.Tech Civil Engineering', 'Focus on designing, planning, and constructing infrastructure like bridges, roads, and buildings for careers in construction and urban development.'),
(69, 'btech', 'B.Tech Electrical Engineering', 'Study electrical circuits, power generation, renewable energy, and automation for careers in electrical power systems and electronic devices.'),
(70, 'btech', 'B.Tech Information Technology', 'Learn about software development, networking, databases, and IT infrastructure to build and manage technology solutions.'),
(71, 'btech', 'B.Tech Biotechnology', 'Combine engineering with biological sciences to innovate in healthcare, pharmaceuticals, agriculture, and environmental sustainability.'),
(72, 'btech', 'B.Tech Chemical Engineering', 'Explore chemical reactions, material properties, and industrial production techniques for careers in energy, chemicals, and manufacturing industries.'),
(73, 'btech', 'B.Tech Aerospace Engineering', 'Study aerodynamics, propulsion, and aerospace systems to pursue careers in aviation, space exploration, and defense industries.'),
(74, 'btech', 'B.Tech Artificial Intelligence and Machine Learning', 'Learn about AI algorithms, machine learning models, robotics, and data processing for innovative solutions in technology.'),
(75, 'btech', 'B.Tech Robotics Engineering', 'Focus on the design, development, and application of robots and automated systems in industries like manufacturing, healthcare, and research.'),
(76, 'btech', 'B.Tech Environmental Engineering', 'Study sustainable solutions to environmental issues, including waste management, water treatment, and pollution control.'),
(77, 'btech', 'B.Tech Mechatronics Engineering', 'Combine mechanical, electrical, and computer engineering to design and develop smart automated systems and robots.'),
(78, 'btech', 'B.Tech Data Science', 'Learn about big data analytics, data mining, machine learning, and statistical analysis to derive insights from complex data sets.'),
(79, 'btech', 'B.Tech Cybersecurity', 'Study network security, cryptography, and ethical hacking to protect digital infrastructure and data in the modern world.'),
(80, 'bba', 'B.B.A General Management', 'Gain foundational knowledge in management, business operations, and organizational behavior to become an effective leader.'),
(81, 'bba', 'B.B.A Marketing', 'Specialize in market research, consumer behavior, advertising, and brand management for careers in marketing and sales.'),
(82, 'bba', 'B.B.A Finance', 'Learn about financial management, investment strategies, and banking to pursue careers in financial analysis, accounting, and corporate finance.'),
(83, 'bba', 'B.B.A Human Resource Management', 'Focus on recruitment, employee relations, training, and labor laws to effectively manage human capital in organizations.'),
(84, 'bba', 'B.B.A International Business', 'Study global trade, international marketing, and cross-cultural management for careers in global business and foreign trade.'),
(85, 'bba', 'B.B.A Entrepreneurship', 'Learn the essentials of starting and managing a business, including innovation, financial management, and strategic planning.'),
(86, 'bba', 'B.B.A Supply Chain Management', 'Gain expertise in logistics, inventory management, procurement, and transportation for careers in operations and supply chain management.'),
(87, 'bba', 'B.B.A Retail Management', 'Focus on retail marketing, inventory management, and customer relationship strategies for careers in the retail industry.'),
(88, 'bba', 'B.B.A Hospitality Management', 'Specialize in hotel and event management, customer service, and tourism for careers in the hospitality and tourism industries.'),
(89, 'bba', 'B.B.A Banking and Insurance', 'Study financial services, risk management, and insurance policies for careers in banking, insurance, and investment sectors.'),
(90, 'bba', 'B.B.A Digital Marketing', 'Learn digital marketing strategies, SEO, social media, and content creation to pursue careers in online marketing and branding.'),
(91, 'bba', 'B.B.A Event Management', 'Focus on organizing and managing corporate events, conferences, and weddings for careers in event planning and coordination.'),
(92, 'bba', 'B.B.A Business Analytics', 'Learn how to interpret and analyze business data, build data models, and make strategic business decisions.'),
(93, 'bba', 'B.B.A Project Management', 'Focus on project planning, execution, risk management, and leadership skills to effectively manage projects in any industry.'),
(94, 'llb', 'LL.B General', 'Study the fundamental principles of law, legal systems, and constitutional law to prepare for a career in law practice and advocacy.'),
(95, 'llb', 'LL.B Constitutional Law', 'Specialize in the structure of government, civil rights, and the interpretation of constitutions to shape policy and legal reforms.'),
(96, 'llb', 'LL.B Criminal Law', 'Focus on criminal offenses, law enforcement, and legal defense to pursue careers as criminal lawyers, prosecutors, or legal advisors.'),
(97, 'llb', 'LL.B Corporate Law', 'Learn about corporate governance, mergers and acquisitions, intellectual property, and commercial contracts for a career in corporate law.'),
(98, 'llb', 'LL.B Family Law', 'Study issues such as marriage, divorce, inheritance, and adoption, focusing on the legal aspects of family-related matters.'),
(99, 'llb', 'LL.B Labour Law', 'Explore the relationship between employers, employees, and trade unions, with a focus on workers rights and industrial relations.'),
(100, 'llb', 'LL.B International Law', 'Study the laws governing international relations, treaties, and the legal frameworks of organizations like the United Nations and the World Trade Organization.'),
(101, 'llb', 'LL.B Environmental Law', 'Focus on laws related to environmental protection, natural resource management, and sustainable development practices.'),
(102, 'llb', 'LL.B Taxation Law', 'Learn about tax systems, corporate taxation, and personal tax policies for careers in tax consultancy or corporate legal advisory.'),
(103, 'llb', 'LL.B Intellectual Property Law', 'Specialize in copyrights, patents, trademarks, and trade secrets to protect the intellectual creations and innovations of individuals and companies.'),
(104, 'llb', 'LL.B Human Rights Law', 'Focus on the protection of human rights, civil liberties, and social justice issues on both national and international levels.'),
(105, 'llb', 'LL.B Maritime and Admiralty Law', 'Study laws related to shipping, navigation, and the transportation of goods by sea, including environmental regulations and marine insurance.'),
(106, 'llb', 'LL.B Banking and Finance Law', 'Learn about financial regulations, banking operations, securities laws, and the legal aspects of finance and investment.'),
(107, 'llb', 'LL.B Dispute Resolution', 'Focus on mediation, arbitration, and alternative dispute resolution methods for resolving conflicts outside the courtroom.'),
(108, 'mbbs', 'MBBS General Medicine', 'Study the fundamentals of human health, disease diagnosis, and treatment to prepare for a career in medical practice and healthcare.'),
(109, 'mbbs', 'MBBS Surgery', 'Specialize in surgical procedures, operations, and patient care in a clinical setting to become a skilled surgeon.'),
(110, 'mbbs', 'MBBS Pediatrics', 'Focus on the diagnosis and treatment of medical conditions affecting infants, children, and adolescents.'),
(111, 'mbbs', 'MBBS Obstetrics and Gynecology', 'Study female reproductive health, childbirth, and gynecological diseases, preparing for a career in women’s health.'),
(112, 'mbbs', 'MBBS Dermatology', 'Specialize in the treatment of skin conditions, diseases, and cosmetic procedures for skin health.'),
(113, 'mbbs', 'MBBS Psychiatry', 'Study mental health conditions, psychological disorders, and therapeutic approaches to treat patients with psychiatric issues.'),
(114, 'mbbs', 'MBBS Radiology', 'Focus on the use of medical imaging technologies like X-rays, MRI, and CT scans to diagnose and monitor diseases.'),
(115, 'mbbs', 'MBBS Anesthesia', 'Learn about anesthetic procedures, pain management, and patient safety during surgeries and other medical interventions.'),
(116, 'mbbs', 'MBBS Pathology', 'Focus on the study of diseases, their causes, and effects through laboratory tests and investigations to aid in diagnosis and treatment.'),
(117, 'mbbs', 'MBBS Emergency Medicine', 'Prepare for quick medical decision-making and treatment in emergency settings, focusing on trauma care and life-saving procedures.'),
(118, 'mbbs', 'MBBS Cardiology', 'Specialize in diagnosing and treating heart-related conditions, including heart diseases, disorders, and surgeries.'),
(119, 'mbbs', 'MBBS Neurology', 'Study the nervous system and neurological diseases, focusing on the diagnosis and treatment of conditions like strokes, epilepsy, and neurodegenerative diseases.'),
(120, 'mbbs', 'MBBS Orthopedics', 'Learn about the musculoskeletal system and the treatment of injuries, diseases, and disorders related to bones, joints, and muscles.'),
(121, 'mbbs', 'MBBS Urology', 'Specialize in diagnosing and treating disorders related to the urinary system and male reproductive organs.'),
(122, 'ma', 'MA English Literature', 'Explore classic and contemporary literature, focusing on critical analysis, literary history, and creative writing techniques.'),
(123, 'ma', 'MA Psychology', 'Study human behavior, cognition, and emotion through research, practical experience, and psychological theory.'),
(124, 'ma', 'MA History', 'Delve into historical events, periods, and research methodologies to analyze and interpret past civilizations.'),
(125, 'ma', 'MA Political Science', 'Study political theory, institutions, international relations, and policy-making processes.'),
(126, 'ma', 'MA Sociology', 'Learn about the structure of societies, social relationships, and the forces that shape social behavior.'),
(127, 'ma', 'MA Economics', 'Focus on microeconomics, macroeconomics, statistical analysis, and economic policies to understand global markets and economies.'),
(128, 'ma', 'MA Philosophy', 'Study ancient and modern philosophical theories, ethical dilemmas, logic, and the fundamental questions of existence.'),
(129, 'mcom', 'MCom Accounting', 'Specialize in financial accounting, auditing, taxation, and managerial accounting for careers in business and finance.'),
(130, 'mcom', 'MCom Finance', 'Learn about financial management, corporate finance, and investment analysis for roles in banking, investment, and finance sectors.'),
(131, 'mcom', 'MCom Business Administration', 'Focus on business management strategies, operations, and decision-making to pursue a leadership role in business organizations.'),
(132, 'mcom', 'MCom International Business', 'Study global trade, international marketing, and cross-border business strategies to work in multinational companies.'),
(133, 'mcom', 'MCom Marketing', 'Specialize in marketing strategies, consumer behavior, advertising, and brand management for careers in marketing management.'),
(134, 'mcom', 'MCom Economics', 'Learn advanced economic principles, quantitative techniques, and global economic trends to influence public policy and business strategies.'),
(135, 'me', 'ME Civil Engineering', 'Specialize in structural analysis, construction materials, and infrastructure design for a career in civil engineering projects.'),
(136, 'me', 'ME Mechanical Engineering', 'Study advanced mechanics, thermodynamics, materials science, and mechanical systems design for innovative engineering solutions.'),
(137, 'me', 'ME Electrical Engineering', 'Focus on electrical circuits, power systems, and control systems to design and manage electrical systems and technologies.'),
(138, 'me', 'ME Computer Engineering', 'Learn about computer architecture, software engineering, and networking to create advanced computing systems and technologies.'),
(139, 'me', 'ME Electronics and Communication Engineering', 'Specialize in electronic systems, communication technologies, and signal processing for designing advanced electronic and communication devices.'),
(140, 'me', 'ME Structural Engineering', 'Study advanced concepts in the design and analysis of structures, focusing on bridges, buildings, and other infrastructure projects.'),
(141, 'mtech', 'MTech Computer Science', 'Focus on software development, artificial intelligence, data structures, and algorithms for building innovative technology solutions.'),
(142, 'mtech', 'MTech Information Technology', 'Learn about networking, cloud computing, security, and IT infrastructure for a career in technology management and solutions.'),
(143, 'mtech', 'MTech Artificial Intelligence', 'Specialize in machine learning, neural networks, and robotics for developing intelligent systems and solutions in various industries.'),
(144, 'mtech', 'MTech Data Science', 'Focus on big data analytics, predictive modeling, and statistical techniques to analyze and interpret large datasets for decision-making.'),
(145, 'mtech', 'MTech Robotics', 'Learn about automation, robotics design, and AI integration to develop cutting-edge robotic systems for industrial and research applications.'),
(146, 'mtech', 'MTech VLSI Design', 'Specialize in very-large-scale integration, circuit design, and semiconductor technology for developing advanced electronic devices and systems.'),
(147, 'mba', 'MBA General Management', 'Focus on leadership, business strategy, and management practices for a career in top-level business administration.'),
(148, 'mba', 'MBA Finance', 'Specialize in financial analysis, corporate finance, and investment management for careers in banking, finance, and investment.'),
(149, 'mba', 'MBA Marketing', 'Study consumer behavior, advertising, branding, and digital marketing to shape the future of business marketing.'),
(150, 'mba', 'MBA Human Resource Management', 'Learn about talent management, organizational behavior, and HR strategies for leadership in human resources.'),
(151, 'mba', 'MBA International Business', 'Focus on global trade, cross-cultural communication, and international market strategies for a career in global business management.'),
(152, 'mba', 'MBA Operations Management', 'Specialize in supply chain management, production strategies, and logistics to improve business operations and processes.'),
(153, 'mba', 'MBA Entrepreneurship', 'Develop skills in business innovation, startup management, and venture capital to lead new and emerging businesses.'),
(154, 'llm', 'LLM International Law', 'Focus on international legal principles, treaties, and global human rights law for a career in diplomacy or international legal practice.'),
(155, 'llm', 'LLM Corporate Law', 'Specialize in business law, mergers and acquisitions, and corporate governance for a career in corporate legal practice.'),
(156, 'llm', 'LLM Criminal Law', 'Study criminal justice systems, laws related to criminal offenses, and legal strategies for defense and prosecution.'),
(157, 'llm', 'LLM Environmental Law', 'Focus on environmental policies, climate change law, and natural resource regulation for careers in environmental protection and advocacy.'),
(158, 'llm', 'LLM Taxation Law', 'Specialize in tax law, corporate taxation, and estate planning for a career in tax consulting or law practice.'),
(159, 'llm', 'LLM Human Rights Law', 'Learn about the protection of individual freedoms, social justice, and international human rights standards for careers in human rights organizations.'),
(160, 'md', 'MD General Medicine', 'Advanced studies in diagnosing, treating, and managing common and complex medical conditions to prepare for clinical practice.'),
(161, 'md', 'MD Pediatrics', 'Specialize in the medical care of children, focusing on pediatric diseases, vaccination, and child healthcare.'),
(162, 'md', 'MD Dermatology', 'Focus on the diagnosis and treatment of skin disorders, diseases, and cosmetic concerns.'),
(163, 'md', 'MD Obstetrics and Gynecology', 'Specialize in female reproductive health, childbirth, and surgical techniques related to obstetrics and gynecology.'),
(164, 'md', 'MD Psychiatry', 'Focus on mental health disorders, treatment methods, and psychological counseling to diagnose and treat psychiatric conditions.'),
(165, 'md', 'MD Anesthesiology', 'Specialize in anesthesia care, pain management, and critical care during surgeries and procedures.'),
(166, 'md', 'MD General Surgery', 'Focus on performing surgical procedures, patient recovery, and post-operative care for a range of medical conditions.'),
(167, 'ca', 'CA Foundation', 'Build the foundational knowledge of accounting, law, economics, and business for aspiring Chartered Accountants.'),
(168, 'ca', 'CA Intermediate', 'Advance your expertise in accounting, taxation, and auditing to further prepare for the Chartered Accountancy profession.'),
(169, 'ca', 'CA Final', 'Master advanced subjects in taxation, auditing, and financial management to complete the CA qualification.'),
(170, 'cma', 'CMA Foundation', 'Learn the fundamentals of cost management, financial accounting, and business law as the starting point for CMA qualification.'),
(171, 'cma', 'CMA Intermediate', 'Develop advanced skills in management accounting, financial management, and cost control techniques for business strategy.'),
(172, 'cma', 'CMA Final', 'Master complex topics like advanced management accounting, strategic financial management, and professional ethics to become a CMA.'),
(173, 'cs', 'CS Foundation', 'Get started with the basics of company law, business laws, and economic principles as a foundation for the CS profession.'),
(174, 'cs', 'CS Executive', 'Deepen your understanding of corporate governance, company law, securities law, and corporate financial management in the CS course.'),
(175, 'cs', 'CS Professional', 'Specialize in advanced areas of corporate governance, mergers, and acquisitions, and develop expertise to practice as a Company Secretary.'),
(176, 'pgdm', 'PGDM General Management', 'Learn the skills needed to manage organizations, make strategic decisions, and lead teams in diverse business environments.'),
(177, 'pgdm', 'PGDM Marketing', 'Specialize in marketing strategies, consumer behavior, and digital marketing for careers in business development and brand management.'),
(178, 'pgdm', 'PGDM Finance', 'Gain expertise in financial management, investment strategies, and corporate finance to succeed in the financial industry.'),
(179, 'pgdm', 'PGDM HRM (Human Resource Management)', 'Develop skills in talent acquisition, employee engagement, and organizational behavior to manage human resources effectively.'),
(180, 'dpharm', 'DPharm General Pharmacy', 'Learn the fundamentals of pharmaceutical sciences, drug formulations, and clinical pharmacy practices to work in healthcare.'),
(181, 'dpharm', 'DPharm Pharmaceutical Chemistry', 'Study chemical principles, drug synthesis, and formulations to contribute to pharmaceutical research and manufacturing.'),
(182, 'dpharm', 'DPharm Clinical Pharmacy', 'Specialize in patient care, medication management, and therapeutic interventions to enhance healthcare outcomes.'),
(183, 'bpharm', 'BPharm General Pharmacy', 'Study the fundamentals of pharmacy, drug interactions, and therapeutic management to prepare for a career in healthcare.'),
(184, 'bpharm', 'BPharm Pharmaceutical Chemistry', 'Learn about the chemistry of drugs, drug design, and synthesis processes for careers in pharmaceutical research and industry.'),
(185, 'bpharm', 'BPharm Clinical Pharmacy', 'Develop expertise in patient medication management, pharmacy ethics, and healthcare regulations for working in hospitals and clinics.'),
(186, 'bpharm', 'BPharm Pharmacology', 'Focus on the study of drug actions, therapeutic uses, and drug toxicity to prepare for a career in pharmacology and toxicology.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career-compass-admin`
--
ALTER TABLE `career-compass-admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_combass_colleges`
--
ALTER TABLE `career_combass_colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_combass_courses`
--
ALTER TABLE `career_combass_courses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career-compass-admin`
--
ALTER TABLE `career-compass-admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career_combass_colleges`
--
ALTER TABLE `career_combass_colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `career_combass_courses`
--
ALTER TABLE `career_combass_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2026 at 12:57 PM
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
-- Database: `entrepreneur_portal-rehan`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_domain` varchar(150) NOT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `expertise` text DEFAULT NULL,
  `linkedin_profile` varchar(255) DEFAULT NULL,
  `profile_completed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `user_id`, `business_domain`, `experience_years`, `expertise`, `linkedin_profile`, `profile_completed`, `created_at`, `updated_at`) VALUES
(1, 2, 'Software Engineer', 5, 'Software Engineer, Web Developer', '', 1, '2026-03-23 06:48:07', '2026-05-05 05:38:40'),
(2, 5, 'E-Commerce, Web Developer', 4, 'HTML, CSS, PHP, MYSQL, Bootstrap', '', 1, '2026-04-23 05:13:09', '2026-05-04 06:13:28'),
(3, 6, 'BBA', 2, 'Bank Manager', '', 1, '2026-05-04 04:08:19', '2026-05-04 04:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`) VALUES
(1, 'Technology', 'Software, AI, Mobile Apps, Web Development', '2026-03-23 06:51:06'),
(2, 'E-commerce', 'Online stores, Dropshipping, Retail Tech', '2026-03-23 06:51:06'),
(3, 'Fintech', 'Financial Technology, Banking, Payments', '2026-03-23 06:51:06'),
(4, 'HealthTech', 'Healthcare, Medical, Fitness & Wellness', '2026-03-23 06:51:06'),
(5, 'EdTech', 'Education Technology & E-Learning', '2026-03-23 06:51:06'),
(6, 'Agriculture', 'AgriTech, Farming, Food Processing', '2026-03-23 06:51:06'),
(7, 'Sustainability', 'Green Energy, Environment, Climate Tech', '2026-03-23 06:51:06'),
(8, 'Food & Beverage', 'Restaurant, Food Delivery, FMCG', '2026-03-23 06:51:06'),
(9, 'Fashion & Apparel', 'Clothing, Textile, Accessories', '2026-03-23 06:51:06'),
(10, 'Real Estate', 'Property, Construction, Housing Tech', '2026-03-23 06:51:06'),
(11, 'Logistics & Supply Chain', 'Transportation, Delivery, Warehousing', '2026-03-23 06:51:06'),
(12, 'Entertainment', 'Gaming, Media, Streaming, Events', '2026-03-23 06:51:06'),
(13, 'Travel & Tourism', 'Tourism, Hospitality, Booking Platforms', '2026-03-23 06:51:06'),
(14, 'Social Impact', 'NGO, Charity, Community Projects', '2026-03-23 06:51:06'),
(15, 'Manufacturing', 'Industry 4.0, Smart Factories', '2026-03-23 06:51:06'),
(16, 'Cybersecurity', 'Security, Privacy, Data Protection', '2026-03-23 06:51:06'),
(17, 'Blockchain & Crypto', 'Web3, Cryptocurrency, NFTs', '2026-03-23 06:51:06'),
(18, 'HR & Recruitment', 'Human Resources, Talent Management', '2026-03-23 06:51:06'),
(19, 'Marketing & Advertising', 'Digital Marketing, Branding', '2026-03-23 06:51:06'),
(20, 'Others', 'Miscellaneous business ideas and resources', '2026-03-23 06:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` enum('tutorial','event') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `description`, `type`, `created_at`) VALUES
(2, 'How to Validate Your Business Idea in 7 Days', 'Learn practical steps to test your startup idea before investing money. Includes customer interviews, surveys, and MVP techniques.', 'tutorial', '2026-03-23 06:41:42'),
(3, 'Startup Funding Guide 2026 - Complete Roadmap', 'Everything you need to know about raising funds from bootstrapping to angel investors, venture capital, and government grants.', 'tutorial', '2026-03-23 06:41:42'),
(4, 'Free Business Plan Template for Beginners', 'Download ready-to-use business plan template with financial projections and market analysis sections.', 'tutorial', '2026-03-23 06:41:42'),
(5, 'How to Build a Minimum Viable Product (MVP)', 'Step-by-step guide on creating your first MVP and getting early customer feedback.', 'tutorial', '2026-03-23 06:41:42'),
(6, 'Digital Marketing Strategies for New Startups', 'Learn low-cost digital marketing techniques including social media, SEO, content marketing and email campaigns.', 'tutorial', '2026-03-23 06:41:42'),
(7, 'Webinar: Legal Requirements for Starting a Business in Pakistan', 'Join our live session on company registration, taxes, trademarks, and legal compliance.', 'event', '2026-03-23 06:41:42'),
(8, 'Pitch Deck Masterclass - How to Impress Investors', 'Learn how to create a winning pitch deck with real examples from successful startups.', 'tutorial', '2026-03-23 06:41:42'),
(9, 'E-commerce Business Launch Checklist', 'Complete checklist to successfully launch your online store in 30 days.', 'tutorial', '2026-03-23 06:41:42'),
(10, 'Startup Networking Event - Multan Edition', 'Connect with fellow entrepreneurs, mentors, and investors at our monthly networking meetup.', 'event', '2026-03-23 06:41:42'),
(11, 'Financial Management for Early Stage Startups', 'How to manage cash flow, budgeting, and financial planning in the first year of business.', 'tutorial', '2026-03-23 06:41:42'),
(12, 'Workshop: From Idea to Business Model Canvas', 'Interactive workshop to help you map your business model using the famous Business Model Canvas.', 'event', '2026-03-23 06:41:42'),
(13, 'SEO for Beginners - Rank Higher on Google', 'Complete beginner-friendly SEO guide to improve your website ranking organically.', 'tutorial', '2026-03-23 06:41:42'),
(14, 'Women Entrepreneurship Summit 2026', 'A full-day event celebrating and empowering women entrepreneurs with keynote speakers and panel discussions.', 'event', '2026-03-23 06:41:42'),
(15, 'How to Protect Your Startup Idea', 'Guide on patents, copyrights, trademarks, and NDAs for protecting your intellectual property.', 'tutorial', '2026-03-23 06:41:42'),
(16, 'Social Media Marketing Masterclass', 'Advanced strategies to grow your brand and generate leads using Instagram, Facebook, and TikTok.', 'tutorial', '2026-03-23 06:41:42'),
(17, 'Tech Startup Funding Pitch Night', 'Selected startups will get a chance to pitch in front of real angel investors and VCs.', 'event', '2026-03-23 06:41:42'),
(18, 'Time Management Techniques for Busy Entrepreneurs', 'Proven productivity hacks and tools to help entrepreneurs manage their time effectively.', 'tutorial', '2026-03-23 06:41:42'),
(19, 'Customer Discovery Interview Techniques', 'Learn how to conduct effective customer interviews to validate your product-market fit.', 'tutorial', '2026-03-23 06:41:42'),
(20, 'Annual Entrepreneurship Bootcamp 2026', 'Intensive 3-day bootcamp covering ideation, validation, business planning, and pitching.', 'event', '2026-03-23 06:41:42'),
(21, 'Building a Strong Brand Identity on a Budget', 'Step-by-step guide to creating professional branding even with limited resources.', 'tutorial', '2026-03-23 06:41:42'),
(22, 'Web Development', 'In this tutorial I can help you to start Python.', 'tutorial', '2026-04-23 05:20:50'),
(23, 'Python', 'Python is a programming language', 'tutorial', '2026-04-26 04:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `agent_id`, `message`, `rating`, `created_at`) VALUES
(1, 3, 1, 'Satisfied', 5, '2026-03-23 07:25:58'),
(2, 1, 1, 'Good Service', 5, '2026-03-23 07:27:15'),
(3, 3, 2, 'Great', 5, '2026-04-23 05:31:10'),
(4, 4, 2, 'I am satisfied with your work', 5, '2026-04-23 05:34:49'),
(5, 1, 2, 'Super', 5, '2026-05-03 09:42:04'),
(6, 4, 3, 'good', 4, '2026-05-04 04:09:23'),
(7, 3, 3, 'Great', 5, '2026-05-04 04:20:05'),
(8, 3, 2, 'Good', 4, '2026-05-04 04:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `topic_id`, `user_id`, `message`, `created_at`) VALUES
(1, 1, 2, 'hi', '2026-03-23 07:22:49'),
(2, 1, 3, 'hello', '2026-03-23 07:23:29'),
(3, 2, 5, 'Hi', '2026-04-23 04:57:55'),
(4, 3, 4, 'Hello Rehan', '2026-05-03 09:38:38'),
(5, 3, 1, 'yes', '2026-05-04 05:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `user_id`, `title`, `created_at`) VALUES
(1, 2, 'Programming', '2026-03-23 07:22:43'),
(2, 1, 'Web', '2026-03-23 07:36:29'),
(3, 5, 'E-commerence', '2026-04-26 04:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `is_read`, `created_at`) VALUES
(1, 3, 2, 'Hy Sir', 0, '2026-03-23 07:15:08'),
(2, 3, 2, 'Hello', 0, '2026-03-23 07:16:16'),
(3, 2, 3, 'Yes', 0, '2026-03-23 07:18:48'),
(4, 1, 2, 'hello', 0, '2026-03-23 07:27:45'),
(5, 2, 1, 'yes', 0, '2026-03-23 07:27:58'),
(6, 1, 2, 'Are yo Rehan Afzal', 0, '2026-03-23 07:28:25'),
(7, 4, 5, 'hi ', 0, '2026-04-23 05:14:31'),
(8, 5, 4, 'Hi how are you. how can I help you', 0, '2026-04-23 05:16:10'),
(9, 4, 5, 'Hello Mr.Rehan', 0, '2026-05-03 09:43:10'),
(10, 3, 6, 'hi farhan', 0, '2026-05-04 04:19:43'),
(11, 3, 6, 'hi farhan', 0, '2026-05-04 04:19:44'),
(12, 6, 3, 'yes', 0, '2026-05-04 04:22:14'),
(13, 2, 1, 'Yes my name is Muhammad Rehan Afzal', 0, '2026-05-05 10:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content_type` enum('idea','framework','template','startup_plan','financial_support') NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `agent_id`, `category_id`, `title`, `content_type`, `description`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 2, 18, 'sda', 'template', 'fsa', 'uploads/1774248812_Health_Report_monthly.pdf', '2026-03-23 06:53:32', '2026-03-23 06:53:32'),
(2, 2, 1, 'AI-Powered Customer Support Chatbot Idea', 'template', 'A complete business idea for an intelligent AI chatbot that provides 24/7 customer support for e-commerce businesses.', 'uploads/1777180558_AI-Powered Customer Support Chatbot Idea.docx', '2026-03-23 06:55:17', '2026-04-26 05:15:58'),
(3, 2, 2, 'E-commerce Business Model Canvas Template', 'template', 'Ready-to-use Business Model Canvas template specifically designed for online stores and dropshipping businesses.', 'uploads/1777180725_E-commerce Business Model Canvas Template.docx', '2026-03-23 06:55:17', '2026-04-26 05:18:45'),
(4, 2, 3, 'Complete Financial Projection Excel Template', 'template', 'Monthly and yearly financial model with income statement, cash flow, and break-even analysis.', 'uploads/1777810230_Complete Financial Projection Excel Template.docx', '2026-03-23 06:55:17', '2026-05-03 12:10:30'),
(5, 2, 1, 'How to Build a SaaS Product - Framework', 'framework', 'Step-by-step framework for developing and launching a successful Software as a Service product.', 'uploads/1777810454_How to Build a SaaS Product – Framework.docx', '2026-03-23 06:55:17', '2026-05-03 12:14:14'),
(6, 2, 4, 'HealthTech Startup Pitch Deck', 'startup_plan', 'Professional pitch deck template for HealthTech startups seeking seed funding.', 'uploads/1777810808_HealthTech Startup Pitch Deck.docx', '2026-03-23 06:55:17', '2026-05-03 12:20:08'),
(7, 2, 5, 'EdTech Market Research Report 2026', 'idea', 'In-depth market research on the growing EdTech sector in Pakistan and South Asia.', 'uploads/1777811069_EdTech Market Research Report 2026.docx', '2026-03-23 06:55:17', '2026-05-03 12:24:29'),
(8, 2, 3, 'Startup Funding Guide & Checklist', 'startup_plan', 'Comprehensive guide covering all types of funding options available for early-stage startups.', 'uploads/1777811272_Startup Funding Guide & Checklist.docx', '2026-03-23 06:55:17', '2026-05-03 12:27:52'),
(9, 2, 6, 'Smart Farming Business Plan', 'startup_plan', 'Detailed business plan for a smart agriculture startup using IoT sensors and data analytics.', 'uploads/1777811422_Smart Farming Business Plan.docx', '2026-03-23 06:55:17', '2026-05-03 12:30:22'),
(10, 2, 7, 'Sustainable Packaging Ideas for Businesses', 'idea', 'Innovative eco-friendly packaging solutions for small and medium enterprises.', 'uploads/1777811661_Sustainable Packaging Ideas for Businesses.docx', '2026-03-23 06:55:17', '2026-05-03 12:34:21'),
(11, 2, 2, 'Dropshipping Product Research Framework', 'framework', 'Powerful framework to find winning products for your dropshipping store.', 'uploads/1777811878_Dropshipping Product Research Framework.docx', '2026-03-23 06:55:17', '2026-05-03 12:37:58'),
(12, 2, 8, 'Food Delivery App Business Model', 'idea', 'Complete business idea and model for a hyperlocal food delivery startup.', 'uploads/1777812250_Food Delivery App Business Model.docx', '2026-03-23 06:55:17', '2026-05-03 12:44:10'),
(13, 2, 9, 'Fashion Brand Launch Checklist', 'template', 'Step-by-step checklist and timeline for launching your own fashion brand.', 'uploads/1777812421_Fashion Brand Launch Checklist.docx', '2026-03-23 06:55:17', '2026-05-03 12:47:01'),
(14, 2, 10, 'Real Estate Investment Analysis Template', 'template', 'Professional template to analyze real estate investment opportunities.', 'uploads/1777812567_Real Estate Investment Analysis Template.docx', '2026-03-23 06:55:17', '2026-05-03 12:49:27'),
(15, 2, 11, 'Supply Chain Optimization Framework', 'framework', 'Advanced framework to optimize logistics and supply chain operations.', 'uploads/1777812762_Supply Chain Optimization Framework.docx', '2026-03-23 06:55:17', '2026-05-03 12:52:42'),
(16, 2, 12, 'Mobile Game Development Business Plan', 'startup_plan', 'Detailed plan for starting a mobile game development studio.', 'uploads/1777812927_Mobile Game Development Business Plan.docx', '2026-03-23 06:55:17', '2026-05-03 12:55:27'),
(17, 2, 13, 'Travel Startup Idea - Eco Tourism Platform', 'idea', 'Business idea for a platform connecting travelers with sustainable tourism experiences.', 'uploads/1777813086_Travel Startup Idea - Eco Tourism Platform.docx', '2026-03-23 06:55:17', '2026-05-03 12:58:06'),
(18, 2, 3, 'Grant Application Template for Startups', 'template', 'Professional template to apply for government and private grants.', 'uploads/1777813211_Grant Application Template for Startups.docx', '2026-03-23 06:55:17', '2026-05-03 13:00:11'),
(19, 2, 14, 'Social Impact Business Framework', 'framework', 'Framework for building businesses that create measurable social impact.', 'uploads/1777813354_Social Impact Business Framework.docx', '2026-03-23 06:55:17', '2026-05-03 13:02:34'),
(20, 2, 4, 'Monthly Health Report Template', 'template', 'Professional monthly health and wellness report template for clinics and fitness centers.', 'uploads/1777813566_Monthly Health Report Template.docx', '2026-03-23 06:55:17', '2026-05-03 13:06:06'),
(21, 2, 15, 'Digital Marketing Strategy Template 2026', 'template', 'Complete digital marketing strategy and calendar template for new businesses.', 'uploads/1777813732_Digital Marketing Strategy Template 2026.docx', '2026-03-23 06:55:17', '2026-05-03 13:08:52'),
(22, 5, 2, 'Amazon E-Commerce Business Model', 'idea', 'Amazon is one of the world’s largest online shopping platforms that connects buyers and sellers across millions of products.', 'uploads/1777814344_Amazon E-Commerce Business Model.docx', '2026-04-23 04:55:14', '2026-05-03 13:19:04'),
(23, 5, 2, 'Shopify E-Commerce Store Business Model', 'idea', 'Shopify is a leading online e-commerce platform that allows individuals and businesses to create and manage their own online stores easily.', 'uploads/1777814154_Shopify E-Commerce Store Business Model.docx', '2026-04-26 04:26:08', '2026-05-03 13:15:54'),
(25, 5, 16, 'Cybersecurity Threat Protection Framework', 'framework', 'A structured approach to identifying, preventing, and responding to cyber threats to protect digital systems and data.', 'uploads/1778038572_Cybersecurity Threat Protection Framework.docx', '2026-05-06 03:36:13', '2026-05-06 03:36:13'),
(26, 5, 16, 'Cybersecurity Services Business', 'idea', 'A business idea focused on providing cybersecurity solutions to protect individuals and organizations from digital threats.', 'uploads/1778038841_Cybersecurity Services Business.docx', '2026-05-06 03:40:17', '2026-05-06 03:40:41'),
(27, 5, 16, 'Cybersecurity Protection Template', 'template', 'A ready-to-use template for implementing cybersecurity measures in any organization or system.', 'uploads/1778039081_Cybersecurity Protection Template.docx', '2026-05-06 03:44:41', '2026-05-06 03:44:41'),
(28, 5, 16, 'Cybersecurity Startup Plan', 'startup_plan', 'A step-by-step plan to launch a cybersecurity startup focused on protecting digital systems and data.', 'uploads/1778039260_Cybersecurity Startup Plan.docx', '2026-05-06 03:47:40', '2026-05-06 03:47:40'),
(29, 5, 16, 'Funding and Financial Support for Cybersecurity Ventures', 'financial_support', 'An overview of financial support options available for starting and growing a cybersecurity business.', 'uploads/1778039386_Funding and Financial Support for Cybersecurity Ventures.docx', '2026-05-06 03:49:46', '2026-05-06 03:49:46'),
(30, 5, 17, 'Blockchain-Based Digital Payment Platform', 'idea', 'A business idea focused on creating a secure and decentralized digital payment system using blockchain technology.', 'uploads/1778039664_Blockchain-Based Digital Payment Platform.docx', '2026-05-06 03:54:24', '2026-05-06 03:54:24'),
(31, 5, 17, 'Blockchain System Framework', 'framework', 'A structured framework for understanding and implementing blockchain-based systems and applications.', 'uploads/1778039821_Blockchain System Framework.docx', '2026-05-06 03:57:01', '2026-05-06 03:57:01'),
(32, 5, 17, 'Blockchain Project Development Template', 'template', 'A ready-to-use template for designing and launching a blockchain-based project or application.', 'uploads/1778039924_Blockchain Project Development Template.docx', '2026-05-06 03:58:44', '2026-05-06 03:58:44'),
(33, 5, 17, 'Blockchain Startup Plan', 'startup_plan', 'A step-by-step plan to launch a blockchain or cryptocurrency-based startup.', 'uploads/1778040027_Blockchain Startup Plan.docx', '2026-05-06 04:00:27', '2026-05-06 04:00:27'),
(34, 5, 17, 'Financial Support for Blockchain & Crypto Projects', 'financial_support', 'An overview of funding options available for blockchain and cryptocurrency-based businesses.', 'uploads/1778040135_Financial Support for Blockchain & Crypto Projects.docx', '2026-05-06 04:02:15', '2026-05-06 04:02:15'),
(35, 5, 19, 'AI-Powered Digital Marketing Agency', 'idea', 'A modern marketing business that uses AI tools to deliver smarter, faster, and highly targeted advertising solutions.', 'uploads/1778040495_AI-Powered Digital Marketing Agency.docx', '2026-05-06 04:08:15', '2026-05-06 04:08:15'),
(36, 5, 19, 'The Smart Marketing Funnel Framework', 'framework', 'A strategic framework that guides businesses from attracting audiences to converting them into loyal customers.', 'uploads/1778040633_The Smart Marketing Funnel Framework.docx', '2026-05-06 04:10:33', '2026-05-06 04:10:33'),
(37, 5, 19, 'High-Converting Marketing Campaign Template', 'template', 'A ready-to-use template for planning and executing successful marketing campaigns with maximum impact.', 'uploads/1778040738_High-Converting Marketing Campaign Template.docx', '2026-05-06 04:12:18', '2026-05-06 04:12:18'),
(38, 5, 19, 'Digital Marketing Startup Blueprint', 'startup_plan', 'A step-by-step plan to launch and grow a successful marketing and advertising startup from scratch.', 'uploads/1778040816_Digital Marketing Startup Blueprint.docx', '2026-05-06 04:13:36', '2026-05-06 04:13:36'),
(39, 5, 19, 'Funding Strategies for Marketing & Advertising Ventures', 'financial_support', 'A complete guide to securing financial support for launching and scaling marketing businesses.', 'uploads/1778040914_Funding Strategies for Marketing & Advertising Ventures.docx', '2026-05-06 04:15:14', '2026-05-06 04:15:14'),
(40, 5, 20, 'Smart Lifestyle Services Platform', 'idea', 'A versatile business idea that connects people with everyday services through one convenient digital platform.', 'uploads/1778041256_Smart Lifestyle Services Platform.docx', '2026-05-06 04:20:56', '2026-05-06 04:20:56'),
(41, 5, 20, 'The All-in-One Productivity Framework', 'framework', 'A powerful framework designed to help individuals and businesses manage tasks, goals, and performance efficiently.', 'uploads/1778041355_The All-in-One Productivity Framework.docx', '2026-05-06 04:22:21', '2026-05-06 04:22:35'),
(42, 2, 20, 'Universal Project Planning', 'template', 'A simple and effective template for organizing and executing any type of project successfully.', 'uploads/1778041492_Universal Project Planning.docx', '2026-05-06 04:24:52', '2026-05-06 04:24:52'),
(43, 2, 20, 'Multi-Purpose Startup Success Plan', 'startup_plan', 'A flexible startup plan designed to help entrepreneurs launch and grow any type of business successfully.', 'uploads/1778041576_Multi-Purpose Startup Success Plan.docx', '2026-05-06 04:26:16', '2026-05-06 04:26:16'),
(44, 2, 20, 'Smart Funding Strategies for Any Business', 'financial_support', 'A practical guide to securing and managing financial support for starting and growing a business.', 'uploads/1778041678_Smart Funding Strategies for Any Business.docx', '2026-05-06 04:27:58', '2026-05-06 04:27:58'),
(45, 6, 18, 'Smart Talent Matching & Recruitment Agency', 'idea', 'A modern recruitment business that uses technology to connect the right talent with the right opportunities efficiently.', 'uploads/1778041868_Smart Talent Matching & Recruitment Agency.docx', '2026-05-06 04:31:08', '2026-05-06 04:31:08'),
(46, 6, 18, 'The Strategic Hiring & Talent Management Framework', 'framework', 'A structured framework that guides organizations in attracting, hiring, and retaining top talent effectively.', 'uploads/1778041953_The Strategic Hiring & Talent Management Framework.docx', '2026-05-06 04:32:33', '2026-05-06 04:32:33'),
(47, 6, 18, 'Complete Recruitment Process', 'template', 'A ready-to-use template for managing the entire hiring process from job posting to onboarding.', 'uploads/1778042063_Complete Recruitment Process.docx', '2026-05-06 04:34:23', '2026-05-06 04:34:23'),
(48, 6, 18, 'Recruitment Agency Startup Blueprint', 'startup_plan', 'A step-by-step plan to launch and grow a successful HR and recruitment business.', 'uploads/1778042158_Recruitment Agency Startup Blueprint.docx', '2026-05-06 04:35:58', '2026-05-06 04:35:58'),
(49, 6, 18, 'Funding & Budgeting Strategies for HR Ventures', 'financial_support', 'A practical guide to securing and managing financial resources for HR and recruitment businesses.', 'uploads/1778042250_Funding & Budgeting Strategies for HR Ventures.docx', '2026-05-06 04:37:30', '2026-05-06 04:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `role` enum('user','agent','admin') NOT NULL DEFAULT 'user',
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `bio`, `location`, `role`, `status`, `created_at`) VALUES
(1, 'Admin Raja Muhammad Asghar', 'admin@admin.com', '123456', '03000000000', 'Teacher', 'Fazail Pur Jhelum', 'admin', 'approved', '2026-03-23 06:05:59'),
(2, 'Agnet Muhammad Rehan Afzal', 'agent@gmail.com', '123456', '03490992476', 'I am a Software Engineer', 'Village Fazail Pur P/O Chak Daulat Jhelum', 'agent', 'approved', '2026-03-23 06:13:09'),
(3, 'User Asad', 'asad@gmail.com', '123456', '03000000000', 'fdsa', 'Karachi Korangi', 'user', 'approved', '2026-03-23 06:57:34'),
(4, 'User Raja', 'raja@gmail.com', '123456', '123123', 'I am a Web developer', 'Jhelum', 'user', 'approved', '2026-04-20 08:00:25'),
(5, 'Agent Rehan', 'agentrehan@gmail.com', '123123', '03490992476', 'I am a Web developer.', 'Jhelum', 'agent', 'approved', '2026-04-23 04:42:15'),
(6, 'Agent Farhan', 'agentfarhan@gmail.com', '123456', '03000000000', 'Business man', 'Chak Daulat Jhelum', 'agent', 'approved', '2026-05-04 03:56:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD CONSTRAINT `forum_topics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

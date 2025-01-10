-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: oviya_medsafe
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `form_type`
--

DROP TABLE IF EXISTS `form_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_type`
--

LOCK TABLES `form_type` WRITE;
/*!40000 ALTER TABLE `form_type` DISABLE KEYS */;
INSERT INTO `form_type` VALUES (1,'contact_form'),(2,'downloads_form');
/*!40000 ALTER TABLE `form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin@medsafe.com','admin@123',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_short_title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `news_content` text NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `publish` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (12,3,'Oviya MedSafe – Convincing Leaders to Constitute Pharmacovigilance','Pharmacovigilance','2023-03-02','1736495712192.png','<p>Dear Well-wishers,</p><p>I am pleased to meet you through this March 2023 edition of&nbsp;Oviya MedSafe‘s newsletter (the&nbsp;124th&nbsp;in the series since April 2012) in which I intend to outline some practical challenges faced by fast-growing multinational pharma/biotech/healthcare companies when they begin to constitute an integrated global Pharmacovigilance system aimed at attaining total regulatory compliance involving all their markets and covering all their products. Obviously, I also am zealous of telling you how Oviya MedSafe as their global Pharmacovigilance Service Provider helped them overcome such challenges effectively.</p><p><br></p><p>If we trace the natural history of a typical generic company, we commonly note that Pharmacovigilance used to be considered an upfront investment only when the company planned to place its marketed products for sale in developed countries. Later, some developing countries brought about minimal Pharmacovigilance requirements but the implementation was not that stringent. Underdeveloped countries were yet to make their presence felt on the global Pharmacovigilance map. However, with time, the&nbsp;continuous upward mobility of drug regulations&nbsp;across the globe has now made Pharmacovigilance relevant in almost all markets today albeit with varying intensities. As a result, multiple Pharmacovigilance systems existing within the same organization has become unavoidable.</p><p><br></p><p>To start with, the&nbsp;prototype&nbsp;for the integrated global Pharmacovigilance system must be determined. Unlike a Pharmacovigilance-naive organization in which it is actually easier to build a Pharmacovigilance system from scratch, an organization that already has several affiliates in different geographies with varying levels of regulatory expectations pertaining to Pharmacovigilance will find it difficult to identify the&nbsp;primary system&nbsp;into which all the&nbsp;secondary systems&nbsp;need to merge in order to form a single comprehensive system that retains the most advantageous characteristics of all the systems. The ideal candidate for the prototype would be the most demanding as well as the most inclusive system, upon which the specific compliance needs of individual affiliates could be built. Considering that each affiliate would have been complying with the local regulations in their own way and to the extent of their choice until then, the very mention of&nbsp;integration&nbsp;may often cause apprehension in the minds of the key personnel. But, it is to be remembered that the purpose of integration is&nbsp;progress&nbsp;and does not mean loss of freedom. In fact, it couples freedom with accountability, and ensures productivity.</p><p><br></p><p>After identifying the prototype, the organization has to set up a&nbsp;task force&nbsp;to study the best practices of each Pharmacovigilance system which include thorough review of the written procedures, Pharmacovigilance agreements with partners, measures in place for collection of safety data from all sources, documentation on Pharmacovigilance activities carried out in-house versus activities outsourced to service providers, stored source documents, audit &amp; inspection reports, status of CAPAs, Pharmacovigilance software databases used, any automation efforts taken that could impact Patient Safety, all communication with regulatory authorities, important internal documents like Minutes of Meetings, escalation mechanisms and so on. The organization should identify a Global Head for Pharmacovigilance who shall lead the task force which would consist of the Pharmacovigilance Heads of all the affiliates. In case the organization already has presence in markets with highly evolved regulations such as the EU or the UK, the concerned QPPVs shall also play key roles in the task force. The Corporate Quality Assurance department should also have representation in the task force. Essentially, this means that the outcome should be the establishment of a global Pharmacovigilance hierarchy with the mandate of making the integrated organization much more compliant than its individual constituents were ever before. Unfortunately, it is not easy for all organizations to achieve this harmony by themselves and that is where Oviya MedSafe is here to help&nbsp;</p><p><br></p><p>Oviya MedSafe, as a premier&nbsp;boutique consultancy firm&nbsp;in Pharmacovigilance, has rich experience not only in creating Pharmacovigilance systems for our smaller clients but also in bridging the gaps in the Pharmacovigilance frameworks of our larger clients. Oviya MedSafe possesses a&nbsp;success formula&nbsp;for constituting the task force as stated above and driving it on behalf of our clients to ensure that its purpose is fulfilled, a feat that has been perfected by our practice over a decade’s time. We understand that each client is unique and that drives us to engage in deep discussions with all stakeholders of Pharmacovigilance at our client’s and come out with a customized plan to streamline the client’s global Pharmacovigilance system. As an interested but independent third party, we then proceed to execute the plan on behalf of our client, never once missing the larger picture. We take care to maintain the&nbsp;arm’s length&nbsp;distance so that we remain fair to all stakeholders in our client organization which also helps the case as we are least likely to get influenced by any particular stakeholder unit. Finally, we play a significant role in convincing the C-suite of our clients on the transformation that needs to happen in their Pharmacovigilance function without which there would be no hope for betterment. Thanks to our reputation for integrity and efficiency, we have almost always been asked by such clients to continue as their sole or principal Pharmacovigilance Service Provider, thereby validating the triumph of our well-structured&nbsp;hybrid model&nbsp;of Pharmacovigilance offerings.</p><p><br></p><p>To conclude, let me take the help of the legendary Lebanese-American writer, poet and visual artist&nbsp;Kahlil Gibran. As he says at the end of his famous poem titled ‘Fear‘, the verses “The river needs to take the risk of entering the ocean because only then will fear disappear; because that’s where the river will know it’s not about disappearing into the ocean, but of becoming the ocean“, appear to be so relevant to a fast-growing multinational pharma/biotech/healthcare company that aspires to integrate and harmonize its Pharmacovigilance systems under a single umbrella. Needless to say, every such ocean that we see in the industry today was once a river that was afraid of disappearing into the ocean! At Oviya MedSafe, we take nothing but immense pride in allaying these fears of tomorrow’s oceans.</p>','2025-01-09 16:34:36',1),(13,2,'Oviya MedSafe –Reforming Pharmacovigilance Business Practices Since 2012','Reforming','2022-11-09','1736440720498.png','<p>Dear Well-wishers,</p><p>I am pleased to meet you through this March 2023 edition of&nbsp;Oviya MedSafe‘s newsletter (the&nbsp;124th&nbsp;in the series since April 2012) in which I intend to outline some practical challenges faced by fast-growing multinational pharma/biotech/healthcare companies when they begin to constitute an integrated global Pharmacovigilance system aimed at attaining total regulatory compliance involving all their markets and covering all their products. Obviously, I also am zealous of telling you how Oviya MedSafe as their global Pharmacovigilance Service Provider helped them overcome such challenges effectively.</p><p><br></p><p>If we trace the natural history of a typical generic company, we commonly note that Pharmacovigilance used to be considered an upfront investment only when the company planned to place its marketed products for sale in developed countries. Later, some developing countries brought about minimal Pharmacovigilance requirements but the implementation was not that stringent. Underdeveloped countries were yet to make their presence felt on the global Pharmacovigilance map. However, with time, the&nbsp;continuous upward mobility of drug regulations&nbsp;across the globe has now made Pharmacovigilance relevant in almost all markets today albeit with varying intensities. As a result, multiple Pharmacovigilance systems existing within the same organization has become unavoidable.</p><p><br></p><p>To start with, the&nbsp;prototype&nbsp;for the integrated global Pharmacovigilance system must be determined. Unlike a Pharmacovigilance-naive organization in which it is actually easier to build a Pharmacovigilance system from scratch, an organization that already has several affiliates in different geographies with varying levels of regulatory expectations pertaining to Pharmacovigilance will find it difficult to identify the&nbsp;primary system&nbsp;into which all the&nbsp;secondary systems&nbsp;need to merge in order to form a single comprehensive system that retains the most advantageous characteristics of all the systems. The ideal candidate for the prototype would be the most demanding as well as the most inclusive system, upon which the specific compliance needs of individual affiliates could be built. Considering that each affiliate would have been complying with the local regulations in their own way and to the extent of their choice until then, the very mention of&nbsp;integration&nbsp;may often cause apprehension in the minds of the key personnel. But, it is to be remembered that the purpose of integration is&nbsp;progress&nbsp;and does not mean loss of freedom. In fact, it couples freedom with accountability, and ensures productivity.</p><p><br></p><p>After identifying the prototype, the organization has to set up a&nbsp;task force&nbsp;to study the best practices of each Pharmacovigilance system which include thorough review of the written procedures, Pharmacovigilance agreements with partners, measures in place for collection of safety data from all sources, documentation on Pharmacovigilance activities carried out in-house versus activities outsourced to service providers, stored source documents, audit &amp; inspection reports, status of CAPAs, Pharmacovigilance software databases used, any automation efforts taken that could impact Patient Safety, all communication with regulatory authorities, important internal documents like Minutes of Meetings, escalation mechanisms and so on. The organization should identify a Global Head for Pharmacovigilance who shall lead the task force which would consist of the Pharmacovigilance Heads of all the affiliates. In case the organization already has presence in markets with highly evolved regulations such as the EU or the UK, the concerned QPPVs shall also play key roles in the task force. The Corporate Quality Assurance department should also have representation in the task force. Essentially, this means that the outcome should be the establishment of a global Pharmacovigilance hierarchy with the mandate of making the integrated organization much more compliant than its individual constituents were ever before. Unfortunately, it is not easy for all organizations to achieve this harmony by themselves and that is where Oviya MedSafe is here to help&nbsp;</p><p><br></p><p>Oviya MedSafe, as a premier&nbsp;boutique consultancy firm&nbsp;in Pharmacovigilance, has rich experience not only in creating Pharmacovigilance systems for our smaller clients but also in bridging the gaps in the Pharmacovigilance frameworks of our larger clients. Oviya MedSafe possesses a&nbsp;success formula&nbsp;for constituting the task force as stated above and driving it on behalf of our clients to ensure that its purpose is fulfilled, a feat that has been perfected by our practice over a decade’s time. We understand that each client is unique and that drives us to engage in deep discussions with all stakeholders of Pharmacovigilance at our client’s and come out with a customized plan to streamline the client’s global Pharmacovigilance system. As an interested but independent third party, we then proceed to execute the plan on behalf of our client, never once missing the larger picture. We take care to maintain the&nbsp;arm’s length&nbsp;distance so that we remain fair to all stakeholders in our client organization which also helps the case as we are least likely to get influenced by any particular stakeholder unit. Finally, we play a significant role in convincing the C-suite of our clients on the transformation that needs to happen in their Pharmacovigilance function without which there would be no hope for betterment. Thanks to our reputation for integrity and efficiency, we have almost always been asked by such clients to continue as their sole or principal Pharmacovigilance Service Provider, thereby validating the triumph of our well-structured&nbsp;hybrid model&nbsp;of Pharmacovigilance offerings.</p><p><br></p><p>To conclude, let me take the help of the legendary Lebanese-American writer, poet and visual artist&nbsp;Kahlil Gibran. As he says at the end of his famous poem titled ‘Fear‘, the verses “The river needs to take the risk of entering the ocean because only then will fear disappear; because that’s where the river will know it’s not about disappearing into the ocean, but of becoming the ocean“, appear to be so relevant to a fast-growing multinational pharma/biotech/healthcare company that aspires to integrate and harmonize its Pharmacovigilance systems under a single umbrella. Needless to say, every such ocean that we see in the industry today was once a river that was afraid of disappearing into the ocean! At Oviya MedSafe, we take nothing but immense pride in allaying these fears of tomorrow’s oceans.</p>','2025-01-09 16:36:18',1),(19,1,'Oviya MedSafe – Fortifying QPPV offices with Pharmacovigilance Finesse','Finesse','2025-01-10','1736450392937.png','<p>Dear Well-wishers,</p><p>I am pleased to meet you through this March 2023 edition of&nbsp;Oviya MedSafe‘s newsletter (the&nbsp;124th&nbsp;in the series since April 2012) in which I intend to outline some practical challenges faced by fast-growing multinational pharma/biotech/healthcare companies when they begin to constitute an integrated global Pharmacovigilance system aimed at attaining total regulatory compliance involving all their markets and covering all their products. Obviously, I also am zealous of telling you how Oviya MedSafe as their global Pharmacovigilance Service Provider helped them overcome such challenges effectively.</p><p><br></p><p>If we trace the natural history of a typical generic company, we commonly note that Pharmacovigilance used to be considered an upfront investment only when the company planned to place its marketed products for sale in developed countries. Later, some developing countries brought about minimal Pharmacovigilance requirements but the implementation was not that stringent. Underdeveloped countries were yet to make their presence felt on the global Pharmacovigilance map. However, with time, the&nbsp;continuous upward mobility of drug regulations&nbsp;across the globe has now made Pharmacovigilance relevant in almost all markets today albeit with varying intensities. As a result, multiple Pharmacovigilance systems existing within the same organization has become unavoidable.</p><p><br></p><p>To start with, the&nbsp;prototype&nbsp;for the integrated global Pharmacovigilance system must be determined. Unlike a Pharmacovigilance-naive organization in which it is actually easier to build a Pharmacovigilance system from scratch, an organization that already has several affiliates in different geographies with varying levels of regulatory expectations pertaining to Pharmacovigilance will find it difficult to identify the&nbsp;primary system&nbsp;into which all the&nbsp;secondary systems&nbsp;need to merge in order to form a single comprehensive system that retains the most advantageous characteristics of all the systems. The ideal candidate for the prototype would be the most demanding as well as the most inclusive system, upon which the specific compliance needs of individual affiliates could be built. Considering that each affiliate would have been complying with the local regulations in their own way and to the extent of their choice until then, the very mention of&nbsp;integration&nbsp;may often cause apprehension in the minds of the key personnel. But, it is to be remembered that the purpose of integration is&nbsp;progress&nbsp;and does not mean loss of freedom. In fact, it couples freedom with accountability, and ensures productivity.</p><p><br></p><p>After identifying the prototype, the organization has to set up a&nbsp;task force&nbsp;to study the best practices of each Pharmacovigilance system which include thorough review of the written procedures, Pharmacovigilance agreements with partners, measures in place for collection of safety data from all sources, documentation on Pharmacovigilance activities carried out in-house versus activities outsourced to service providers, stored source documents, audit &amp; inspection reports, status of CAPAs, Pharmacovigilance software databases used, any automation efforts taken that could impact Patient Safety, all communication with regulatory authorities, important internal documents like Minutes of Meetings, escalation mechanisms and so on. The organization should identify a Global Head for Pharmacovigilance who shall lead the task force which would consist of the Pharmacovigilance Heads of all the affiliates. In case the organization already has presence in markets with highly evolved regulations such as the EU or the UK, the concerned QPPVs shall also play key roles in the task force. The Corporate Quality Assurance department should also have representation in the task force. Essentially, this means that the outcome should be the establishment of a global Pharmacovigilance hierarchy with the mandate of making the integrated organization much more compliant than its individual constituents were ever before. Unfortunately, it is not easy for all organizations to achieve this harmony by themselves and that is where Oviya MedSafe is here to help&nbsp;</p><p><br></p><p>Oviya MedSafe, as a premier&nbsp;boutique consultancy firm&nbsp;in Pharmacovigilance, has rich experience not only in creating Pharmacovigilance systems for our smaller clients but also in bridging the gaps in the Pharmacovigilance frameworks of our larger clients. Oviya MedSafe possesses a&nbsp;success formula&nbsp;for constituting the task force as stated above and driving it on behalf of our clients to ensure that its purpose is fulfilled, a feat that has been perfected by our practice over a decade’s time. We understand that each client is unique and that drives us to engage in deep discussions with all stakeholders of Pharmacovigilance at our client’s and come out with a customized plan to streamline the client’s global Pharmacovigilance system. As an interested but independent third party, we then proceed to execute the plan on behalf of our client, never once missing the larger picture. We take care to maintain the&nbsp;arm’s length&nbsp;distance so that we remain fair to all stakeholders in our client organization which also helps the case as we are least likely to get influenced by any particular stakeholder unit. Finally, we play a significant role in convincing the C-suite of our clients on the transformation that needs to happen in their Pharmacovigilance function without which there would be no hope for betterment. Thanks to our reputation for integrity and efficiency, we have almost always been asked by such clients to continue as their sole or principal Pharmacovigilance Service Provider, thereby validating the triumph of our well-structured&nbsp;hybrid model&nbsp;of Pharmacovigilance offerings.</p><p><br></p><p>To conclude, let me take the help of the legendary Lebanese-American writer, poet and visual artist&nbsp;Kahlil Gibran. As he says at the end of his famous poem titled ‘Fear‘, the verses “The river needs to take the risk of entering the ocean because only then will fear disappear; because that’s where the river will know it’s not about disappearing into the ocean, but of becoming the ocean“, appear to be so relevant to a fast-growing multinational pharma/biotech/healthcare company that aspires to integrate and harmonize its Pharmacovigilance systems under a single umbrella. Needless to say, every such ocean that we see in the industry today was once a river that was afraid of disappearing into the ocean! At Oviya MedSafe, we take nothing but immense pride in allaying these fears of tomorrow’s oceans.</p>','2025-01-09 19:19:52',1),(20,1,'Oviya MedSafe – Instantly Integrated Pharmacovigilance Protection','Protection','2021-07-10','1736450516237.png','<p>Dear Well-wishers,</p><p>Much more than ever before, I am delighted to greet you through this February 2023 edition of&nbsp;Oviya MedSafe‘s newsletter (the&nbsp;123rd&nbsp;in the series since April 2012) that is being released soon after the&nbsp;11th anniversary&nbsp;of Oviya MedSafe’s founding (on 14th March)! On this occasion, let me thank each one of you for your goodwill for Oviya MedSafe which has always encouraged us to work hard to raise and establish Oviya MedSafe as one of the leading global brands in Pharmacovigilance that it is today!</p><p><br></p><p>At this juncture, I wanted to touch upon a topic that has always been close to my heart and elaborate a bit on how Oviya MedSafe has approached it all the time. I prefer to call it ‘Pharmacovigilance Equilibrium‘. As you know, the word equilibrium could be&nbsp;defined&nbsp;as “a state of balance between opposing forces or actions”. Pharmacovigilance, by its very nature as an&nbsp;inexact science, is often subject to opposing forces or actions. In fact, the concept of benefit-risk balance itself stems from the desire to achieve equilibrium in the context of usage of medicinal products. While benefit-risk balance is a vast subject encompassing several fields, I wish to now focus on one specific aspect of equilibrium from a Pharmacovigilance operations’ standpoint.</p><p>When we carry out Pharmacovigilance activities in the industry with the aim of achieving regulatory compliance, we occasionally come across questions that have more than one reasonable answer. At times, none of these answers could be accurate or adequate. Sometimes, a solution that addresses one part of a problem may end up jeopardizing another. We all know that the relevant regulatory rules, widely accepted Pharmacovigilance guidelines, written procedures of the company (license-holder), contractual agreements between Pharmacovigilance stakeholders, and several such documents are used in the industry to establish a robust Pharmacovigilance system but unfortunately ambiguity is something that can never be eradicated in life sciences.</p><p><br></p><p>Now, coming to the logical questions: How does Oviya MedSafe manage such scenarios? How are we able to tread a clear path amidst all the confusion?</p><p>Right from Day One of Oviya MedSafe, we made it a point to jot down gray areas which seemed to be unaddressed by any of the known norms that govern industry Pharmacovigilance activities. We then periodically evaluated these gray areas against prevalent global industry working practices and from them, derived our own conservative interpretations for each such situation, which in turn were documented as ‘Oviya MedSafe Conventions‘, with specific sections for each scenario. These conventions were then added to our version-controlled list of proprietary procedural documents and our entire team has since then been trained on these conventions which are mandated to be updated whenever a business need emerges. Thanks to such conventions, we have been able to reduce bias to the highest extent possible and adopt a homogenous approach in handling such situations, much to our clients’ benefit. If you are a potential client and would like to receive more information from Oviya MedSafe in this regard, please do not hesitate to reach out to us.</p><p><br></p><p>Moving on, I am glad to share with you that a&nbsp;Letter to the Editor&nbsp;I wrote to the&nbsp;Journal of Pharmacovigilance and Drug Safety&nbsp;(an official publication of the&nbsp;Society of Pharmacovigilance, India) thanking them for naming Oviya MedSafe in the list of organizations that significantly contributed to the evolution of Pharmacovigilance in India has been published recently. That this mention of Oviya MedSafe was mainly in the context of the usefulness of Oviya MedSafe’s newsletters in enhancing awareness of Pharmacovigilance in India, makes this news worth sharing. I take this opportunity to thank the editor once again.</p><p>Before closing this newsletter edition, I am pleased to show you some&nbsp;snaps clicked&nbsp;at the 16th Annual Conference of the Indian Society for Clinical Research (ISCR) held between 23rd &amp; 25th February 2023, in which I moderated the panel discussion ‘Innovation as a Way of Life in Pharmacovigilance‘. It was wonderful meeting some of you there.</p>','2025-01-09 19:21:56',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_category`
--

DROP TABLE IF EXISTS `news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_category`
--

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` VALUES (1,'newsletter'),(2,'announcement'),(3,'articles'),(4,'others');
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oviya_form`
--

DROP TABLE IF EXISTS `oviya_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oviya_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  `message` text,
  `form_id` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  CONSTRAINT `oviya_form_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `form_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oviya_form`
--

LOCK TABLES `oviya_form` WRITE;
/*!40000 ALTER TABLE `oviya_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `oviya_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'sales');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-10 13:46:40

CREATE TABLE `dish` (
  `IDDish` int NOT NULL AUTO_INCREMENT,
  `_id` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` text,
  `Price` decimal(5,2) DEFAULT NULL,
  `Category` text,
  `Availability` text,
  `WaitTimeMinutes` int DEFAULT NULL,
  `SoldOut` int DEFAULT NULL,
  `Rating` decimal(2,1) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Changed` datetime DEFAULT NULL,
  PRIMARY KEY (`IDDish`),
  UNIQUE KEY `IDDish_UNIQUE` (`IDDish`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (1,'15jATH9zpKzcxhojaE6nka6faArws8JvR5','Wine - Vovray Sec Domaine Huet','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',250.45,'Super Menu','Weekend',73,0,4.8,'2022-07-11 14:55:18','2021-09-22 00:54:44');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (4,'1JEeQ9yRDYeaVFk5jLa9reA4M9EhKxp1iB','Oil - Olive, Extra Virgin2','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.test',412.44,'Luncheon Menu','Brekfast',93,1,4.2,'2022-04-11 08:51:28','2022-09-18 16:00:54');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (7,'13uPE1JpQptZUk7tgDD4uNMbYhSKRzqRYd','Mussels - Cultivated','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',273.66,'Afternoon and High Tea Menu','Dinner',73,1,1.5,'2022-06-21 00:16:01','2022-02-16 02:35:51');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (8,'16e8LtbAuwTxQQBpuJwRqzQs7nRLnYoZpd','Sauce - Ranch Dressing','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',239.97,'Luncheon Menu','Brekfast',7,0,3.8,'2021-11-02 05:16:34','2022-03-15 09:44:50');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (9,'19fFMHa2s219R678Wohqxm68hbu9ZbyRTP','Quail - Whole, Bone - In','Sed ante. Vivamus tortor. Duis mattis egestas metus.',300.65,'Dinner Menu','Lunch',3,0,1.1,'2022-04-29 22:55:49','2022-09-09 11:39:38');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (10,'1BweokJU5z5nYCq7WWtDYaoQhMnbfytQGe','Garam Marsala','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',415.14,'Brunch Menu','Lunch',73,0,4.0,'2022-02-25 14:05:55','2022-08-23 11:36:51');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (11,'1AfbgufRrEVhiiguBikWqYjeL7GqN9ztJu','Soup - Canadian Pea, Dry Mix','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',244.41,'Super Menu','Weekend',42,0,4.3,'2022-04-22 00:47:00','2021-09-26 18:28:05');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (12,'1LKNNepmaYn73poV32UTHN2qsxkGBdFRn8','Scotch - Queen Anne','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',323.06,'Breakfast Menu','Lunch',63,1,3.5,'2021-12-15 19:19:44','2022-08-13 21:42:29');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (13,'14mQ9Sq28YAVctXiE8RA6i3aua4wU48o2u','Ice Cream Bar - Oreo Cone','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',34.53,'Super Menu','Weekend',89,1,3.8,'2022-04-21 08:36:18','2022-09-15 21:22:59');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (14,'1GhvpgREm8p75ey4MwPs49PMzifiXYymAi','Wine - Casablanca Valley','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',294.13,'Afternoon and High Tea Menu','Dinner',83,1,4.5,'2022-01-17 17:24:36','2021-09-21 17:34:12');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (15,'1MB4XYch5pjgzuT5f9F1qxUuoD9mFLor5i','Jam - Apricot','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',406.75,'Brunch Menu','Lunch',80,0,1.5,'2021-10-09 16:55:02','2022-03-06 07:20:19');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (16,'1CysF4oabF27kVGQcLtZCeQixb9MPpV8Dt','Mushroom - Porcini, Dry','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',392.80,'Luncheon Menu','Brekfast',85,0,3.5,'2021-12-19 12:43:13','2022-01-18 08:54:20');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (17,'1CZcnbMtrSCxjxTcHJB95ZCk7VDefh8WXk','Croissant, Raw - Mini','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',112.65,'Super Menu','Weekend',27,1,2.6,'2022-07-07 11:19:09','2022-03-06 23:26:49');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (18,'1CVxvBgSGi5aogGdK5YdYtKUb4Ty6bYjqG','Icecream - Dstk Cml And Fdg','Fusce consequat. Nulla nisl. Nunc nisl.',459.83,'Breakfast Menu','Lunch',19,1,3.1,'2022-01-25 15:01:00','2021-12-18 03:18:04');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (19,'113XmFYKYuUkeyd3YRknVhe6zgYsEZ9gGi','Lemon Grass','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',176.93,'Super Menu','Weekend',19,1,3.4,'2021-09-29 03:49:47','2021-10-12 07:36:57');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (20,'1Lx5XBh5friaBZjQv1uaDs1B7L2dY3SVqZ','Seedlings - Mix, Organic','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',408.03,'Brunch Menu','Lunch',25,1,4.9,'2021-12-12 05:23:14','2022-06-06 15:43:53');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (21,'1GbWLKF1cPMWoQmLrXBocm5WKrng4cXCMA','Sugar - Icing','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',191.22,'Afternoon and High Tea Menu','Dinner',79,1,2.1,'2022-05-22 06:24:09','2021-11-30 15:24:16');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (22,'13MEnC88yo2rK7JgfLYVty4P98xYULr3vG','Beef - Bones, Cut - Up','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',255.12,'Room Service Menu','Weekday',2,1,3.9,'2021-10-02 02:36:59','2022-01-03 01:16:59');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (23,'1PF3HEQoRwH55HB1eoMZK5NGNBCCXacyfF','Beer - Blue','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',242.88,'Super Menu','Weekend',6,0,1.3,'2021-12-04 06:31:48','2021-12-22 20:01:42');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (24,'15RT7wyRKB2keNTzVB9WzmqsHtRwYPAUvS','Bread - Sour Batard','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',62.50,'Breakfast Menu','Lunch',58,1,2.5,'2022-03-11 15:40:06','2021-11-17 23:57:58');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (25,'1Lhw72yxxzjgRMz2aDdLiPCfysxXhDcPFj','Tequila - Sauza Silver','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',485.53,'Brunch Menu','Lunch',56,1,3.1,'2022-07-19 20:52:35','2022-07-09 03:15:13');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (26,'1Kzd7xPt2iNv1F6sv6Zmu2453YUE3JjYxF','Clam - Cherrystone','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',3.66,'Room Service Menu','Weekday',25,1,4.8,'2022-04-14 05:55:21','2022-05-10 01:09:50');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (27,'15wjbRFCHjd8Cdwcw7qhr7HhCjUBQkN7c3','Catfish - Fillets','Phasellus in felis. Donec semper sapien a libero. Nam dui.',247.31,'Dinner Menu','Lunch',47,1,1.4,'2022-03-07 23:40:09','2022-02-10 04:14:37');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (28,'1G8hKBQoQPqQqKW3JPJvboCUMqNK3AbtQJ','Cheese - Havarti, Roasted Garlic','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',40.60,'Afternoon and High Tea Menu','Dinner',69,0,4.6,'2021-11-25 16:04:10','2021-12-09 13:00:08');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (29,'16fYH8GWPv7LmupwxEMAreQztSWqgNSYoy','Alize Sunset','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',29.24,'Super Menu','Weekend',26,1,4.4,'2022-06-18 13:01:06','2022-08-11 02:08:29');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (30,'1PQe2utuJyJbNDhQf46GxP4EbHLDQb2ZeA','Milk - 2% 250 Ml','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',213.21,'Breakfast Menu','Lunch',31,1,4.7,'2022-05-27 00:00:31','2022-09-13 17:39:51');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (31,'1GoR1DdUuyLVuKWa2mdr6LL1wWhNduSGtf','Sauce - Vodka Blush','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.',135.76,'Super Menu','Weekend',68,1,4.7,'2022-06-01 15:25:44','2022-03-16 13:21:37');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (32,'1M4SCNFaTRdb7VuF3VtioZ6HDud9aRPQwt','Bar Mix - Lime','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',152.45,'Luncheon Menu','Brekfast',68,0,4.9,'2022-02-23 07:04:12','2022-06-07 17:46:43');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (33,'1CdFsD6dN7fdcNjAdjfWZ4bsdgvPNt7Gua','Everfresh Products','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',94.91,'Dinner Menu','Lunch',39,1,3.7,'2021-11-15 12:43:13','2022-04-10 00:36:53');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (34,'16ZioTexPCnazA74bDpB6D8pkssxPf3tNh','Bread - Pita, Mini','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',219.51,'Room Service Menu','Weekday',61,1,2.3,'2021-11-17 02:37:34','2021-11-04 01:57:47');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (35,'1abDXMdqJQ624yaPPtt9RnCa5aaLXfmw6','Ham - Cooked','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',298.60,'Afternoon and High Tea Menu','Dinner',52,0,4.3,'2022-07-19 06:20:28','2022-06-03 13:43:24');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (36,'19kqBDRRWPcardtCH75GfTFKySwCoELXN4','Anisette - Mcguiness','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',215.32,'Breakfast Menu','Lunch',55,0,3.2,'2022-02-12 17:35:28','2022-08-19 04:15:36');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (37,'15raTU2bHfDUKuhydbk2MUuhBJMz6rFk4t','Nut - Walnut, Pieces','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',261.78,'Super Menu','Weekend',86,0,2.9,'2021-10-16 07:50:15','2022-06-24 15:22:35');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (38,'13yrRNBnvSZ6bNJd2YuuUVhrVqBoxxtKHp','Lighter - Bbq','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',325.91,'Room Service Menu','Weekday',37,0,4.4,'2022-08-05 06:44:44','2021-10-06 04:57:18');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (39,'18aABW7vQ85HvBGaCn6x6DRMbUvbQEg6xJ','Butter Balls Salted','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',99.84,'Dinner Menu','Lunch',39,0,3.6,'2021-10-27 09:28:51','2022-01-26 11:43:47');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (40,'19dUeSxUP3qpZQymHYV44jFe3eJ8pBn7Hf','Coconut - Creamed, Pure','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',211.12,'Brunch Menu','Lunch',44,1,1.2,'2021-11-12 12:24:15','2022-04-28 16:17:43');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (41,'1WqMnroykUaXhrkXKH9EuJbLtVewfLBM6','Vinegar - Raspberry','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',276.09,'Super Menu','Weekend',90,0,1.7,'2022-06-20 06:07:46','2022-05-29 16:59:12');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (42,'1LS9E8WKwsfR96pDNFP8d6QHWGzX3MpHLp','Fiddlehead - Frozen','In congue. Etiam justo. Etiam pretium iaculis justo.',323.38,'Afternoon and High Tea Menu','Dinner',95,0,2.2,'2021-11-14 22:31:58','2022-02-20 15:24:15');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (43,'1P4x7b2YHe5ZhkrAJdX5bjEuVsHKHdvwMm','Rabbit - Legs','In congue. Etiam justo. Etiam pretium iaculis justo.',223.86,'Super Menu','Weekend',29,1,2.7,'2022-06-16 11:37:22','2021-12-15 15:30:09');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (44,'1Nzo1sVh8W9Xr7a1r8zQWaWHskdVDoJ9Y8','Honey - Lavender','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',59.76,'Luncheon Menu','Brekfast',7,1,1.3,'2022-02-05 23:32:57','2022-06-20 09:57:59');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (45,'139WCc6RpRiU9d9FDhPLTMuCqfYmtSUcRL','Wine - Rosso Toscano Igt','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',99.37,'Brunch Menu','Lunch',64,0,4.0,'2022-08-20 22:10:40','2022-07-06 03:00:14');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (46,'1LboqUYJQqfZBDSyzSvGLmxDx3bTzcCtgu','Squid - Breaded','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',7.64,'Room Service Menu','Weekday',72,1,3.1,'2022-06-29 19:59:04','2021-11-06 00:44:54');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (47,'1ALBcaix7UrDCHtmLcUyRfqYMjApUgjyaD','C - Plus, Orange','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',258.09,'Super Menu','Weekend',48,1,2.9,'2022-04-24 15:58:21','2022-09-06 20:43:59');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (48,'1EywoKGLRBESXAp1r3iqrGzWQZiVJgeoLL','Nantucket - Kiwi Berry Cktl.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',286.31,'Breakfast Menu','Lunch',51,1,1.3,'2022-07-25 19:11:43','2022-07-15 15:40:01');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (49,'1CeazV5V9J9NtVkauAQKo2q5jdej5CatYr','Cake Sheet Combo Party Pack','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',124.19,'Afternoon and High Tea Menu','Dinner',60,0,2.2,'2021-12-22 05:58:50','2022-03-30 16:00:48');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (50,'17ud4CTbxb6m4yq57WkZRSZzVw4oVSFR2U','Veal - Sweetbread','Fusce consequat. Nulla nisl. Nunc nisl.',196.70,'Brunch Menu','Lunch',46,1,4.8,'2022-07-15 16:45:29','2022-08-02 09:08:36');
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (51,'76bb898b-0c73-4399-b18b-b59dc26d9f2f','test','test3',44.30,'Super Menu','Weekend',23,1,NULL,'2022-09-17 19:18:09',NULL);
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (52,'e2ef7658-4338-428a-a6b8-46e804761959','sa','as',3.00,'Super Menu','Weekend',2,0,NULL,'2022-09-18 13:40:24',NULL);
INSERT INTO `dish` (`IDDish`,`_id`,`Name`,`Description`,`Price`,`Category`,`Availability`,`WaitTimeMinutes`,`SoldOut`,`Rating`,`Created`,`Changed`) VALUES (101,'081cad25-5c45-4634-ade1-0a03c744226f','test','test2',34.00,'Luncheon Menu','Dinner',45,1,NULL,'2022-09-18 16:21:31',NULL);

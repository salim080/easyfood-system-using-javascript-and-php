-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2022 at 03:59 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyfood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2022-03-20 09:36:18'),
(9, 'admin1', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', 'QFE6ZM', '2022-04-24 09:44:11'),
(10, 'admin2', 'b4b8daf4b8ea9d39568719e1e320076f', 'admin@gmail.com', 'QX5ZMN', '2022-05-24 06:09:14'),
(11, 'mahmuda', '25d55ad283aa400af464c76d713c07ad', 'mahmudaseba@gmail.com', 'QMTZ2J', '2022-06-29 18:33:48'),
(12, 'tayeb083', '25d55ad283aa400af464c76d713c07ad', 'Salimk173007@gmail.com', 'QMTZ2A', '2022-07-05 20:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J'),
(7, 'QMTZ2A');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(18, 52, 'Caprese stuffed chicken', 'A twist on the classic Caprese! Succulent chicken is filled with both fresh and sun dried tomatoes for a flavour packed chicken PLUS melted mozzarella cheese! Cooked in a perfect balsamic reduction, this is the chicken of ', '10.00', '623353652eb53.jpg'),
(19, 52, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', '15.00', '623354625884f.jpg'),
(20, 52, 'Caprese Stuffed Garlic Butter Portobellos', 'Portobello mushrooms stuffed and broiled with garlic butter and fresh mozzarella cheese, grape tomato slices and drizzled with a rich balsamic glaze! Low carb heaven!', '12.00', '623354e713a8b.jpg'),
(21, 52, 'Grilled Lemon Herb Mediterranean Chicken Salad', 'this Grilled Lemon Herb Mediterranean Chicken Salad recipe is as closest to perfect as you can get! Full of Mediterranean flavours: olives, tomatoes, cucumber, avocados, and chicken', '15.00', '6233554fe82f7.jpg'),
(22, 53, 'Creamy Herb Chicken', 'Tender chicken breasts simmered in a flavourful and creamy herb sauce with a hint of garlic', '14.00', '623355ee3f58b.jpg'),
(23, 53, 'Hot Fudge Chocolate Pudding Cake', 'An extremely easy and fast to make! A rich chocolate fudge sauce forms underneath a layer of chocolate cake while baking, by itself!', '19.00', '623356472959e.jpg'),
(25, 54, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', '20.00', '6233588c5a574.jpg'),
(26, 54, 'Quick Soft Cinnamon Rolls', 'Cinnamon rolls with a cream cheese glaze are super fluffy and light with a simple homemade dough, and a quick method to get baking!', '12.00', '623357fbeaca0.jpg'),
(28, 54, 'Creamy Salmon Piccata', 'Move over chicken…. THIS creamy salmon piccata is THE classy yet easy salmon recipe you’ve been waiting for, with a delicious creamy lemon caper sauce!', '14.00', '6235ea1bf30df.jpg'),
(29, 65, 'Chicken Chettinad Curry', 'A fiery curry, Chicken Chettinad is one of the most popular dishes from this region. The tanginess of tomatoes, the sweetness of the onions and cinnamon and the heat from red chillies', '25.00', '6235ee0246746.jpg'),
(30, 65, 'Chettinad Fish Fry', 'Fleshy surmai fillets are marinated and wrapped in an exquisite Chettinad masala paste and then pan fried. These succulent fish fillets are perfect as appetizers', '20.00', '6235ef06179ed.jpg'),
(31, 65, 'Chettinad Egg Curry', 'This chettinad egg curry is a simple egg recipe to prepare and has a myriad of spices mixed with some coconut milk adding to the thick gravy. It is spicy and tangy with the addition of lime', '10.00', '6235f05019c2e.jpg'),
(32, 57, 'Chicken sandwich', ' skinless chicken breast or thigh served between slices of bread, on a bun, or on a roll.', '19.00', '6235f2b6d56d5.jpg'),
(33, 57, ' Uttapam', 'Uttapam are savory pancakes with crispy golden edges and a pillowy soft center topped with veggies. Traditionally served as breakfast in India, wholesome Uttapam also makes for a quick and satiating meal.', '9.00', '6235f4de5db83.jpg'),
(34, 60, 'Chana Masala', 'Chana Masala, also known as Chole Masala, is an authentic North Indian style curry made with white chickpeas, freshly powdered spices, onions, tomatoes and herbs', '19.00', '6235f995db263.jpg'),
(35, 60, 'Besan Ladoo', ' these are round sweet balls made by roasting gram flour and ghee together, and then adding sugar to make a thick pasty dough – that is then formed into delicious, melt-in-your-mouth balls.', '20.00', '6235fa361924b.jpg'),
(37, 60, 'Samosa', 'Flaky and crunchy fried samosa are one of the most popular street food snack in North Indian cuisine. They feature a pastry-like crust but are filled with savory potatoes and peas for a hearty, delicious snack.', '12.00', '6237334522669.jpg'),
(38, 50, 'Dosai', 'Rice and wheat are the top two grains consumed by Indians, with rice topping the list. Indians have taken this humble grain and transformed it into a plethora of sweet and savory dishes unlike any other culture in the worl', '15.00', '62373622e10a6.jpg'),
(39, 50, 'Idly', 'idly is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka.', '18.00', '6237371fe35b2.jpg'),
(40, 50, 'Appam', 'Appam is a type of pancake, originating from South India, made with fermented rice batter and coconut milk', '12.00', '623738575b588.jpg'),
(41, 55, 'Puttu', ' It is a dish made of steamed cylinders of ground rice layered with coconut shavings, sometimes with a sweet or savory filling. Puttu is served hot with sweet side dishes such as palm sugar or banana', '19.00', '62373a897a4c6.jpg'),
(42, 55, 'Pongal', 'The two varieties of pongal are chakarai pongal, which is sweet, and venn pongal, which is made from clarified butter. The word pongal generally refers to spicy venn pongal and is a common breakfast food.', '16.00', '62373c09a4b04.jpg'),
(43, 55, 'Parota', 'Porottas/Parathas are commonly eaten with vegetable kurma/korma, chicken, fish, mutton, or beef curry. They are also served stuffed with vegetables such as potatoes or radish', '10.00', '62373d32d5143.jpg'),
(44, 56, 'Coconut Rice', 'Coconut rice is a dish prepared by soaking white rice in coconut milk or cooking rice with coconut flakes. As both coconut and the rice-plant are commonly found in the tropics all around the world', '15.00', '623746726eaa1.jpg'),
(45, 56, 'Patrode', 'It is made from colocasia leaves (chevu in Tulu, taro, kesuve or arbi) stuffed with gram or rice flour and flavorings such as spices, tamarind, and jaggery (raw sugar).', '10.00', '62374753e63aa.jpg'),
(46, 56, 'Chicken Ishtu', 'Cardamom, cinnamon, and cloves are paired together to bring out a sweet yet aromatic flavor. Potatoes, beans, and carrots are the vegetables of choice here, adding body and varied texture to the overall dish.', '18.00', '623747f111c69.jpg'),
(47, 48, 'Schezwan Fried Rice', 'Indo-Chinese style schezwan fried rice! It’s super easy to make and filled with tender rice, colorful veggies and it’s all stir-fried with a spicy schezwan sauce.', '20.00', '6238960466488.jpg'),
(48, 48, 'Schezwan Noodles', 'Schezwan noodles recipe is made with the spicy schezwan sauce and Hakka Noodles is made with soy sauce. Hakka Noodles is more like your simple stir-fried noodles', '15.00', '623896f62b300.jpg'),
(49, 48, 'Veg Manchurian Recipe', 'Cabbage is usually the leading vegetable in the manchurian balls, with carrots, green beans, bell peppers and even cauliflower added to the mix', '25.00', '623897eb56c5a.jpg'),
(50, 61, 'French Fries', 'French fries, are one of the most popular side dishes in the world. They find accompaniment in dips, mayonnaise, ketchup, and even vinegar.', '10.00', '623899823950b.jpg'),
(51, 61, 'French Toast', 'French toast is a dish made of sliced bread soaked in beaten eggs and typically milk, then pan fried. Alternative names and variants include \"eggy bread\"', '20.00', '62389a4b4634a.jpg'),
(52, 61, 'Winter Chicken', 'chicken fried with beautiful, ripe, cherry tomatoes in a creamy sauce is guaranteed to hit the spot. Add a dollop of pesto for an extra layer of nutty flavours', '25.00', '62389b56305f6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `product_id` float(10,2) NOT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 39, 'in process', 'Dispatching...', '2022-03-17 12:31:14'),
(72, 39, 'closed', 'Order delivered.', '2022-03-17 12:35:00'),
(73, 42, 'closed', 'Order delivered & payment received successfully.', '2022-03-23 13:53:20'),
(74, 47, 'rejected', 'Order Cancelled by User.', '2022-03-23 13:54:08'),
(75, 43, 'in process', 'Expected Delivery: 25th March, Friday ', '2022-03-23 14:07:03'),
(76, 49, 'in process', 'in processing', '2022-04-24 09:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 17, 'Scallion', 'scallion@gmail.com', '49-221-4565 3333', 'scallion.com', '11am', '11pm', 'sun-sat', '36, Neumarkt, Cologne-50667.', '6228c94e35623.jpg', '2022-06-29 19:09:00'),
(49, 19, 'Place to Bee', 'placetobee@gmail.com', '49-221-2449464', 'placetobee.com', '7am', '8pm', 'mon-fri', '50, Neumarkt, Cologne-50667.', '622378e27104d.jpg', '2022-06-29 19:17:49'),
(50, 16, 'Mamalla Bhavan', 'mamallabhavan@gmail.com', ' 0413-4308084', 'mamallabhavan.com', '9am', '9pm', 'mon-fri', '68, Lindenthal, Cologne-50731.', '6228c368568a2.jpg', '2022-06-29 19:19:47'),
(51, 20, 'Martini', 'martini@gmail.com', '3454345654', 'martinifoods.com', '9am', '9pm', 'mon-wed', '80, Lindenthal, Cologne-50731.', '62237aa6bb3fd.jpg', '2022-06-29 19:20:33'),
(52, 12, 'Hudson', 'hudson@gmail.com', '49-221-454345', 'hudson.com', '10am', '9pm', 'mon-fri', '68, Luxembergerstrsse, Cologne-50939.', '62237531bdcef.jpg', '2022-06-29 19:23:45'),
(53, 12, 'Dreaming Tree', 'dreamingtree@gmail.com', ' 8870057753', 'www.dreamingtree.in', '8am', '8pm', 'mon-sat', '70, Luxembergerstrsse, Cologne-50939.', '622370e46b301.jpg', '2022-06-29 19:24:15'),
(54, 12, 'Cafe Koln', 'cafekoln@gmail.com', '49-221-402077', 'www.cafecoln.com', '9am', '10pm', 'mon-sat', '68, Luxembergerstrsse, Cologne-50939.', '628c77a1b585c.jpg', '2022-06-29 19:24:34'),
(55, 16, 'Junior Kuppanna', 'juniorkuppanna@gmail.com', '49-221-28340071', 'www.junior kuppanna.com', '8am', '10pm', '24hr-x7', '68, Barbaraplatze, Cologne-50939.', '622383ab2c8bb.jpg', '2022-06-29 19:25:34'),
(56, 16, 'Hotel Saravana Bhavan', 'www.saravanabhavan@gmail.com', '49-221-2217755', 'www.saravanabhavan.com', '6am', '10pm', 'mon-sat', '68, Barbaraplatze, Cologne-50939.', '622384fa7c59c.jpg', '2022-06-29 19:26:41'),
(57, 14, 'La Belle Vie', 'www.labellevie@gmail.com', '49-221-2233323', 'http://serendipityo.com', '11am', '7pm', 'mon-sat', '80, Kalk, Cologne-50939.', '622386518dd37.jpg', '2022-06-29 19:29:15'),
(59, 19, 'La Pasta World', 'lapastaworld@gmail.com', '49-221-467028', 'www.lapastaworld.com', '6am', '11pm', 'mon-wed', '68, Kalk, Cologne-50939.', '6228c0d753844.jpg', '2022-06-29 19:28:23'),
(60, 15, 'Peshawri', 'peshawri@gmail.com', '49-221-56609670', 'www.peshawri.com', '9am', '10pm', 'mon-fri', '501, Deutz, Cologne-51107.', '6228cecc2c420.jpg', '2022-06-29 19:31:54'),
(61, 18, 'New Banana Cafe & Restaurant', 'bananacafe@gmail.com', '+91 96265 61259', 'https://www.facebook.com/NewBananaCafe', '8am', '8pm', 'mon-fri', '604, Deutz, Cologne-50809.', '6228d04b1c462.jpg', '2022-06-29 19:31:13'),
(65, 13, 'Hotel Kannappa', 'hotelkannappa@gmail.com', '49-221-50056', 'http://www.hotelkannappa.com/', '10am', '9pm', 'mon-fri', '80, Kalk kapel, Cologne-50939.', '622adc5e654b2.jpg', '2022-06-29 19:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'Cafe', '2022-03-05 14:07:48'),
(13, 'Chettinadu', '2022-03-05 14:10:18'),
(14, 'Multicuisine', '2022-03-05 14:10:36'),
(15, 'North-Indian', '2022-03-09 15:39:06'),
(16, 'South-Indian', '2022-03-09 15:38:14'),
(17, 'Chinese', '2022-03-05 14:11:08'),
(18, 'French', '2022-03-05 14:11:22'),
(19, 'Italian', '2022-03-05 14:11:30'),
(20, 'Continental', '2022-03-17 12:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `verification_code` varchar(250) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT '0',
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `verification_code`, `is_verified`, `status`, `date`) VALUES
(45, 'tayeb08', 'tayeb', 'Bin Lokman', 'tayeb@gmail.com', '01677 087634', '2842b190b47b6b1caf0b647d3ad21c5d', 'Chattogram', '', 0, 1, '2022-04-24 09:35:48'),
(47, 'jamesbond', 'james', 'bond', 'jamesbond@gmail.com', '01793 223985', 'e84c55c90d955bf1cfa2d31a1f425383', 'Aman Bazar', '', 0, 1, '2022-05-28 17:51:23'),
(84, 'mahmuda', 'Mahmuda', 'Akter', 'mahmudaseba@gmail.com', '015738273903', 'e10adc3949ba59abbe56e057f20f883e', 'Theresienstrasse,64', 'f8a0ddfdb01181ba0a820dfa1e4b0233', 1, 1, '2022-06-29 18:27:15'),
(89, 'tayeb083', 'Salim', 'khan', 'Salim173007@gmail.com', '01677 095806', 'e10adc3949ba59abbe56e057f20f883e', 'Aman Bazar', 'aa50258d865da169c6561e04cff6fe51', 1, 1, '2022-07-07 00:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(42, 42, 'Creamy Herb Chicken', 1, '499.00', 'closed', '2022-03-23 13:53:20'),
(43, 40, 'Parota', 1, '100.00', 'in process', '2022-03-23 14:07:03'),
(44, 41, 'Chicken Chettinad Curry', 1, '350.00', NULL, '2022-03-23 13:47:01'),
(45, 43, 'Coconut Rice', 1, '150.00', NULL, '2022-03-23 13:47:38'),
(46, 44, 'Schezwan Fried Rice', 1, '200.00', NULL, '2022-03-23 13:51:12'),
(47, 44, 'Schezwan Noodles', 1, '150.00', 'rejected', '2022-03-23 13:54:08'),
(48, 39, 'Winter Chicken', 1, '250.00', NULL, '2022-03-23 13:51:40'),
(49, 45, 'Caprese stuffed chicken', 1, '100.00', 'in process', '2022-04-24 09:46:36'),
(50, 45, 'Caprese Stuffed Garlic Butter Portobellos', 2, '120.00', NULL, '2022-04-24 09:36:59'),
(51, 46, 'Caprese stuffed chicken', 2, '100.00', NULL, '2022-05-24 06:05:17'),
(52, 46, 'Spinach Artichoke Stuffed Chicken', 1, '150.00', NULL, '2022-05-24 06:05:17'),
(69, 82, 'Schezwan Fried Rice', 1, '200.00', NULL, '2022-06-22 16:26:35'),
(71, 82, ' Mushroom Risotto', 1, '180.00', NULL, '2022-06-22 16:40:04'),
(72, 82, 'Margherita Pizza', 1, '120.00', NULL, '2022-06-22 16:40:10'),
(73, 82, ' Mushroom Risotto', 1, '180.00', NULL, '2022-06-22 16:56:18'),
(74, 82, 'Lasagna', 1, '249.00', NULL, '2022-06-22 17:00:54'),
(75, 82, ' Mushroom Risotto', 1, '180.00', NULL, '2022-06-22 17:03:38'),
(76, 82, 'Lasagna', 1, '249.00', NULL, '2022-06-22 17:03:43'),
(77, 82, 'Idly', 1, '180.00', NULL, '2022-06-26 17:31:41'),
(78, 82, 'Dosai', 1, '150.00', NULL, '2022-06-26 17:31:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

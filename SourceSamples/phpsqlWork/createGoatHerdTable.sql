CREATE TABLE `GoatHerd` (
  `id` int DEFAULT NULL,
  `name` text NOT NULL,
  `breed` text NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `weight` float NOT NULL,
  `vaccines` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


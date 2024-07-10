-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/06/2024 às 03:25
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `ano` int(4) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `status` enum('disponivel','reservado') NOT NULL DEFAULT 'disponivel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `ano`, `autor`, `status`) VALUES
(1, 'Dom Quixote', 1605, 'Miguel de Cervantes', 'reservado'),
(2, '1984', 1949, 'George Orwell', 'reservado'),
(3, 'Orgulho e Preconceito', 1813, 'Jane Austen', 'reservado'),
(4, 'O Grande Gatsby', 1925, 'F. Scott Fitzgerald', 'disponivel'),
(5, 'Moby Dick', 1851, 'Herman Melville', 'reservado'),
(6, 'Guerra e Paz', 1869, 'Liev Tolstói', 'disponivel'),
(7, 'Crime e Castigo', 1866, 'Fiódor Dostoiévski', 'disponivel'),
(8, 'O Sol é para Todos', 1960, 'Harper Lee', 'disponivel'),
(9, 'Ulisses', 1922, 'James Joyce', 'disponivel'),
(10, 'A Metamorfose', 1915, 'Franz Kafka', 'reservado'),
(11, 'O Apanhador no Campo de Centeio', 1951, 'J.D. Salinger', 'disponivel'),
(12, 'O Estrangeiro', 1942, 'Albert Camus', 'disponivel'),
(13, 'Cem Anos de Solidão', 1967, 'Gabriel García Márquez', 'disponivel'),
(14, 'O Processo', 1925, 'Franz Kafka', 'disponivel'),
(15, 'Admirável Mundo Novo', 1932, 'Aldous Huxley', 'disponivel'),
(16, 'Jane Eyre', 1847, 'Charlotte Brontë', 'disponivel'),
(17, 'O Senhor dos Anéis', 1954, 'J.R.R. Tolkien', 'disponivel'),
(18, 'A Montanha Mágica', 1924, 'Thomas Mann', 'disponivel'),
(19, 'A Revolução dos Bichos', 1945, 'George Orwell', 'disponivel'),
(20, 'O Morro dos Ventos Uivantes', 1847, 'Emily Brontë', 'disponivel'),
(21, 'A Divina Comédia', 1320, 'Dante Alighieri', 'reservado'),
(22, 'Os Miseráveis', 1862, 'Victor Hugo', 'disponivel'),
(23, 'Lolita', 1955, 'Vladimir Nabokov', 'disponivel'),
(24, 'O Idiota', 1869, 'Fiódor Dostoiévski', 'disponivel'),
(25, 'Madame Bovary', 1857, 'Gustave Flaubert', 'disponivel'),
(26, 'Drácula', 1897, 'Bram Stoker', 'disponivel'),
(27, 'O Pequeno Príncipe', 1943, 'Antoine de Saint-Exupéry', 'disponivel'),
(28, 'Frankenstein', 1818, 'Mary Shelley', 'disponivel'),
(29, 'A Ilha do Tesouro', 1883, 'Robert Louis Stevenson', 'disponivel'),
(30, 'As Aventuras de Huckleberry Finn', 1884, 'Mark Twain', 'disponivel'),
(31, 'O Velho e o Mar', 1952, 'Ernest Hemingway', 'disponivel'),
(32, 'As Vinhas da Ira', 1939, 'John Steinbeck', 'disponivel'),
(33, 'Os Irmãos Karamázov', 1880, 'Fiódor Dostoiévski', 'disponivel'),
(34, 'Grande Sertão: Veredas', 1956, 'João Guimarães Rosa', 'disponivel'),
(35, 'Ensaio sobre a Cegueira', 1995, 'José Saramago', 'disponivel'),
(36, 'Memórias Póstumas de Brás Cubas', 1881, 'Machado de Assis', 'disponivel'),
(37, 'O Nome da Rosa', 1980, 'Umberto Eco', 'disponivel'),
(38, 'Cemitérios de Dragões', 2014, 'Raphael Draccon', 'disponivel'),
(39, 'O Alquimista', 1988, 'Paulo Coelho', 'disponivel'),
(40, 'A Casa dos Espíritos', 1982, 'Isabel Allende', 'disponivel'),
(41, 'O Diário de Anne Frank', 1947, 'Anne Frank', 'disponivel'),
(42, 'Anna Kariênina', 1877, 'Liev Tolstói', 'disponivel'),
(43, 'Os Contos de Canterbury', 1400, 'Geoffrey Chaucer', 'disponivel'),
(44, 'Odisseia', -800, 'Homero', 'disponivel'),
(45, 'Hamlet', 1603, 'William Shakespeare', 'disponivel'),
(46, 'A Ilíada', -750, 'Homero', 'disponivel'),
(47, 'O Conde de Monte Cristo', 1844, 'Alexandre Dumas', 'disponivel'),
(48, 'Vinte Mil Léguas Submarinas', 1870, 'Jules Verne', 'disponivel'),
(49, 'O Jardim Secreto', 1911, 'Frances Hodgson Burnett', 'disponivel'),
(50, 'O Pêndulo de Foucault', 1988, 'Umberto Eco', 'reservado'),
(51, 'A Comuna de Paris', 1871, 'Karl Marx', 'disponivel'),
(52, 'O Capital', 1867, 'Karl Marx', 'disponivel'),
(53, 'A Ideologia Alemã', 1846, 'Karl Marx e Friedrich Engels', 'disponivel'),
(54, 'A Revolução Traída', 1937, 'Leon Trotsky', 'reservado'),
(55, 'História da Revolução Russa', 1930, 'Leon Trotsky', 'disponivel'),
(56, 'O Estado e a Revolução', 1917, 'Vladimir Lenin', 'disponivel'),
(57, 'Imperialismo: Fase Superior do Capitalismo', 1916, 'Vladimir Lenin', 'disponivel'),
(58, 'Reforma ou Revolução?', 1900, 'Rosa Luxemburgo', 'disponivel'),
(59, 'A Acumulação do Capital', 1913, 'Rosa Luxemburgo', 'disponivel'),
(60, 'A Revolução Permanente', 1930, 'Leon Trotsky', 'reservado'),
(61, 'A Questão Judaica', 1843, 'Karl Marx', 'disponivel'),
(62, 'O Que Fazer?', 1902, 'Vladimir Lenin', 'disponivel'),
(63, 'Problemas da Revolução na América Latina', 1965, 'Che Guevara', 'disponivel'),
(64, 'Socialismo e Homem em Cuba', 1965, 'Che Guevara', 'disponivel'),
(65, 'O Que é a Propriedade?', 1840, 'Pierre-Joseph Proudhon', 'disponivel'),
(66, 'Caminho da Servidão', 1944, 'Friedrich Hayek', 'disponivel'),
(67, 'O Homem Revoltado', 1951, 'Albert Camus', 'disponivel'),
(68, 'A Revolução Não Será Televisionada', 1970, 'Gil Scott-Heron', 'disponivel'),
(69, 'Revolução Cultural na China', 1966, 'Han Suyin', 'disponivel'),
(70, 'Dialética do Esclarecimento', 1947, 'Theodor Adorno e Max Horkheimer', 'disponivel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `data_reserva` date NOT NULL,
  `status` enum('disponivel','reservado') NOT NULL DEFAULT 'reservado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reservas`
--

INSERT INTO `reservas` (`id`, `livro_id`, `data_reserva`, `status`) VALUES
(1, 1, '2024-06-20', 'reservado'),
(2, 21, '2024-06-20', 'reservado'),
(3, 2, '2024-06-20', 'reservado'),
(4, 5, '2024-06-20', 'reservado'),
(5, 50, '2024-06-20', 'reservado'),
(6, 3, '2024-06-20', 'reservado'),
(7, 10, '2024-06-20', 'reservado'),
(8, 60, '2024-06-26', 'reservado'),
(9, 62, '2024-06-26', 'reservado'),
(10, 54, '2024-06-27', 'reservado');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_id` (`livro_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `livros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

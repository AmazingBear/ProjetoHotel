-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jul-2021 às 07:24
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `id` int(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`id`, `nome`, `telefone`, `email`, `cpf`) VALUES
(1, 'Vitor', '1212341234', 'vitor@gmail.com', '12345678912'),
(2, 'Junior', '1312341234', 'junior@gmail.com', '12345678910');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbreserva`
--

CREATE TABLE `tbreserva` (
  `id` int(2) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `quarto` int(3) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `pessoas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbreserva`
--

INSERT INTO `tbreserva` (`id`, `cpf`, `quarto`, `telefone`, `pessoas`) VALUES
(1, '12345678912', 112, '1212341234', 3),
(2, '1312341234', 84, '12345678910', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tbreserva`
--
ALTER TABLE `tbreserva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbreserva`
--
ALTER TABLE `tbreserva`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

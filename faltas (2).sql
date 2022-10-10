-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Ago-2022 às 16:11
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `faltas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `tipo_user` enum('ADM','CFC','CHEFE') NOT NULL,
  `comando` enum('1 Pelotao','2 Pelotao') NOT NULL,
  `grupo_comando` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `cpf`, `senha`, `tipo_user`, `comando`, `grupo_comando`) VALUES
(1, 'Pedro Lucas Morato Dantas', '624.735.283-22', '1p2l3m4d', 'CFC', '2 Pelotao', NULL),
(2, 'Carlos Henrique Oliveira', '000.000.000-00', '123456', 'CHEFE', '2 Pelotao', NULL),
(3, 'Felipe Nunes', '000.000.000-00', '12345', 'ADM', '1 Pelotao', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arranchamento`
--

CREATE TABLE `arranchamento` (
  `idRegistroRancho` int(11) NOT NULL,
  `idAtirador` int(11) NOT NULL,
  `registroRancho` varchar(10) DEFAULT NULL,
  `dataRancho` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atirador`
--

CREATE TABLE `atirador` (
  `id_at` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `pelotao` enum('1 Pelotao','2 Pelotao') DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `grupo_comando` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `atirador`
--

INSERT INTO `atirador` (`id_at`, `nome`, `cpf`, `pelotao`, `contato`, `email`, `grupo_comando`) VALUES
(1, 'Alencar', '000.000.00-00', '1 Pelotao', '(88) 9 8888-8888', 'alencar@eb.com.br', NULL),
(34, 'Francisco', '000.000.000-00', '1 Pelotao', '(88)9 8888-8888', 'francisco@eb.mil.br', NULL),
(46, 'J. Santos', '000.000.000-00', '1 Pelotao', '(88)8 8888-8888', 'jsantos@eb.mil.br', NULL),
(51, 'Anderson', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'anderson@eb.mil.br', NULL),
(52, 'Igor', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'igor@eb.mil.br', NULL),
(53, 'Silvino', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'silvino@eb.mil.br', NULL),
(54, 'Lucas', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'lucas@eb.mil.br', NULL),
(55, 'Gonsalves', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'gonsalves@eb.mil.br', NULL),
(56, 'Nadier', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'nadier@eb.mil.br', NULL),
(57, 'Yure', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'yure@eb.mil.br', NULL),
(58, 'Kelvin', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'kelvin@eb.mil.br', NULL),
(59, 'Lourenço', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'lourenco@eb.mil.br', NULL),
(60, 'Klessio', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'klessio@eb.mil.br', NULL),
(61, 'Xavier', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'xavier@eb.mil.br', NULL),
(62, 'Luan', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'luan@eb.mil.br', NULL),
(63, 'Fernandes', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'fernandes@eb.mil.br', NULL),
(64, 'Eustáquio', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'eustaquio@eb.mil.br', NULL),
(65, 'Mikael', '000.000.000-00', '2 Pelotao', '(88)9 8888-8888', 'mikael@eb.mil.br', NULL),
(66, 'Luciano', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'luciano@eb.mil.br', NULL),
(67, 'Albuquerque', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'albuquerque@eb.mil.br', NULL),
(68, 'De Jesus', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'dejesus@eb.mil.br', NULL),
(85, 'Pedro', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'pedro@eb.com.br', '4'),
(86, 'Dantas', '000.000.000-00', '2 Pelotao', '(88)9 8888-8888', 'pedro@eb.mil.br', '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faltas`
--

CREATE TABLE `faltas` (
  `idRegistroFalta` int(11) NOT NULL,
  `idAtirador` int(11) NOT NULL,
  `registroFalta` varchar(10) DEFAULT NULL,
  `dataFalta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faltas`
--

INSERT INTO `faltas` (`idRegistroFalta`, `idAtirador`, `registroFalta`, `dataFalta`) VALUES
(1, 85, 'Sim', '2022-08-01'),
(2, 86, 'Não', '2022-08-01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `arranchamento`
--
ALTER TABLE `arranchamento`
  ADD PRIMARY KEY (`idRegistroRancho`),
  ADD KEY `fk_faltas` (`idAtirador`);

--
-- Índices para tabela `atirador`
--
ALTER TABLE `atirador`
  ADD PRIMARY KEY (`id_at`);

--
-- Índices para tabela `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`idRegistroFalta`),
  ADD KEY `fk_faltas` (`idAtirador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `arranchamento`
--
ALTER TABLE `arranchamento`
  MODIFY `idRegistroRancho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `atirador`
--
ALTER TABLE `atirador`
  MODIFY `id_at` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `faltas`
--
ALTER TABLE `faltas`
  MODIFY `idRegistroFalta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `fk_faltas` FOREIGN KEY (`idAtirador`) REFERENCES `atirador` (`id_at`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

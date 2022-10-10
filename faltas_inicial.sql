-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Out-2022 às 18:22
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
  `tipo_user` enum('ADM','CFC','CHEFE','FORRIEL','RANCHO') NOT NULL,
  `comando` enum('1 Pelotao','2 Pelotao') NOT NULL,
  `grupo_comando` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL,
  `ano_instrucao` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `cpf`, `senha`, `tipo_user`, `comando`, `grupo_comando`, `ano_instrucao`) VALUES
(1, 'Pedro Lucas Morato Dantas', '624.735.283-22', '1p2l3m4d', 'CFC', '2 Pelotao', '4', '2022'),
(2, 'Carlos Henrique Oliveira', '000.000.000-00', '123456', 'CHEFE', '2 Pelotao', NULL, '2022'),
(3, 'Felipe Nunes', '000.000.000-00', '12345', 'ADM', '1 Pelotao', NULL, '2022'),
(5, 'Ferreira', '078.702.933-50', NULL, 'CFC', '1 Pelotao', NULL, '2022'),
(7, 'Luan', '000.000.000-00', '123', 'RANCHO', '2 Pelotao', NULL, '2022'),
(8, 'Yure', '000.000.000-00', NULL, 'RANCHO', '2 Pelotao', NULL, '2022'),
(9, 'Isau', '000.000.000-00', NULL, 'CFC', '1 Pelotao', NULL, '2022'),
(10, 'Nobre', '000.000.000-00', '1234', 'FORRIEL', '2 Pelotao', NULL, '2022');

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

--
-- Extraindo dados da tabela `arranchamento`
--

INSERT INTO `arranchamento` (`idRegistroRancho`, `idAtirador`, `registroRancho`, `dataRancho`) VALUES
(1, 52, 'Sim', '2022-09-28'),
(2, 53, 'Não', '2022-09-28'),
(3, 65, 'Sim', '2022-09-28'),
(4, 66, 'Não', '2022-09-28'),
(5, 67, 'Sim', '2022-09-28'),
(6, 68, 'Não', '2022-09-28'),
(7, 85, 'Sim', '2022-09-28'),
(8, 86, 'Não', '2022-09-28');

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
  `grupo_comando` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL,
  `ano_instrucao` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `atirador`
--

INSERT INTO `atirador` (`id_at`, `nome`, `cpf`, `pelotao`, `contato`, `email`, `grupo_comando`, `ano_instrucao`) VALUES
(1, 'Pedro Lucas Morato Dantas', '624.735.283-22', '1 Pelotao', NULL, NULL, NULL, '2022'),
(34, 'Francisco', '000.000.000-00', '1 Pelotao', '(88)9 8888-8888', 'francisco@eb.mil.br', NULL, '2021'),
(46, 'J. Santos', '000.000.000-00', '1 Pelotao', '(88)8 8888-8888', 'jsantos@eb.mil.br', '5', '2022'),
(51, 'Anderson', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'anderson@eb.mil.br', NULL, '2020'),
(52, 'Igor', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'igor@eb.mil.br', NULL, '2022'),
(53, 'Silvino', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'silvino@eb.mil.br', NULL, '2022'),
(54, 'Lucas', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'lucas@eb.mil.br', NULL, ''),
(55, 'Gonsalves', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'gonsalves@eb.mil.br', NULL, '2021'),
(56, 'Nadier', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'nadier@eb.mil.br', NULL, '2021'),
(57, 'Yure', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'yure@eb.mil.br', NULL, '2021'),
(58, 'Kelvin', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'kelvin@eb.mil.br', NULL, '2020'),
(59, 'Lourenço', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'lourenco@eb.mil.br', NULL, '2020'),
(60, 'Klessio', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'klessio@eb.mil.br', NULL, ''),
(61, 'Xavier', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'xavier@eb.mil.br', NULL, ''),
(62, 'Luan', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'luan@eb.mil.br', NULL, ''),
(63, 'Fernandes', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'fernandes@eb.mil.br', NULL, ''),
(64, 'Eustáquio', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'eustaquio@eb.mil.br', NULL, ''),
(65, 'Mikael', '000.000.000-00', '2 Pelotao', '(88)9 8888-8888', 'mikael@eb.mil.br', '4', '2022'),
(66, 'Luciano', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'luciano@eb.mil.br', '4', '2022'),
(67, 'Albuquerque', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'albuquerque@eb.mil.br', '4', '2022'),
(68, 'De Jesus', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'dejesus@eb.mil.br', '4', '2022'),
(85, 'Pedro', '000.000.000-00', '2 Pelotao', '(88) 9 8888-8888', 'pedro@eb.com.br', '4', '2022'),
(86, 'Dantas', '000.000.000-00', '2 Pelotao', '(88)9 8888-8888', 'pedro@eb.mil.br', '4', '2022');

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
(9, 85, 'Sim', '2022-09-27'),
(10, 86, 'Não', '2022-09-27'),
(11, 85, 'Não', '2022-09-27'),
(12, 86, 'Sim', '2022-09-27'),
(13, 65, 'Não', '2022-09-27'),
(14, 66, 'Sim', '2022-09-27'),
(15, 67, 'Não', '2022-09-27'),
(16, 68, 'Sim', '2022-09-27'),
(17, 85, 'Sim', '2022-09-27'),
(18, 86, 'Não', '2022-09-27');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `arranchamento`
--
ALTER TABLE `arranchamento`
  MODIFY `idRegistroRancho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `atirador`
--
ALTER TABLE `atirador`
  MODIFY `id_at` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `faltas`
--
ALTER TABLE `faltas`
  MODIFY `idRegistroFalta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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

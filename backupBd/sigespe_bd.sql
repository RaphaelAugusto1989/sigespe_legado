-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12-Out-2020 às 00:14
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigespe_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `condicoes_pagamentos`
--

CREATE TABLE `condicoes_pagamentos` (
  `id_condicoes` int(11) NOT NULL,
  `cod_condicoes` varchar(10) NOT NULL,
  `parcelas` varchar(50) NOT NULL,
  `primeira_condicao` int(11) NOT NULL,
  `segunda_condicao` int(11) NOT NULL,
  `terceira_condicao` int(11) NOT NULL,
  `quarta_condicao` int(11) NOT NULL,
  `quinta_condicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `condicoes_pagamentos`
--

INSERT INTO `condicoes_pagamentos` (`id_condicoes`, `cod_condicoes`, `parcelas`, `primeira_condicao`, `segunda_condicao`, `terceira_condicao`, `quarta_condicao`, `quinta_condicao`) VALUES
(4, '01', '', 28, 42, 56, 0, 0),
(5, '02', '', 42, 56, 70, 0, 0),
(6, '03', '', 56, 70, 84, 0, 0),
(7, '04', '', 60, 90, 120, 150, 0),
(8, '05', '', 28, 42, 56, 0, 0),
(9, '06', '', 28, 42, 0, 0, 0),
(10, '07', '', 35, 63, 91, 0, 0),
(11, '08', '', 63, 91, 119, 0, 0),
(12, '09', '', 30, 60, 90, 0, 0),
(13, '10', '', 56, 84, 112, 0, 0),
(14, '11', '', 30, 60, 90, 120, 150),
(15, '12', '', 70, 84, 98, 0, 0),
(16, '13', '', 60, 90, 120, 0, 0),
(17, '14', '', 120, 150, 180, 0, 0),
(18, '15', '', 35, 42, 49, 0, 0),
(19, '16', '', 20, 30, 40, 0, 0),
(20, '17', '', 112, 140, 168, 0, 0),
(21, '18', '', 90, 120, 150, 0, 0),
(22, '19', '', 30, 0, 0, 0, 0),
(23, '20', '', 60, 70, 80, 0, 0),
(25, '22', '', 30, 45, 0, 0, 0),
(26, '23', '', 90, 0, 0, 0, 0),
(27, '24', '', 28, 42, 56, 70, 84),
(29, '25', '', 49, 63, 77, 91, 0),
(30, '26', '', 45, 75, 105, 0, 0),
(31, '27', '', 67, 74, 0, 0, 0),
(32, '28', '', 30, 60, 90, 120, 0),
(33, '29', '', 90, 105, 120, 0, 0),
(34, '30', '', 30, 60, 0, 0, 0),
(35, '31', '', 14, 28, 42, 56, 70),
(36, '32', '', 60, 0, 0, 0, 0),
(37, '33', '', 35, 0, 0, 0, 0),
(38, '34', '', 150, 180, 210, 0, 0),
(39, '35', '', 60, 74, 88, 0, 0),
(40, '36', '', 90, 107, 118, 0, 0),
(41, '37', '', 30, 45, 60, 0, 0),
(42, '38', '', 45, 75, 0, 0, 0),
(43, '39', '', 75, 105, 135, 0, 0),
(44, '40', '', 42, 70, 98, 0, 0),
(45, '41', '', 45, 60, 75, 90, 0),
(46, '42', '', 91, 97, 104, 0, 0),
(47, '43', '', 56, 63, 70, 0, 0),
(48, '44', '', 61, 67, 74, 0, 0),
(49, '45', '', 59, 66, 73, 0, 0),
(50, '46', '', 75, 105, 0, 0, 0),
(51, '47', '', 70, 90, 120, 0, 0),
(52, '48', '', 120, 150, 0, 0, 0),
(53, '49', '', 90, 120, 0, 0, 0),
(54, '50', '', 80, 110, 140, 0, 0),
(55, '51', '', 15, 0, 0, 0, 0),
(56, '52', '', 60, 90, 0, 0, 0),
(57, '53', '', 60, 75, 0, 0, 0),
(58, '54', '', 42, 70, 0, 0, 0),
(59, '55', '', 60, 75, 90, 105, 120),
(60, '56', '', 90, 120, 150, 180, 210),
(61, '57', '', 105, 135, 0, 0, 0),
(62, '58', '', 45, 0, 0, 0, 0),
(63, '59', '', 42, 56, 70, 84, 98),
(64, '60', '', 120, 0, 0, 0, 0),
(65, '61', '', 75, 105, 135, 165, 0),
(66, '62', '', 105, 135, 0, 0, 0),
(67, '63', '', 75, 0, 0, 0, 0),
(68, '64', '', 45, 60, 75, 90, 105),
(69, '65', '', 75, 90, 105, 0, 0),
(70, '66', '', 60, 90, 105, 120, 0),
(71, '67', '', 45, 60, 75, 0, 0),
(72, '68', '', 28, 56, 84, 0, 0),
(73, '90', '', 0, 0, 0, 0, 0),
(74, '69', '', 60, 90, 120, 150, 180),
(75, '70', '', 60, 120, 0, 0, 0),
(76, '71', '', 75, 91, 119, 0, 0),
(77, '72', '', 91, 119, 147, 0, 0),
(78, '73', '', 60, 75, 105, 0, 0),
(79, '74', '', 45, 75, 105, 135, 0),
(80, '75', '', 28, 56, 84, 112, 0),
(81, '76', '', 28, 35, 42, 0, 0),
(82, '77', '', 70, 98, 0, 0, 0),
(83, '78', '', 90, 105, 120, 135, 150),
(84, '79', '', 97, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotas`
--

CREATE TABLE `cotas` (
  `id_cotas` int(10) UNSIGNED NOT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fornecedor` varchar(50) NOT NULL,
  `mes_cota` varchar(10) DEFAULT NULL,
  `ano_cota` varchar(15) DEFAULT NULL,
  `cota_mensal` float DEFAULT NULL,
  `cota_saldo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cotas`
--

INSERT INTO `cotas` (`id_cotas`, `nome_loja`, `fornecedor`, `mes_cota`, `ano_cota`, `cota_mensal`, `cota_saldo`) VALUES
(57, '01 - SPORT CENTER', '', 'Setembro', '2017', 50000, -96725.9),
(109, '01 - SPORT CENTER', '', 'Janeiro', '2019', 100000, -80595),
(110, '01 - SPORT CENTER', '', 'Fevereiro', '2019', 100000, -55399.7),
(111, '01 - SPORT CENTER', '', 'Março', '2019', 100000, -177786),
(120, '02 - PASSAREDO CALÇADOS', '', 'Abril', '2019', 100000, -168373),
(121, '01 - SPORT CENTER', '', 'Maio', '2019', 100000, -148024),
(122, '01 - SPORT CENTER', '', 'Junho', '2019', 100000, -9761.6),
(123, '01 - SPORT CENTER', '', 'Abril', '2019', 100000, -37451.1),
(124, '02 - PASSAREDO CALÇADOS', '', 'Janeiro', '2019', 50000, -9795.54),
(125, '02 - PASSAREDO CALÇADOS', '', 'Fevereiro', '2019', 50000, -9215.98),
(126, '02 - PASSAREDO CALÇADOS', '', 'Março', '2019', 50000, -118007),
(127, '01 - SPORT CENTER', '', 'Janeiro', '2019', 50000, -23526.9),
(128, '01 - SPORT CENTER', '', 'Janeiro', '2019', 50000, -23526.9),
(129, '02 - PASSAREDO CALÇADOS', '', 'Maio', '2019', 50000, -115202),
(130, '02 - PASSAREDO CALÇADOS', '', 'Julho', '2019', 50000, -67602.9),
(131, '02 - PASSAREDO CALÇADOS', '', 'Setembro', '2019', 50000, 7009),
(132, '02 - PASSAREDO CALÇADOS', '', 'Agosto', '2019', 50000, 14449.6),
(133, '02 - PASSAREDO CALÇADOS', '', 'Outubro', '2019', 50000, 17841.2),
(134, '02 - PASSAREDO CALÇADOS', '', 'Novembro', '2019', 50000, 11394.4),
(135, '01 - SPORT CENTER', 'ASICS', 'Novembro', '2019', 50000, 14481.2),
(136, '01 - SPORT CENTER', '', 'Outubro', '2019', 50000, -4381.9),
(137, '01 - SPORT CENTER', '', 'Setembro', '2019', 50000, -88076.2),
(138, '01 - SPORT CENTER', '', 'Agosto', '2019', 50000, -83812.8),
(139, '01 - SPORT CENTER', '', 'Julho', '2019', 50000, -14895.7),
(140, '02 - PASSAREDO CALÇADOS', '', 'Junho', '2019', 50000, 13986),
(141, '01 - SPORT CENTER', '', 'Abril', '2019', 50000, 48964.4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `datas_pag_pedidos`
--

CREATE TABLE `datas_pag_pedidos` (
  `id_datas` int(11) NOT NULL,
  `cod_pedido` varchar(10) DEFAULT NULL,
  `cod_cond_pagamento` varchar(10) DEFAULT NULL,
  `datas_pagamentos` date DEFAULT NULL,
  `valor_do_pedido` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `datas_pag_pedidos`
--

INSERT INTO `datas_pag_pedidos` (`id_datas`, `cod_pedido`, `cod_cond_pagamento`, `datas_pagamentos`, `valor_do_pedido`) VALUES
(20008, '02', '1', '2019-11-12', 727.83),
(20009, '02', '2', '2019-12-10', 727.83),
(20010, '02', '3', '2020-01-07', 727.83),
(20014, '01', '1', '2019-11-12', 1132.15),
(20015, '01', '2', '2019-12-10', 1132.15),
(20016, '01', '3', '2020-01-07', 1132.15),
(20017, '04', '1', '2019-10-29', 949.8),
(20018, '04', '2', '2019-11-26', 949.8),
(20019, '04', '3', '2019-12-24', 949.8),
(20020, '07', '1', '2019-10-31', 673.67),
(20021, '07', '2', '2019-11-30', 673.67),
(20022, '07', '3', '2019-12-30', 673.67),
(20029, '08', '1', '2019-11-16', 6555.42),
(20030, '08', '2', '2019-12-14', 6555.42),
(20031, '08', '3', '2020-01-11', 6555.42),
(20032, '06', '1', '2019-11-16', 794.33),
(20033, '06', '2', '2019-11-30', 794.33),
(20034, '06', '3', '2019-12-14', 794.33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(10) UNSIGNED NOT NULL,
  `cnpj_fornecedor` varchar(18) NOT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `fone_fornecedor` varchar(15) DEFAULT NULL,
  `nome_contato` varchar(100) DEFAULT NULL,
  `email_fornecedor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `cnpj_fornecedor`, `nome_fornecedor`, `fone_fornecedor`, `nome_contato`, `email_fornecedor`) VALUES
(4, '', 'BABOLAT', '', '', ''),
(5, '', 'ADIDAS', '', '', ''),
(6, '', 'NIKE', '', '', ''),
(7, '', 'GUEPARD', '', '', ''),
(8, '', 'PENALTY', '', '', ''),
(9, '', 'CBC', '', '', ''),
(10, '', 'ASICS', '', '', ''),
(11, '', 'OLYMPIKUS', '', '', ''),
(12, '', 'TOPPER', '', '', ''),
(13, '', 'BRAZILINE', '', '', ''),
(14, '', 'IPPON', '', '', ''),
(15, '', 'VOLLO', '', '', ''),
(16, '', 'SPEEDO', '', '', ''),
(17, '', 'UMBRO', '', '', ''),
(18, '', 'MIZUNO', '', '', ''),
(19, '', 'POKER', '', '', ''),
(20, '', 'KIDY', '', '', ''),
(21, '', 'RANDALL', '', '', ''),
(22, '', 'HAVAIANAS', '', '', ''),
(23, '', 'OLYMPIKUS', '', '', ''),
(24, '', 'TRIFIL', '', '', ''),
(25, '', 'TERRA E AGUA', '', '', ''),
(26, '', 'CALPRADO', '', '', ''),
(27, '', 'DISNEY', '', '', ''),
(28, '', 'KOLOSH', '', '', ''),
(29, '', 'INVOICE', '', '', ''),
(30, '', 'ADORA', '', '', ''),
(31, '', 'ANDRAX', '', '', ''),
(32, '', 'ANA FLOR', '', '', ''),
(33, '', 'BLOOMPY', '', '', ''),
(34, '', 'USAFLEX', '', '', ''),
(35, '', 'PICADILLY', '', '', ''),
(36, '', 'FRANCOOP', '', '', ''),
(37, '', 'DI VALENTINI', '', '', ''),
(38, '', 'CALÇ BOTTERO', '', '', ''),
(39, '', 'OCCASION', '', '', ''),
(40, '', 'DIAN PATRIS', '', '', ''),
(41, '', 'FOCAL FLEX', '', '', ''),
(45, '', 'NAUTIKA', '', '', ''),
(46, '', 'SPR', '', '', ''),
(47, '', 'VVT MODA', '', '', ''),
(48, '', 'GRENDENE', '', '', ''),
(49, '', 'CAL PEGADA', '', '', ''),
(50, '', 'VIZZANO', '', '', ''),
(51, '', 'OPANANKEN', '', '', ''),
(52, '', 'BEIRA RIO', '', '', ''),
(53, '', 'DENZEL', '', '', ''),
(54, '', 'CHENSON', '', '', ''),
(55, '', 'LUPO', '', '', ''),
(56, '', 'PEKENO', '', '', ''),
(57, '', 'SCALIBU', '', '', ''),
(58, '', 'AZALEIA', '', '', ''),
(59, '', 'PARISI', '', '', ''),
(60, '', 'CALVEST', '', '', ''),
(61, '', 'ROTA DO POLICIAL', '', '', ''),
(62, '', 'TRILHAS E RUMOS', '', '', ''),
(63, '', 'HIDROLIGHT', '', '', ''),
(64, '', 'BRASILFIT', '', '', ''),
(65, '', 'STADIUM', '', '', ''),
(66, '', 'CENTRO SUL', '', '', ''),
(67, '', 'SCATAMACCHIA', '', '', ''),
(68, '', 'COMFORTFLEX', '', '', ''),
(69, '', 'MC QUEEN', '', '', ''),
(70, '', 'TONNIN', '', '', ''),
(71, '', 'CONVERSE ALL STAR', '', '', ''),
(72, '', 'BRISTELLY AUTOCRATA', '', '', ''),
(73, '', 'VIDONE', '', '', ''),
(74, '', 'RAMARIM', '', '', ''),
(75, '', 'ANATOMICGEL', '', '', ''),
(76, '', 'MKS', '', '', ''),
(77, '', 'ARENA', '', '', ''),
(78, '', 'REDESPORT', '', '', ''),
(79, '', 'PIAZZA', '', '', ''),
(80, '', 'RIFFLE', '', '', ''),
(81, '', 'TRAMONTINA', '', '', ''),
(82, '', 'COCAL', '', '', ''),
(83, '', 'FLET FORM', '', '', ''),
(84, '', 'ADRUN', '', '', ''),
(85, '', 'MOLECA', '', '', ''),
(86, '', 'SANDALO', '', '', ''),
(87, '', 'LINDY', '', '', ''),
(88, '', 'PIPPER', '', '', ''),
(89, '', 'MOLEKINHA', '', '', ''),
(90, '', 'SUA CIA', '', '', ''),
(91, '', 'STUDIO B', '', '', ''),
(92, '', 'LIA LINE', '', '', ''),
(93, '', 'FERRICELLI', '', '', ''),
(94, '', 'DE VERAS', '', '', ''),
(95, '', 'UNIBRAS', '', '', ''),
(96, '', 'KILDARE', '', '', ''),
(97, '', 'GUIMY IND BRINK', '', '', ''),
(98, '', 'CONFORT PLUS', '', '', ''),
(99, '', 'FLORENCA', '', '', ''),
(100, '', 'MARK KIDS', '', '', ''),
(101, '', 'CAL LHOMBRE', '', '', ''),
(102, '', 'ICONE', '', '', ''),
(103, '', 'JGEAN SAPATILHAS', '', '', ''),
(104, '', 'MAGIA DE CRIANCA', '', '', ''),
(105, '', 'LATITTUDE', '', '', ''),
(106, '', 'KANXA', '', '', ''),
(107, '', 'UNDER ARMOUR', '', '', ''),
(108, '', 'VICTORINOX', '', '', ''),
(109, '', 'MOCFLEX', '', '', ''),
(110, '', 'BERTELLI', '', '', ''),
(111, '', 'KARGA', '', '', ''),
(112, '', 'KARGA', '', '', ''),
(113, '', 'CARCARA', '', '', ''),
(114, '', 'FOX BOY', '', '', ''),
(115, '', 'COP SHOP', '', '', ''),
(116, '', 'ZACAVI', '', '', ''),
(117, '', 'GYN COM', '', '', ''),
(118, '', 'CASTELY', '', '', ''),
(119, '', 'CAUDURO', '', '', ''),
(120, '', 'RAINHA', '', '', ''),
(121, '', 'TENSOR', '', '', ''),
(122, '', 'TIPTOE', '', '', ''),
(123, '', 'SAPATOTERAPIA', '', '', ''),
(124, '', 'DIVALESI', '', '', ''),
(125, '', 'JULEV BOLSAS', '', '', ''),
(126, '', 'WEST COAST', '', '', ''),
(127, '', 'PALTERM', '', '', ''),
(128, '', 'JACOMETTI', '', '', ''),
(129, '', 'BELLOBOY', '', '', ''),
(130, '', 'AMARO', '', '', ''),
(131, '', 'FASOLO', '', '', ''),
(132, '', 'FATOR COM', '', '', ''),
(133, '', 'BY AVENTURA', '', '', ''),
(134, '', 'RAYOVAC', '', '', ''),
(135, '', 'VIERGE CONFEC', '', '', ''),
(136, '', 'CLIMBER', '', '', ''),
(137, '', 'NILANDER BOLSAS', '', '', ''),
(138, '', 'SUGARSHOES', '', '', ''),
(139, '', 'KLIN', '', '', ''),
(140, '', 'BONTON', '', '', ''),
(141, '', 'SUPER BOLA', '', '', ''),
(142, '', 'DONIC', '', '', ''),
(143, '', 'DAKOTA', '', '', ''),
(144, '', 'FLORENCA', '', '', ''),
(145, '', 'HATAR BOLSAS', '', '', ''),
(146, '', 'JGEAN', '', '', ''),
(147, '', 'SANTINELLI', '', '', ''),
(148, '', 'KAZAN', '', '', ''),
(149, '', 'TORAH', '', '', ''),
(150, '', 'CAL MALU', '', '', ''),
(151, '', 'SUACIA', '', '', ''),
(152, '', 'PRAIME CAL', '', '', ''),
(153, '', 'DI VALORI', '', '', ''),
(154, '', 'CACA E PESCA', '', '', ''),
(155, '', 'TRINYS', '', '', ''),
(156, '', 'LH ESCOVAS', '', '', ''),
(157, '', 'LOVELY', '', '', ''),
(158, '', 'GTR REP', '', '', ''),
(159, '', 'KIKOS', '', '', ''),
(160, '', 'CRESPAR', '', '', ''),
(161, '', 'EMPRESTIMO FORNECEDOR', '', '', ''),
(162, '', 'NEOPRENE', '', '', ''),
(163, '', 'KIMONO', '', '', ''),
(164, '', 'RANGEL REP', '', '', ''),
(165, '', 'AIR SPORT', '', '', ''),
(166, '', 'DILLY', '', '', ''),
(167, '', 'AVB EQUIPAMENTOS', '', '', ''),
(168, '', 'BRASIL EUIPAMENTOS', '', '', ''),
(169, '', 'COURO CRU', '', '', ''),
(170, '', 'VIERGE CONFEC', '', '', ''),
(171, '', 'JUDOQUI', '', '', ''),
(172, '', 'MYFLAG', '', '', ''),
(173, '', 'RAYON TN INF', '', '', ''),
(174, '', 'MAKENZI', '', '', ''),
(175, '', 'COMPARINI', '', '', ''),
(176, '', 'OLHO VIVO', '', '', ''),
(177, '', 'PUKET', '', '', ''),
(178, '', 'HAPPY LUCK', '', '', ''),
(179, '', 'BACKPLIP', '', '', ''),
(180, '', 'NAOMA', '', '', ''),
(181, '', 'FLY WAlk', '', '', ''),
(182, '', 'DAMARE', '', '', ''),
(183, '', 'DINANZI', '', '', ''),
(184, '', 'DASS', '', '', ''),
(185, '', 'KING BRASIL', '', '', ''),
(186, '', 'KAPPA', '', '', ''),
(187, '', 'WALK WAY', '', '', ''),
(188, '', 'COMBAT', '', '', ''),
(189, '', 'ECHOLIFE', '', '', ''),
(190, '', 'CASA SAO JOAO', '', '', ''),
(191, '', 'ITALIANINHO', '', '', ''),
(192, '', 'DIADORA', '', '', ''),
(193, '', 'DIADORA', '', '', ''),
(194, '', 'TATICAL IMPORTS', '', '', ''),
(195, '', 'XERIFE SPORTS', '', '', ''),
(196, '', 'RAFITTHY', '', '', ''),
(197, '', 'ARTLUX BOLSAS', '', '', ''),
(198, '', 'VARIETA', '', '', ''),
(199, '', 'MALU', '', '', ''),
(200, '', 'MISSISSIPI', '', '', ''),
(201, '', 'CAMPESI', '', '', ''),
(202, '', 'SHOES E SHOES', '', '', ''),
(203, '', 'AUGUSTUS', '', '', ''),
(204, '', 'SEA SUB', '', '', ''),
(205, '', 'GAMO CHUMBO', '', '', ''),
(206, '', 'PASSOS E CARVALHO', '', '', ''),
(207, '', 'COLEMAN', '', '', ''),
(208, '', 'CAL ITAMBE', '', '', ''),
(209, '', 'VIEPPER', '', '', ''),
(210, '', 'TRAPEZIO', '', '', ''),
(211, '', 'CAMISA GAMA', '', '', ''),
(212, '', 'GILOPLASTIC', '', '', ''),
(213, '', 'M MULLER', '', '', ''),
(214, '', 'ADRUM', '', '', ''),
(215, '', 'calven shoe', '', '', ''),
(216, '', 'BOAONDA', '', '', ''),
(217, '', 'DI VITRINE', '', '', ''),
(218, '', 'LATELIER', '', '', ''),
(219, '', 'CYCLEXPRESS', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas`
--

CREATE TABLE `lojas` (
  `id_lojas` int(10) UNSIGNED NOT NULL,
  `cod_loja` varchar(5) DEFAULT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fone_loja` varchar(15) NOT NULL,
  `nome_gerente` varchar(100) DEFAULT NULL,
  `end_loja` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`id_lojas`, `cod_loja`, `nome_loja`, `fone_loja`, `nome_gerente`, `end_loja`) VALUES
(5, '01', 'SPORT CENTER', '(61) 3326-3331', 'VALDEMIR E ROGERIO', 'SDN CONJ A LOJA T19'),
(6, '02', 'PASSAREDO CALÇADOS', '(61) 3326-2782', 'VILMAR E ROCHA', 'SDN CONJ A LOJA T20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `num_pedido` varchar(10) DEFAULT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `valor_pedido` float DEFAULT NULL,
  `qtd_pedido` varchar(10) NOT NULL,
  `data_entrega` date DEFAULT NULL,
  `cod_pag_pedido` varchar(15) DEFAULT NULL,
  `cod_cond_pag` varchar(5) NOT NULL,
  `prazo` varchar(2) NOT NULL,
  `valor_dividido` float NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `num_pedido`, `nome_loja`, `nome_fornecedor`, `valor_pedido`, `qtd_pedido`, `data_entrega`, `cod_pag_pedido`, `cod_cond_pag`, `prazo`, `valor_dividido`, `descricao`) VALUES
(1600, '04', '01 - SPORT CENTER', 'BRAZILINE', 2849.4, '', '2019-10-01', 'aprazo', '68', '3', 949.8, ''),
(1604, '01', '01 - SPORT CENTER', 'PENALTY', 3396.46, '', '2019-10-01', 'aprazo', '40', '3', 1132.15, ''),
(1606, '06', '01 - SPORT CENTER', 'MIZUNO', 2383, '', '2019-10-05', 'aprazo', '02', '3', 794.33, ''),
(1607, '07', '01 - SPORT CENTER', 'VOLLO', 2021, '', '2019-10-01', 'aprazo', '09', '3', 673.67, ''),
(1609, '08', '01 - SPORT CENTER', 'PENALTY', 19666.3, '', '2019-10-05', 'aprazo', '40', '3', 6555.42, ''),
(1610, '02', '01 - SPORT CENTER', 'PENALTY', 2183.48, '', '2019-10-01', 'aprazo', '', '3', 727.83, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(10) UNSIGNED NOT NULL,
  `cod_produto` varchar(11) DEFAULT NULL,
  `fornecedor_produto` varchar(100) NOT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `tipo_produto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `cod_produto`, `fornecedor_produto`, `nome_produto`, `tipo_produto`) VALUES
(2, '01', '', 'BOLA', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nome_usuario` varchar(200) DEFAULT NULL,
  `cpf_usuario` varchar(14) DEFAULT NULL,
  `end_usuario` varchar(500) DEFAULT NULL,
  `fixo_usuario` varchar(14) DEFAULT NULL,
  `cel_usuario` varchar(15) DEFAULT NULL,
  `email_usuario` varchar(100) DEFAULT NULL,
  `tipo_usuario` varchar(13) NOT NULL,
  `login_usuario` varchar(100) DEFAULT NULL,
  `senha_usuario` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `cpf_usuario`, `end_usuario`, `fixo_usuario`, `cel_usuario`, `email_usuario`, `tipo_usuario`, `login_usuario`, `senha_usuario`) VALUES
(3, 'Administrador do Sistema', '000.000.000-00', 'Areal/Águas Claras', '(99) 9999-9999', '(99) 99999-9999', 'raphael.a.a.p@gmail.com', 'Administrador', 'admin', 'administrador01'),
(7, 'Sandra Lessa', '125.586.654-44', '', '', '', 'sandralessal2@gmail.com', 'Administrador', 'sandra', '123456');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  ADD PRIMARY KEY (`id_condicoes`);

--
-- Índices para tabela `cotas`
--
ALTER TABLE `cotas`
  ADD PRIMARY KEY (`id_cotas`);

--
-- Índices para tabela `datas_pag_pedidos`
--
ALTER TABLE `datas_pag_pedidos`
  ADD PRIMARY KEY (`id_datas`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices para tabela `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`id_lojas`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  MODIFY `id_condicoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `cotas`
--
ALTER TABLE `cotas`
  MODIFY `id_cotas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de tabela `datas_pag_pedidos`
--
ALTER TABLE `datas_pag_pedidos`
  MODIFY `id_datas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20035;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de tabela `lojas`
--
ALTER TABLE `lojas`
  MODIFY `id_lojas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

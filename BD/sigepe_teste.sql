-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Out-2016 às 02:03
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigepe`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `condicoes_pagamentos`
--

INSERT INTO `condicoes_pagamentos` (`id_condicoes`, `cod_condicoes`, `parcelas`, `primeira_condicao`, `segunda_condicao`, `terceira_condicao`, `quarta_condicao`, `quinta_condicao`) VALUES
(2, '0001', '3', 30, 60, 90, 0, 0),
(3, '0002', '4', 30, 60, 90, 120, 0),
(4, '0003', '5', 30, 60, 90, 120, 150);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotas`
--

CREATE TABLE `cotas` (
  `id_cotas` int(10) UNSIGNED NOT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fornecedor` varchar(50) NOT NULL,
  `mes_cota` varchar(8) DEFAULT NULL,
  `ano_cota` varchar(15) DEFAULT NULL,
  `cota_mensal` float DEFAULT NULL,
  `cota_saldo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cotas`
--

INSERT INTO `cotas` (`id_cotas`, `nome_loja`, `fornecedor`, `mes_cota`, `ano_cota`, `cota_mensal`, `cota_saldo`) VALUES
(1, '08 - Pirelle', 'raphaels LTDA', 'Outubro', '2016', 10000, 10000),
(2, '03 - Kasa Imóveis', 'Artspeck', 'Outubro', '2016', 15500, -5000),
(3, '04 - Biblioteca', 'raphaels LTDA', 'Novembro', '2016', 15000, -16000),
(4, '06 - Loja do Bebê', 'Artspeck', 'Novembro', '2016', 10000, 10000);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `datas_pag_pedidos`
--

INSERT INTO `datas_pag_pedidos` (`id_datas`, `cod_pedido`, `cod_cond_pagamento`, `datas_pagamentos`, `valor_do_pedido`) VALUES
(1, '0001', '1', '2016-11-16', 516.67),
(2, '0001', '2', '2016-12-16', 516.67),
(3, '0001', '3', '2017-01-15', 516.67),
(4, '0002', '1', '2016-11-23', 1250),
(5, '0002', '2', '2016-12-23', 1250),
(6, '0002', '3', '2017-01-22', 1250),
(7, '0002', '4', '2017-02-21', 1250),
(8, '0003', '1', '2016-10-20', 1354),
(9, '0004', '1', '2016-11-16', 906.4),
(10, '0004', '2', '2016-12-16', 906.4),
(11, '0004', '3', '2017-01-15', 906.4),
(12, '0004', '4', '2017-02-14', 906.4),
(13, '0004', '5', '2017-03-16', 906.4),
(14, '0005', '1', '2016-11-25', 1000),
(15, '0005', '2', '2016-12-25', 1000),
(16, '0005', '3', '2017-01-24', 1000),
(17, '0006', '1', '2016-10-18', 350),
(18, '0007', '1', '2016-11-15', 5000),
(19, '0008', '1', '2016-11-05', 1250),
(20, '0009', '1', '2016-10-25', 1000),
(21, '00010', '1', '2016-11-28', 333.33),
(22, '00010', '2', '2016-12-28', 333.33),
(23, '00010', '3', '2017-01-27', 333.33),
(24, '0010', '1', '2016-10-27', 500),
(25, '0011', '1', '2016-10-27', 500),
(26, '0012', '1', '2016-11-01', 500),
(27, '0013', '1', '2016-11-02', 500),
(28, '0015', '1', '2016-10-27', 15000),
(29, '0016', '1', '2016-11-09', 500),
(30, '0017', '1', '2016-11-03', 9000),
(31, '0018', '1', '2016-11-03', 9000),
(32, '0019', '1', '2016-11-03', 500),
(33, '0020', '1', '2016-11-03', 500),
(34, '0021', '1', '2016-11-10', 500),
(35, '0022', '1', '2016-10-27', 5411.11),
(36, '001', '1', '2016-10-27', 500),
(37, '002', '1', '2016-11-16', 500),
(38, '003', '1', '2016-10-27', 500),
(39, '004', '1', '2016-11-17', 16000),
(40, '005', '1', '2016-10-28', 15000),
(41, '006', '1', '2016-10-31', 5000);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `cnpj_fornecedor`, `nome_fornecedor`, `fone_fornecedor`, `nome_contato`, `email_fornecedor`) VALUES
(1, '', 'Artspeck', '(61) 9278-8607', 'Raphael Augusto Almeida Pereira', 'raphael.a.a.p@gmail.com'),
(2, '', 'raphaels LTDA', '(61) 9927-88607', 'Raphael Augusto Almeida Pereira', 'raphael.a.a.p@gmail.com'),
(3, '99.999.999/9999-99', 'Faustino Churrasqueiro', '(61) 9999-99999', 'José Faustino', 'raphael_krutch@hotmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`id_lojas`, `cod_loja`, `nome_loja`, `fone_loja`, `nome_gerente`, `end_loja`) VALUES
(11, '01', 'Artspeck2', '(61) 9278-8607', 'Diego', 'Quadra QS 07 Rua 216'),
(12, '02', 'Teste', '(61) 9999-9999', 'Ninguem', 'não tem'),
(13, '03', 'Kasa Imóveis', '(61) 6554-2233', 'Sales', 'Ed. Alfa Mix'),
(14, '04', 'Biblioteca', '(61) 3356-9029', 'Leila Barros', 'Universidade Católica de Brasília'),
(15, '05', 'Mercado Ideal', '(61) 8745-6044', 'Não sei', 'Vila Matias'),
(16, '06', 'Loja do Bebê', '(61) 5222-5555', 'Pedro Almeida Pereira Sá', 'Rua 36 Norte - Águas Claras'),
(17, '07', 'Canadá', '(61) 5165-6546', 'tyuytuytut', 'ututuytutut'),
(19, '09', 'Casa Planalto', '(41) 6546-5453', 'çlknçdnsdmnvçsdmn', 'çsdmlnsmdnf,smdnfsdfsdf'),
(20, '08', 'Pirelle', '(61)33839-099', 'Sales', 'Quadra 214 Ed. Alfa Mix'),
(21, '10', 'UBEC', '(61) 3383-9099', 'Miler', '...'),
(22, '11', 'Supermercado Extra', '613) 3569-029', 'Pedro Almeida Pereira Sá', 'Quadra QS 07 Rua 216'),
(26, '12', 'Carrefour', '(61) 9278-8607', 'EMIZAEL DINIZ', 'Quadra QS 07 Rua 216'),
(27, '13', 'Youtube', '(61) 9278-8607', 'EMIZAEL DINIZ', 'Quadra QS 07 Rua 216'),
(28, '14', 'Top Life', '(61) 9278-8607', 'Star Petshop', 'Quadra QS 07 Rua 216'),
(30, '16', 'Canadá Diario', '(61) 9278-8607', 'Raphael Augusto Almeida Pereira', 'Quadra QS 07 Rua 216'),
(31, '20', 'Universidade Católica de Brasília', '(61) 9278-8607', 'teste20', 'Quadra QS 07 Rua 216'),
(32, '21', 'Facebook', '(61) 9278-8607', 'teste21', 'Quadra QS 07 Rua 216');

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
  `prazo` varchar(2) NOT NULL,
  `valor_dividido` float NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `num_pedido`, `nome_loja`, `nome_fornecedor`, `valor_pedido`, `qtd_pedido`, `data_entrega`, `cod_pag_pedido`, `prazo`, `valor_dividido`, `descricao`) VALUES
(1, '001', '03 - Kasa Imóveis', 'Artspeck', 500, '5', '2016-10-27', 'avista', '', 0, 'Teste'),
(2, '002', '04 - Biblioteca', 'raphaels LTDA', 500, '5', '2016-11-16', 'avista', '', 0, 'Teste'),
(3, '003', '03 - Kasa Imóveis', 'Artspeck', 500, '5', '2016-10-27', 'avista', '', 0, 'Teste'),
(4, '004', '04 - Biblioteca', 'raphaels LTDA', 16000, '16', '2016-11-17', 'avista', '', 0, 'Teste'),
(5, '005', '03 - Kasa Imóveis', 'Artspeck', 15000, '5', '2016-10-28', 'avista', '', 0, 'Teste'),
(6, '006', '03 - Kasa Imóveis', 'Artspeck', 5000, '5', '2016-10-31', 'avista', '', 0, 'Teste');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `cod_produto`, `fornecedor_produto`, `nome_produto`, `tipo_produto`) VALUES
(1, '1236', '', 'Tênis Nike', 'Calçado'),
(2, '2254', '', 'Bola de Basquete', 'Esportivo'),
(3, '2354', '', 'Camiseta de time de futebol', 'Vestuario'),
(4, '4523', 'Artspeck', 'Arma de fogo', 'Esportivo'),
(5, '25', 'Artspeck', 'Bola de futebol', 'Esportivo'),
(6, '336', 'Artspeck', 'Oculos', 'Acessorio'),
(7, '3954', 'Artspeck', 'Luva de Goleiro', 'Esportivo'),
(8, '3523', '', 'Lápis', 'Acessorio'),
(12, '36552', 'Artspeck', 'Óculos escuros', 'Acessorio'),
(13, '005', 'raphaels LTDA', 'Tênis Buterrie', 'Calçado'),
(14, '006', 'Artspeck', 'Tênis All Star', 'Calçado'),
(17, '45221', 'Artspeck', 'Oculos', 'Acessorio');

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
  `senha_usuario` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `cpf_usuario`, `end_usuario`, `fixo_usuario`, `cel_usuario`, `email_usuario`, `tipo_usuario`, `login_usuario`, `senha_usuario`) VALUES
(1, 'Raphael Augusto', '023.486.491-52', 'Rua 36 Norte Lote 3350 Bloco i Apto 1205 - Águas Claras/DF', '(61) 3024-1097', '(61) 99278-8607', 'raphael.a.a.p@gmail.com', 'Administrador', 'raphael', '002128'),
(2, 'Sandra', '125.586.654-44', 'QS 07 RUA 216', '(61) 9999-9999', '(61) 99999-9991', 'sandralessal2@gmail.com', 'Comum', 'sandra', 'x854pw'),
(3, 'Administrador do Sistema', '000.000.000-00', 'Rua 36', NULL, NULL, 'contato@artspeck.com.br', 'Administrador', 'administrador', 'admin2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  ADD PRIMARY KEY (`id_condicoes`);

--
-- Indexes for table `cotas`
--
ALTER TABLE `cotas`
  ADD PRIMARY KEY (`id_cotas`);

--
-- Indexes for table `datas_pag_pedidos`
--
ALTER TABLE `datas_pag_pedidos`
  ADD PRIMARY KEY (`id_datas`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Indexes for table `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`id_lojas`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  MODIFY `id_condicoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cotas`
--
ALTER TABLE `cotas`
  MODIFY `id_cotas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `datas_pag_pedidos`
--
ALTER TABLE `datas_pag_pedidos`
  MODIFY `id_datas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lojas`
--
ALTER TABLE `lojas`
  MODIFY `id_lojas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

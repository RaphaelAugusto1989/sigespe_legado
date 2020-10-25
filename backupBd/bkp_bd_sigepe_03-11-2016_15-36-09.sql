
#
# Criação da Tabela : condicoes_pagamentos
#

CREATE TABLE `condicoes_pagamentos` (
  `id_condicoes` int(11) NOT NULL AUTO_INCREMENT,
  `cod_condicoes` varchar(10) NOT NULL,
  `parcelas` varchar(50) NOT NULL,
  `primeira_condicao` int(11) NOT NULL,
  `segunda_condicao` int(11) NOT NULL,
  `terceira_condicao` int(11) NOT NULL,
  `quarta_condicao` int(11) NOT NULL,
  `quinta_condicao` int(11) NOT NULL,
  PRIMARY KEY (`id_condicoes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO condicoes_pagamentos VALUES ( '2', '001', '', '30', '60', '90', '0', '0');

#
# Criação da Tabela : cotas
#

CREATE TABLE `cotas` (
  `id_cotas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fornecedor` varchar(50) NOT NULL,
  `mes_cota` varchar(8) DEFAULT NULL,
  `ano_cota` varchar(15) DEFAULT NULL,
  `cota_mensal` float DEFAULT NULL,
  `cota_saldo` float DEFAULT NULL,
  PRIMARY KEY (`id_cotas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO cotas VALUES ( '1', '001 - Artspeck', 'Raphaels LTDA', 'Novembro', '2016', '5000', '-3300');

#
# Criação da Tabela : datas_pag_pedidos
#

CREATE TABLE `datas_pag_pedidos` (
  `id_datas` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pedido` varchar(10) DEFAULT NULL,
  `cod_cond_pagamento` varchar(10) DEFAULT NULL,
  `datas_pagamentos` date DEFAULT NULL,
  `valor_do_pedido` float DEFAULT NULL,
  PRIMARY KEY (`id_datas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO datas_pag_pedidos VALUES ( '1', '001', '1', '2016-12-10', '1000');
INSERT INTO datas_pag_pedidos VALUES ( '2', '001', '2', '2017-01-09', '1000');
INSERT INTO datas_pag_pedidos VALUES ( '3', '001', '3', '2017-02-08', '1000');
INSERT INTO datas_pag_pedidos VALUES ( '4', '002', '1', '2016-11-09', '300');
INSERT INTO datas_pag_pedidos VALUES ( '5', '003', '1', '2016-12-15', '1666.66');
INSERT INTO datas_pag_pedidos VALUES ( '6', '003', '2', '2017-01-14', '1666.66');
INSERT INTO datas_pag_pedidos VALUES ( '7', '003', '3', '2017-02-13', '1666.66');

#
# Criação da Tabela : fornecedor
#

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnpj_fornecedor` varchar(18) NOT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `fone_fornecedor` varchar(15) DEFAULT NULL,
  `nome_contato` varchar(100) DEFAULT NULL,
  `email_fornecedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO fornecedor VALUES ( '1', '00.000.000/0000-00', 'Raphaels LTDA', '(61) 3356-9029', 'Raphael Augusto', 'raphael.a.a.p@gmail.com');

#
# Criação da Tabela : lojas
#

CREATE TABLE `lojas` (
  `id_lojas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_loja` varchar(5) DEFAULT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fone_loja` varchar(15) NOT NULL,
  `nome_gerente` varchar(100) DEFAULT NULL,
  `end_loja` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_lojas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO lojas VALUES ( '1', '001', 'Artspeck', '(61) 9927-88607', 'Raphael Augusto', 'Rua 36 Norte Lt 3350 Bl i, Norte');
INSERT INTO lojas VALUES ( '2', '002', 'CanadÃ¡', '(00) 0000-00000', 'Dimitri', 'Vancouver');

#
# Criação da Tabela : pedidos
#

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `num_pedido` varchar(10) DEFAULT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `valor_pedido` float DEFAULT NULL,
  `qtd_pedido` varchar(10) NOT NULL,
  `data_entrega` date DEFAULT NULL,
  `cod_pag_pedido` varchar(15) DEFAULT NULL,
  `prazo` varchar(2) NOT NULL,
  `valor_dividido` float NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO pedidos VALUES ( '1', '001', '001 - Artspeck', 'Raphaels LTDA', '3000', '1', '2016-11-10', 'aprazo', '3', '1000', 'ManutenÃ§Ã£o do sistema SIGEPE.');
INSERT INTO pedidos VALUES ( '2', '002', '001 - Artspeck', 'Raphaels LTDA', '300', '3', '2016-11-09', 'avista', '', '0', 'Teste 2');
INSERT INTO pedidos VALUES ( '3', '003', '001 - Artspeck', 'Raphaels LTDA', '5000', '50', '2016-11-15', 'aprazo', '3', '1666.66', 'Teste 3');

#
# Criação da Tabela : produto
#

CREATE TABLE `produto` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` varchar(11) DEFAULT NULL,
  `fornecedor_produto` varchar(100) NOT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `tipo_produto` varchar(20) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO produto VALUES ( '1', '001', 'Raphaels LTDA', 'ManutenÃ§Ã£o Sites', 'PrestaÃ§Ã£o de serviÃ§o');

#
# Criação da Tabela : usuario
#

CREATE TABLE `usuario` (
  `id_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(200) DEFAULT NULL,
  `cpf_usuario` varchar(14) DEFAULT NULL,
  `end_usuario` varchar(500) DEFAULT NULL,
  `fixo_usuario` varchar(14) DEFAULT NULL,
  `cel_usuario` varchar(15) DEFAULT NULL,
  `email_usuario` varchar(100) DEFAULT NULL,
  `tipo_usuario` varchar(13) NOT NULL,
  `login_usuario` varchar(100) DEFAULT NULL,
  `senha_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO usuario VALUES ( '1', 'Raphael Augusto', '023.486.491-52', 'Rua 36 Norte Lote 3350 Bloco i Apto 1205 - ?guas Claras/DF', '(61) 3024-1097', '(61) 99278-8607', 'raphael.a.a.p@gmail.com', 'Administrador', 'raphael', '002128');
INSERT INTO usuario VALUES ( '2', 'Sandra', '125.586.654-44', 'QS 07 RUA 216', '(61) 9999-9999', '(61) 99999-9991', 'sandralessal2@gmail.com', 'Comum', 'sandra', 'x854pw');
INSERT INTO usuario VALUES ( '3', 'Administrador do Sistema', '000.000.000-00', 'Rua 36', '', '', 'contato@artspeck.com.br', 'Administrador', 'administrador', 'admin2016');


#
# CriaÁ„o da Tabela : condicoes_pagamentos
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO condicoes_pagamentos VALUES ( '4', '01', '', '28', '42', '56', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '5', '02', '', '42', '56', '70', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '6', '03', '', '56', '70', '84', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '7', '04', '', '60', '90', '120', '150', '0');
INSERT INTO condicoes_pagamentos VALUES ( '8', '05', '', '28', '42', '56', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '9', '06', '', '28', '42', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '10', '07', '', '35', '63', '91', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '11', '08', '', '63', '91', '119', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '12', '09', '', '30', '60', '90', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '13', '10', '', '56', '84', '112', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '14', '11', '', '30', '60', '90', '120', '150');
INSERT INTO condicoes_pagamentos VALUES ( '15', '12', '', '70', '84', '98', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '16', '13', '', '60', '90', '120', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '17', '14', '', '120', '150', '180', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '18', '15', '', '35', '42', '49', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '19', '16', '', '20', '30', '40', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '20', '17', '', '112', '140', '168', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '21', '18', '', '90', '120', '150', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '22', '19', '', '30', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '23', '20', '', '60', '70', '80', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '25', '22', '', '30', '45', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '26', '23', '', '90', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '27', '24', '', '28', '42', '56', '70', '84');
INSERT INTO condicoes_pagamentos VALUES ( '29', '25', '', '49', '63', '77', '91', '0');
INSERT INTO condicoes_pagamentos VALUES ( '30', '26', '', '45', '75', '105', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '31', '27', '', '67', '74', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '32', '28', '', '30', '60', '90', '120', '0');
INSERT INTO condicoes_pagamentos VALUES ( '33', '29', '', '90', '105', '120', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '34', '30', '', '30', '60', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '35', '31', '', '14', '28', '42', '56', '70');
INSERT INTO condicoes_pagamentos VALUES ( '36', '32', '', '60', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '37', '33', '', '35', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '38', '34', '', '150', '180', '210', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '39', '35', '', '60', '74', '88', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '40', '36', '', '90', '107', '118', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '41', '37', '', '30', '45', '60', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '42', '38', '', '45', '75', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '43', '39', '', '75', '105', '135', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '44', '40', '', '42', '70', '98', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '45', '41', '', '45', '60', '75', '90', '0');
INSERT INTO condicoes_pagamentos VALUES ( '46', '42', '', '91', '97', '104', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '47', '43', '', '56', '63', '70', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '48', '44', '', '61', '67', '74', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '49', '45', '', '59', '66', '73', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '50', '46', '', '75', '105', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '51', '47', '', '70', '90', '120', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '52', '48', '', '120', '150', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '53', '49', '', '90', '120', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '54', '50', '', '80', '110', '140', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '55', '51', '', '15', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '56', '52', '', '60', '90', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '57', '53', '', '60', '75', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '58', '54', '', '42', '70', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '59', '55', '', '60', '75', '90', '105', '120');
INSERT INTO condicoes_pagamentos VALUES ( '60', '56', '', '90', '120', '150', '180', '210');
INSERT INTO condicoes_pagamentos VALUES ( '61', '57', '', '105', '135', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '62', '58', '', '45', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '63', '59', '', '42', '56', '70', '84', '98');
INSERT INTO condicoes_pagamentos VALUES ( '64', '60', '', '120', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '65', '61', '', '75', '105', '135', '165', '0');
INSERT INTO condicoes_pagamentos VALUES ( '66', '62', '', '105', '135', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '67', '63', '', '75', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '68', '64', '', '45', '60', '75', '90', '105');
INSERT INTO condicoes_pagamentos VALUES ( '69', '65', '', '75', '90', '105', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '70', '66', '', '60', '90', '105', '120', '0');
INSERT INTO condicoes_pagamentos VALUES ( '71', '67', '', '45', '60', '75', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '72', '68', '', '28', '56', '84', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '73', '90', '', '0', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '74', '69', '', '60', '90', '120', '150', '180');
INSERT INTO condicoes_pagamentos VALUES ( '75', '70', '', '60', '120', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '76', '71', '', '75', '91', '119', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '77', '72', '', '91', '119', '147', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '78', '73', '', '60', '75', '105', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '79', '74', '', '45', '75', '105', '135', '0');
INSERT INTO condicoes_pagamentos VALUES ( '80', '75', '', '28', '56', '84', '112', '0');
INSERT INTO condicoes_pagamentos VALUES ( '81', '76', '', '28', '35', '42', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '82', '77', '', '70', '98', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '83', '78', '', '90', '105', '120', '135', '150');
INSERT INTO condicoes_pagamentos VALUES ( '84', '79', '', '97', '0', '0', '0', '0');

#
# CriaÁ„o da Tabela : cotas
#

CREATE TABLE `cotas` (
  `id_cotas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fornecedor` varchar(50) NOT NULL,
  `mes_cota` varchar(10) DEFAULT NULL,
  `ano_cota` varchar(15) DEFAULT NULL,
  `cota_mensal` float DEFAULT NULL,
  `cota_saldo` float DEFAULT NULL,
  PRIMARY KEY (`id_cotas`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO cotas VALUES ( '57', '01 - SPORT CENTER', '', 'Setembro', '2017', '50000', '-96725.9');
INSERT INTO cotas VALUES ( '109', '01 - SPORT CENTER', '', 'Janeiro', '2019', '100000', '-80595');
INSERT INTO cotas VALUES ( '110', '01 - SPORT CENTER', '', 'Fevereiro', '2019', '100000', '-55399.7');
INSERT INTO cotas VALUES ( '111', '01 - SPORT CENTER', '', 'Mar√ßo', '2019', '100000', '-177786');
INSERT INTO cotas VALUES ( '120', '02 - PASSAREDO CAL√áADOS', '', 'Abril', '2019', '100000', '-168373');
INSERT INTO cotas VALUES ( '121', '01 - SPORT CENTER', '', 'Maio', '2019', '100000', '-148024');
INSERT INTO cotas VALUES ( '122', '01 - SPORT CENTER', '', 'Junho', '2019', '100000', '-9761.6');
INSERT INTO cotas VALUES ( '123', '01 - SPORT CENTER', '', 'Abril', '2019', '100000', '-37451.1');
INSERT INTO cotas VALUES ( '124', '02 - PASSAREDO CAL√áADOS', '', 'Janeiro', '2019', '50000', '-9795.54');
INSERT INTO cotas VALUES ( '125', '02 - PASSAREDO CAL√áADOS', '', 'Fevereiro', '2019', '50000', '-9215.98');
INSERT INTO cotas VALUES ( '126', '02 - PASSAREDO CAL√áADOS', '', 'Mar√ßo', '2019', '50000', '-118007');
INSERT INTO cotas VALUES ( '127', '01 - SPORT CENTER', '', 'Janeiro', '2019', '50000', '-23526.9');
INSERT INTO cotas VALUES ( '128', '01 - SPORT CENTER', '', 'Janeiro', '2019', '50000', '-23526.9');
INSERT INTO cotas VALUES ( '129', '02 - PASSAREDO CAL√áADOS', '', 'Maio', '2019', '50000', '-115202');
INSERT INTO cotas VALUES ( '130', '02 - PASSAREDO CAL√áADOS', '', 'Julho', '2019', '50000', '-67602.9');
INSERT INTO cotas VALUES ( '131', '02 - PASSAREDO CAL√áADOS', '', 'Setembro', '2019', '50000', '7009');
INSERT INTO cotas VALUES ( '132', '02 - PASSAREDO CAL√áADOS', '', 'Agosto', '2019', '50000', '14449.6');
INSERT INTO cotas VALUES ( '133', '02 - PASSAREDO CAL√áADOS', '', 'Outubro', '2019', '50000', '17841.2');
INSERT INTO cotas VALUES ( '134', '02 - PASSAREDO CAL√áADOS', '', 'Novembro', '2019', '50000', '11394.4');
INSERT INTO cotas VALUES ( '135', '01 - SPORT CENTER', 'ASICS', 'Novembro', '2019', '50000', '14481.2');
INSERT INTO cotas VALUES ( '136', '01 - SPORT CENTER', '', 'Outubro', '2019', '50000', '-4381.9');
INSERT INTO cotas VALUES ( '137', '01 - SPORT CENTER', '', 'Setembro', '2019', '50000', '-88076.2');
INSERT INTO cotas VALUES ( '138', '01 - SPORT CENTER', '', 'Agosto', '2019', '50000', '-83812.8');
INSERT INTO cotas VALUES ( '139', '01 - SPORT CENTER', '', 'Julho', '2019', '50000', '-14895.7');
INSERT INTO cotas VALUES ( '140', '02 - PASSAREDO CAL√áADOS', '', 'Junho', '2019', '50000', '13986');
INSERT INTO cotas VALUES ( '141', '01 - SPORT CENTER', '', 'Abril', '2019', '50000', '48964.4');

#
# CriaÁ„o da Tabela : datas_pag_pedidos
#

CREATE TABLE `datas_pag_pedidos` (
  `id_datas` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pedido` varchar(10) DEFAULT NULL,
  `cod_cond_pagamento` varchar(10) DEFAULT NULL,
  `datas_pagamentos` date DEFAULT NULL,
  `valor_do_pedido` float DEFAULT NULL,
  PRIMARY KEY (`id_datas`)
) ENGINE=InnoDB AUTO_INCREMENT=20035 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO datas_pag_pedidos VALUES ( '20008', '02', '1', '2019-11-12', '727.83');
INSERT INTO datas_pag_pedidos VALUES ( '20009', '02', '2', '2019-12-10', '727.83');
INSERT INTO datas_pag_pedidos VALUES ( '20010', '02', '3', '2020-01-07', '727.83');
INSERT INTO datas_pag_pedidos VALUES ( '20014', '01', '1', '2019-11-12', '1132.15');
INSERT INTO datas_pag_pedidos VALUES ( '20015', '01', '2', '2019-12-10', '1132.15');
INSERT INTO datas_pag_pedidos VALUES ( '20016', '01', '3', '2020-01-07', '1132.15');
INSERT INTO datas_pag_pedidos VALUES ( '20017', '04', '1', '2019-10-29', '949.8');
INSERT INTO datas_pag_pedidos VALUES ( '20018', '04', '2', '2019-11-26', '949.8');
INSERT INTO datas_pag_pedidos VALUES ( '20019', '04', '3', '2019-12-24', '949.8');
INSERT INTO datas_pag_pedidos VALUES ( '20020', '07', '1', '2019-10-31', '673.67');
INSERT INTO datas_pag_pedidos VALUES ( '20021', '07', '2', '2019-11-30', '673.67');
INSERT INTO datas_pag_pedidos VALUES ( '20022', '07', '3', '2019-12-30', '673.67');
INSERT INTO datas_pag_pedidos VALUES ( '20029', '08', '1', '2019-11-16', '6555.42');
INSERT INTO datas_pag_pedidos VALUES ( '20030', '08', '2', '2019-12-14', '6555.42');
INSERT INTO datas_pag_pedidos VALUES ( '20031', '08', '3', '2020-01-11', '6555.42');
INSERT INTO datas_pag_pedidos VALUES ( '20032', '06', '1', '2019-11-16', '794.33');
INSERT INTO datas_pag_pedidos VALUES ( '20033', '06', '2', '2019-11-30', '794.33');
INSERT INTO datas_pag_pedidos VALUES ( '20034', '06', '3', '2019-12-14', '794.33');

#
# CriaÁ„o da Tabela : fornecedor
#

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnpj_fornecedor` varchar(18) NOT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `fone_fornecedor` varchar(15) DEFAULT NULL,
  `nome_contato` varchar(100) DEFAULT NULL,
  `email_fornecedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO fornecedor VALUES ( '4', '', 'BABOLAT', '', '', '');
INSERT INTO fornecedor VALUES ( '5', '', 'ADIDAS', '', '', '');
INSERT INTO fornecedor VALUES ( '6', '', 'NIKE', '', '', '');
INSERT INTO fornecedor VALUES ( '7', '', 'GUEPARD', '', '', '');
INSERT INTO fornecedor VALUES ( '8', '', 'PENALTY', '', '', '');
INSERT INTO fornecedor VALUES ( '9', '', 'CBC', '', '', '');
INSERT INTO fornecedor VALUES ( '10', '', 'ASICS', '', '', '');
INSERT INTO fornecedor VALUES ( '11', '', 'OLYMPIKUS', '', '', '');
INSERT INTO fornecedor VALUES ( '12', '', 'TOPPER', '', '', '');
INSERT INTO fornecedor VALUES ( '13', '', 'BRAZILINE', '', '', '');
INSERT INTO fornecedor VALUES ( '14', '', 'IPPON', '', '', '');
INSERT INTO fornecedor VALUES ( '15', '', 'VOLLO', '', '', '');
INSERT INTO fornecedor VALUES ( '16', '', 'SPEEDO', '', '', '');
INSERT INTO fornecedor VALUES ( '17', '', 'UMBRO', '', '', '');
INSERT INTO fornecedor VALUES ( '18', '', 'MIZUNO', '', '', '');
INSERT INTO fornecedor VALUES ( '19', '', 'POKER', '', '', '');
INSERT INTO fornecedor VALUES ( '20', '', 'KIDY', '', '', '');
INSERT INTO fornecedor VALUES ( '21', '', 'RANDALL', '', '', '');
INSERT INTO fornecedor VALUES ( '22', '', 'HAVAIANAS', '', '', '');
INSERT INTO fornecedor VALUES ( '23', '', 'OLYMPIKUS', '', '', '');
INSERT INTO fornecedor VALUES ( '24', '', 'TRIFIL', '', '', '');
INSERT INTO fornecedor VALUES ( '25', '', 'TERRA E AGUA', '', '', '');
INSERT INTO fornecedor VALUES ( '26', '', 'CALPRADO', '', '', '');
INSERT INTO fornecedor VALUES ( '27', '', 'DISNEY', '', '', '');
INSERT INTO fornecedor VALUES ( '28', '', 'KOLOSH', '', '', '');
INSERT INTO fornecedor VALUES ( '29', '', 'INVOICE', '', '', '');
INSERT INTO fornecedor VALUES ( '30', '', 'ADORA', '', '', '');
INSERT INTO fornecedor VALUES ( '31', '', 'ANDRAX', '', '', '');
INSERT INTO fornecedor VALUES ( '32', '', 'ANA FLOR', '', '', '');
INSERT INTO fornecedor VALUES ( '33', '', 'BLOOMPY', '', '', '');
INSERT INTO fornecedor VALUES ( '34', '', 'USAFLEX', '', '', '');
INSERT INTO fornecedor VALUES ( '35', '', 'PICADILLY', '', '', '');
INSERT INTO fornecedor VALUES ( '36', '', 'FRANCOOP', '', '', '');
INSERT INTO fornecedor VALUES ( '37', '', 'DI VALENTINI', '', '', '');
INSERT INTO fornecedor VALUES ( '38', '', 'CAL√á BOTTERO', '', '', '');
INSERT INTO fornecedor VALUES ( '39', '', 'OCCASION', '', '', '');
INSERT INTO fornecedor VALUES ( '40', '', 'DIAN PATRIS', '', '', '');
INSERT INTO fornecedor VALUES ( '41', '', 'FOCAL FLEX', '', '', '');
INSERT INTO fornecedor VALUES ( '45', '', 'NAUTIKA', '', '', '');
INSERT INTO fornecedor VALUES ( '46', '', 'SPR', '', '', '');
INSERT INTO fornecedor VALUES ( '47', '', 'VVT MODA', '', '', '');
INSERT INTO fornecedor VALUES ( '48', '', 'GRENDENE', '', '', '');
INSERT INTO fornecedor VALUES ( '49', '', 'CAL PEGADA', '', '', '');
INSERT INTO fornecedor VALUES ( '50', '', 'VIZZANO', '', '', '');
INSERT INTO fornecedor VALUES ( '51', '', 'OPANANKEN', '', '', '');
INSERT INTO fornecedor VALUES ( '52', '', 'BEIRA RIO', '', '', '');
INSERT INTO fornecedor VALUES ( '53', '', 'DENZEL', '', '', '');
INSERT INTO fornecedor VALUES ( '54', '', 'CHENSON', '', '', '');
INSERT INTO fornecedor VALUES ( '55', '', 'LUPO', '', '', '');
INSERT INTO fornecedor VALUES ( '56', '', 'PEKENO', '', '', '');
INSERT INTO fornecedor VALUES ( '57', '', 'SCALIBU', '', '', '');
INSERT INTO fornecedor VALUES ( '58', '', 'AZALEIA', '', '', '');
INSERT INTO fornecedor VALUES ( '59', '', 'PARISI', '', '', '');
INSERT INTO fornecedor VALUES ( '60', '', 'CALVEST', '', '', '');
INSERT INTO fornecedor VALUES ( '61', '', 'ROTA DO POLICIAL', '', '', '');
INSERT INTO fornecedor VALUES ( '62', '', 'TRILHAS E RUMOS', '', '', '');
INSERT INTO fornecedor VALUES ( '63', '', 'HIDROLIGHT', '', '', '');
INSERT INTO fornecedor VALUES ( '64', '', 'BRASILFIT', '', '', '');
INSERT INTO fornecedor VALUES ( '65', '', 'STADIUM', '', '', '');
INSERT INTO fornecedor VALUES ( '66', '', 'CENTRO SUL', '', '', '');
INSERT INTO fornecedor VALUES ( '67', '', 'SCATAMACCHIA', '', '', '');
INSERT INTO fornecedor VALUES ( '68', '', 'COMFORTFLEX', '', '', '');
INSERT INTO fornecedor VALUES ( '69', '', 'MC QUEEN', '', '', '');
INSERT INTO fornecedor VALUES ( '70', '', 'TONNIN', '', '', '');
INSERT INTO fornecedor VALUES ( '71', '', 'CONVERSE ALL STAR', '', '', '');
INSERT INTO fornecedor VALUES ( '72', '', 'BRISTELLY AUTOCRATA', '', '', '');
INSERT INTO fornecedor VALUES ( '73', '', 'VIDONE', '', '', '');
INSERT INTO fornecedor VALUES ( '74', '', 'RAMARIM', '', '', '');
INSERT INTO fornecedor VALUES ( '75', '', 'ANATOMICGEL', '', '', '');
INSERT INTO fornecedor VALUES ( '76', '', 'MKS', '', '', '');
INSERT INTO fornecedor VALUES ( '77', '', 'ARENA', '', '', '');
INSERT INTO fornecedor VALUES ( '78', '', 'REDESPORT', '', '', '');
INSERT INTO fornecedor VALUES ( '79', '', 'PIAZZA', '', '', '');
INSERT INTO fornecedor VALUES ( '80', '', 'RIFFLE', '', '', '');
INSERT INTO fornecedor VALUES ( '81', '', 'TRAMONTINA', '', '', '');
INSERT INTO fornecedor VALUES ( '82', '', 'COCAL', '', '', '');
INSERT INTO fornecedor VALUES ( '83', '', 'FLET FORM', '', '', '');
INSERT INTO fornecedor VALUES ( '84', '', 'ADRUN', '', '', '');
INSERT INTO fornecedor VALUES ( '85', '', 'MOLECA', '', '', '');
INSERT INTO fornecedor VALUES ( '86', '', 'SANDALO', '', '', '');
INSERT INTO fornecedor VALUES ( '87', '', 'LINDY', '', '', '');
INSERT INTO fornecedor VALUES ( '88', '', 'PIPPER', '', '', '');
INSERT INTO fornecedor VALUES ( '89', '', 'MOLEKINHA', '', '', '');
INSERT INTO fornecedor VALUES ( '90', '', 'SUA CIA', '', '', '');
INSERT INTO fornecedor VALUES ( '91', '', 'STUDIO B', '', '', '');
INSERT INTO fornecedor VALUES ( '92', '', 'LIA LINE', '', '', '');
INSERT INTO fornecedor VALUES ( '93', '', 'FERRICELLI', '', '', '');
INSERT INTO fornecedor VALUES ( '94', '', 'DE VERAS', '', '', '');
INSERT INTO fornecedor VALUES ( '95', '', 'UNIBRAS', '', '', '');
INSERT INTO fornecedor VALUES ( '96', '', 'KILDARE', '', '', '');
INSERT INTO fornecedor VALUES ( '97', '', 'GUIMY IND BRINK', '', '', '');
INSERT INTO fornecedor VALUES ( '98', '', 'CONFORT PLUS', '', '', '');
INSERT INTO fornecedor VALUES ( '99', '', 'FLORENCA', '', '', '');
INSERT INTO fornecedor VALUES ( '100', '', 'MARK KIDS', '', '', '');
INSERT INTO fornecedor VALUES ( '101', '', 'CAL LHOMBRE', '', '', '');
INSERT INTO fornecedor VALUES ( '102', '', 'ICONE', '', '', '');
INSERT INTO fornecedor VALUES ( '103', '', 'JGEAN SAPATILHAS', '', '', '');
INSERT INTO fornecedor VALUES ( '104', '', 'MAGIA DE CRIANCA', '', '', '');
INSERT INTO fornecedor VALUES ( '105', '', 'LATITTUDE', '', '', '');
INSERT INTO fornecedor VALUES ( '106', '', 'KANXA', '', '', '');
INSERT INTO fornecedor VALUES ( '107', '', 'UNDER ARMOUR', '', '', '');
INSERT INTO fornecedor VALUES ( '108', '', 'VICTORINOX', '', '', '');
INSERT INTO fornecedor VALUES ( '109', '', 'MOCFLEX', '', '', '');
INSERT INTO fornecedor VALUES ( '110', '', 'BERTELLI', '', '', '');
INSERT INTO fornecedor VALUES ( '111', '', 'KARGA', '', '', '');
INSERT INTO fornecedor VALUES ( '112', '', 'KARGA', '', '', '');
INSERT INTO fornecedor VALUES ( '113', '', 'CARCARA', '', '', '');
INSERT INTO fornecedor VALUES ( '114', '', 'FOX BOY', '', '', '');
INSERT INTO fornecedor VALUES ( '115', '', 'COP SHOP', '', '', '');
INSERT INTO fornecedor VALUES ( '116', '', 'ZACAVI', '', '', '');
INSERT INTO fornecedor VALUES ( '117', '', 'GYN COM', '', '', '');
INSERT INTO fornecedor VALUES ( '118', '', 'CASTELY', '', '', '');
INSERT INTO fornecedor VALUES ( '119', '', 'CAUDURO', '', '', '');
INSERT INTO fornecedor VALUES ( '120', '', 'RAINHA', '', '', '');
INSERT INTO fornecedor VALUES ( '121', '', 'TENSOR', '', '', '');
INSERT INTO fornecedor VALUES ( '122', '', 'TIPTOE', '', '', '');
INSERT INTO fornecedor VALUES ( '123', '', 'SAPATOTERAPIA', '', '', '');
INSERT INTO fornecedor VALUES ( '124', '', 'DIVALESI', '', '', '');
INSERT INTO fornecedor VALUES ( '125', '', 'JULEV BOLSAS', '', '', '');
INSERT INTO fornecedor VALUES ( '126', '', 'WEST COAST', '', '', '');
INSERT INTO fornecedor VALUES ( '127', '', 'PALTERM', '', '', '');
INSERT INTO fornecedor VALUES ( '128', '', 'JACOMETTI', '', '', '');
INSERT INTO fornecedor VALUES ( '129', '', 'BELLOBOY', '', '', '');
INSERT INTO fornecedor VALUES ( '130', '', 'AMARO', '', '', '');
INSERT INTO fornecedor VALUES ( '131', '', 'FASOLO', '', '', '');
INSERT INTO fornecedor VALUES ( '132', '', 'FATOR COM', '', '', '');
INSERT INTO fornecedor VALUES ( '133', '', 'BY AVENTURA', '', '', '');
INSERT INTO fornecedor VALUES ( '134', '', 'RAYOVAC', '', '', '');
INSERT INTO fornecedor VALUES ( '135', '', 'VIERGE CONFEC', '', '', '');
INSERT INTO fornecedor VALUES ( '136', '', 'CLIMBER', '', '', '');
INSERT INTO fornecedor VALUES ( '137', '', 'NILANDER BOLSAS', '', '', '');
INSERT INTO fornecedor VALUES ( '138', '', 'SUGARSHOES', '', '', '');
INSERT INTO fornecedor VALUES ( '139', '', 'KLIN', '', '', '');
INSERT INTO fornecedor VALUES ( '140', '', 'BONTON', '', '', '');
INSERT INTO fornecedor VALUES ( '141', '', 'SUPER BOLA', '', '', '');
INSERT INTO fornecedor VALUES ( '142', '', 'DONIC', '', '', '');
INSERT INTO fornecedor VALUES ( '143', '', 'DAKOTA', '', '', '');
INSERT INTO fornecedor VALUES ( '144', '', 'FLORENCA', '', '', '');
INSERT INTO fornecedor VALUES ( '145', '', 'HATAR BOLSAS', '', '', '');
INSERT INTO fornecedor VALUES ( '146', '', 'JGEAN', '', '', '');
INSERT INTO fornecedor VALUES ( '147', '', 'SANTINELLI', '', '', '');
INSERT INTO fornecedor VALUES ( '148', '', 'KAZAN', '', '', '');
INSERT INTO fornecedor VALUES ( '149', '', 'TORAH', '', '', '');
INSERT INTO fornecedor VALUES ( '150', '', 'CAL MALU', '', '', '');
INSERT INTO fornecedor VALUES ( '151', '', 'SUACIA', '', '', '');
INSERT INTO fornecedor VALUES ( '152', '', 'PRAIME CAL', '', '', '');
INSERT INTO fornecedor VALUES ( '153', '', 'DI VALORI', '', '', '');
INSERT INTO fornecedor VALUES ( '154', '', 'CACA E PESCA', '', '', '');
INSERT INTO fornecedor VALUES ( '155', '', 'TRINYS', '', '', '');
INSERT INTO fornecedor VALUES ( '156', '', 'LH ESCOVAS', '', '', '');
INSERT INTO fornecedor VALUES ( '157', '', 'LOVELY', '', '', '');
INSERT INTO fornecedor VALUES ( '158', '', 'GTR REP', '', '', '');
INSERT INTO fornecedor VALUES ( '159', '', 'KIKOS', '', '', '');
INSERT INTO fornecedor VALUES ( '160', '', 'CRESPAR', '', '', '');
INSERT INTO fornecedor VALUES ( '161', '', 'EMPRESTIMO FORNECEDOR', '', '', '');
INSERT INTO fornecedor VALUES ( '162', '', 'NEOPRENE', '', '', '');
INSERT INTO fornecedor VALUES ( '163', '', 'KIMONO', '', '', '');
INSERT INTO fornecedor VALUES ( '164', '', 'RANGEL REP', '', '', '');
INSERT INTO fornecedor VALUES ( '165', '', 'AIR SPORT', '', '', '');
INSERT INTO fornecedor VALUES ( '166', '', 'DILLY', '', '', '');
INSERT INTO fornecedor VALUES ( '167', '', 'AVB EQUIPAMENTOS', '', '', '');
INSERT INTO fornecedor VALUES ( '168', '', 'BRASIL EUIPAMENTOS', '', '', '');
INSERT INTO fornecedor VALUES ( '169', '', 'COURO CRU', '', '', '');
INSERT INTO fornecedor VALUES ( '170', '', 'VIERGE CONFEC', '', '', '');
INSERT INTO fornecedor VALUES ( '171', '', 'JUDOQUI', '', '', '');
INSERT INTO fornecedor VALUES ( '172', '', 'MYFLAG', '', '', '');
INSERT INTO fornecedor VALUES ( '173', '', 'RAYON TN INF', '', '', '');
INSERT INTO fornecedor VALUES ( '174', '', 'MAKENZI', '', '', '');
INSERT INTO fornecedor VALUES ( '175', '', 'COMPARINI', '', '', '');
INSERT INTO fornecedor VALUES ( '176', '', 'OLHO VIVO', '', '', '');
INSERT INTO fornecedor VALUES ( '177', '', 'PUKET', '', '', '');
INSERT INTO fornecedor VALUES ( '178', '', 'HAPPY LUCK', '', '', '');
INSERT INTO fornecedor VALUES ( '179', '', 'BACKPLIP', '', '', '');
INSERT INTO fornecedor VALUES ( '180', '', 'NAOMA', '', '', '');
INSERT INTO fornecedor VALUES ( '181', '', 'FLY WAlk', '', '', '');
INSERT INTO fornecedor VALUES ( '182', '', 'DAMARE', '', '', '');
INSERT INTO fornecedor VALUES ( '183', '', 'DINANZI', '', '', '');
INSERT INTO fornecedor VALUES ( '184', '', 'DASS', '', '', '');
INSERT INTO fornecedor VALUES ( '185', '', 'KING BRASIL', '', '', '');
INSERT INTO fornecedor VALUES ( '186', '', 'KAPPA', '', '', '');
INSERT INTO fornecedor VALUES ( '187', '', 'WALK WAY', '', '', '');
INSERT INTO fornecedor VALUES ( '188', '', 'COMBAT', '', '', '');
INSERT INTO fornecedor VALUES ( '189', '', 'ECHOLIFE', '', '', '');
INSERT INTO fornecedor VALUES ( '190', '', 'CASA SAO JOAO', '', '', '');
INSERT INTO fornecedor VALUES ( '191', '', 'ITALIANINHO', '', '', '');
INSERT INTO fornecedor VALUES ( '192', '', 'DIADORA', '', '', '');
INSERT INTO fornecedor VALUES ( '193', '', 'DIADORA', '', '', '');
INSERT INTO fornecedor VALUES ( '194', '', 'TATICAL IMPORTS', '', '', '');
INSERT INTO fornecedor VALUES ( '195', '', 'XERIFE SPORTS', '', '', '');
INSERT INTO fornecedor VALUES ( '196', '', 'RAFITTHY', '', '', '');
INSERT INTO fornecedor VALUES ( '197', '', 'ARTLUX BOLSAS', '', '', '');
INSERT INTO fornecedor VALUES ( '198', '', 'VARIETA', '', '', '');
INSERT INTO fornecedor VALUES ( '199', '', 'MALU', '', '', '');
INSERT INTO fornecedor VALUES ( '200', '', 'MISSISSIPI', '', '', '');
INSERT INTO fornecedor VALUES ( '201', '', 'CAMPESI', '', '', '');
INSERT INTO fornecedor VALUES ( '202', '', 'SHOES E SHOES', '', '', '');
INSERT INTO fornecedor VALUES ( '203', '', 'AUGUSTUS', '', '', '');
INSERT INTO fornecedor VALUES ( '204', '', 'SEA SUB', '', '', '');
INSERT INTO fornecedor VALUES ( '205', '', 'GAMO CHUMBO', '', '', '');
INSERT INTO fornecedor VALUES ( '206', '', 'PASSOS E CARVALHO', '', '', '');
INSERT INTO fornecedor VALUES ( '207', '', 'COLEMAN', '', '', '');
INSERT INTO fornecedor VALUES ( '208', '', 'CAL ITAMBE', '', '', '');
INSERT INTO fornecedor VALUES ( '209', '', 'VIEPPER', '', '', '');
INSERT INTO fornecedor VALUES ( '210', '', 'TRAPEZIO', '', '', '');
INSERT INTO fornecedor VALUES ( '211', '', 'CAMISA GAMA', '', '', '');
INSERT INTO fornecedor VALUES ( '212', '', 'GILOPLASTIC', '', '', '');
INSERT INTO fornecedor VALUES ( '213', '', 'M MULLER', '', '', '');
INSERT INTO fornecedor VALUES ( '214', '', 'ADRUM', '', '', '');
INSERT INTO fornecedor VALUES ( '215', '', 'calven shoe', '', '', '');
INSERT INTO fornecedor VALUES ( '216', '', 'BOAONDA', '', '', '');
INSERT INTO fornecedor VALUES ( '217', '', 'DI VITRINE', '', '', '');
INSERT INTO fornecedor VALUES ( '218', '', 'LATELIER', '', '', '');
INSERT INTO fornecedor VALUES ( '219', '', 'CYCLEXPRESS', '', '', '');

#
# CriaÁ„o da Tabela : lojas
#

CREATE TABLE `lojas` (
  `id_lojas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_loja` varchar(5) DEFAULT NULL,
  `nome_loja` varchar(100) DEFAULT NULL,
  `fone_loja` varchar(15) NOT NULL,
  `nome_gerente` varchar(100) DEFAULT NULL,
  `end_loja` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_lojas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO lojas VALUES ( '5', '01', 'SPORT CENTER', '(61) 3326-3331', 'VALDEMIR E ROGERIO', 'SDN CONJ A LOJA T19');
INSERT INTO lojas VALUES ( '6', '02', 'PASSAREDO CAL√áADOS', '(61) 3326-2782', 'VILMAR E ROCHA', 'SDN CONJ A LOJA T20');

#
# CriaÁ„o da Tabela : pedidos
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
  `cod_cond_pag` varchar(5) NOT NULL,
  `prazo` varchar(2) NOT NULL,
  `valor_dividido` float NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=1611 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO pedidos VALUES ( '1600', '04', '01 - SPORT CENTER', 'BRAZILINE', '2849.4', '', '2019-10-01', 'aprazo', '68', '3', '949.8', '');
INSERT INTO pedidos VALUES ( '1604', '01', '01 - SPORT CENTER', 'PENALTY', '3396.46', '', '2019-10-01', 'aprazo', '40', '3', '1132.15', '');
INSERT INTO pedidos VALUES ( '1606', '06', '01 - SPORT CENTER', 'MIZUNO', '2383', '', '2019-10-05', 'aprazo', '02', '3', '794.33', '');
INSERT INTO pedidos VALUES ( '1607', '07', '01 - SPORT CENTER', 'VOLLO', '2021', '', '2019-10-01', 'aprazo', '09', '3', '673.67', '');
INSERT INTO pedidos VALUES ( '1609', '08', '01 - SPORT CENTER', 'PENALTY', '19666.3', '', '2019-10-05', 'aprazo', '40', '3', '6555.42', '');
INSERT INTO pedidos VALUES ( '1610', '02', '01 - SPORT CENTER', 'PENALTY', '2183.48', '', '2019-10-01', 'aprazo', '', '3', '727.83', '');

#
# CriaÁ„o da Tabela : produto
#

CREATE TABLE `produto` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` varchar(11) DEFAULT NULL,
  `fornecedor_produto` varchar(100) NOT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `tipo_produto` varchar(20) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO produto VALUES ( '2', '01', '', 'BOLA', '');

#
# CriaÁ„o da Tabela : usuario
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
  `senha_usuario` text,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO usuario VALUES ( '3', 'Administrador do Sistema', '000.000.000-00', 'Areal/√Åguas Claras', '(99) 9999-9999', '(99) 99999-9999', 'raphael.a.a.p@gmail.com', 'Administrador', 'admin', 'administrador01');
INSERT INTO usuario VALUES ( '7', 'Sandra Lessa', '125.586.654-44', '', '', '', 'sandralessal2@gmail.com', 'Administrador', 'sandra', '123456');

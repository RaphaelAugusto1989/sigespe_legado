
#
# Cria��o da Tabela : condicoes_pagamentos
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
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
INSERT INTO condicoes_pagamentos VALUES ( '24', '21', '', '60', '70', '80', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '25', '22', '', '30', '45', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '26', '23', '', '90', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '27', '24', '', '28', '42', '56', '70', '84');

#
# Cria��o da Tabela : cotas
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO cotas VALUES ( '5', '01 - SPORT CENTER', '', 'Novembro', '2016', '100000', '-42052.4');
INSERT INTO cotas VALUES ( '7', '01 - SPORT CENTER', '', 'Dezembro', '2016', '50000', '25243.2');
INSERT INTO cotas VALUES ( '8', '01 - SPORT CENTER', '', 'Janeiro', '2017', '50000', '-4191.7');
INSERT INTO cotas VALUES ( '9', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '10', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '11', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '12', '01 - SPORT CENTER', '', 'Maio', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '13', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '14', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '15', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '16', '01 - SPORT CENTER', '', 'Maio', '2017', '50', '50');
INSERT INTO cotas VALUES ( '17', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '18', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '19', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '20', '02 - PASSAREDO CALÇADOS', '', 'Novembro', '2016', '100000', '-66610.8');
INSERT INTO cotas VALUES ( '21', '02 - PASSAREDO CALÇADOS', '', 'Janeiro', '2017', '50000', '13374.1');
INSERT INTO cotas VALUES ( '22', '02 - PASSAREDO CALÇADOS', '', 'Fevereiro', '2017', '50000', '50000');
INSERT INTO cotas VALUES ( '23', '02 - PASSAREDO CALÇADOS', '', 'Março', '2017', '50000', '48800.6');
INSERT INTO cotas VALUES ( '24', '02 - PASSAREDO CALÇADOS', '', 'Abril', '2017', '50000', '44241.8');
INSERT INTO cotas VALUES ( '25', '02 - PASSAREDO CALÇADOS', '', 'Maio', '2017', '50000', '44602.4');
INSERT INTO cotas VALUES ( '26', '', '', 'Dezembro', '2016', '50000', '50000');
INSERT INTO cotas VALUES ( '27', '02 - PASSAREDO CALÇADOS', '', 'Dezembro', '2016', '10000', '9569.56');

#
# Cria��o da Tabela : datas_pag_pedidos
#

CREATE TABLE `datas_pag_pedidos` (
  `id_datas` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pedido` varchar(10) DEFAULT NULL,
  `cod_cond_pagamento` varchar(10) DEFAULT NULL,
  `datas_pagamentos` date DEFAULT NULL,
  `valor_do_pedido` float DEFAULT NULL,
  PRIMARY KEY (`id_datas`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO datas_pag_pedidos VALUES ( '24', '02', '1', '2016-12-16', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '25', '02', '2', '2016-12-30', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '26', '02', '3', '2017-01-13', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '30', '04', '1', '2016-12-28', '1650.36');
INSERT INTO datas_pag_pedidos VALUES ( '31', '04', '2', '2017-01-11', '1650.36');
INSERT INTO datas_pag_pedidos VALUES ( '32', '04', '3', '2017-01-25', '1650.36');
INSERT INTO datas_pag_pedidos VALUES ( '33', '08', '1', '2017-01-11', '291.33');
INSERT INTO datas_pag_pedidos VALUES ( '34', '08', '2', '2017-01-25', '291.33');
INSERT INTO datas_pag_pedidos VALUES ( '35', '08', '3', '2017-02-08', '291.33');
INSERT INTO datas_pag_pedidos VALUES ( '36', '09', '1', '2017-01-14', '631');
INSERT INTO datas_pag_pedidos VALUES ( '37', '09', '2', '2017-02-13', '631');
INSERT INTO datas_pag_pedidos VALUES ( '38', '09', '3', '2017-03-15', '631');
INSERT INTO datas_pag_pedidos VALUES ( '39', '09', '4', '2017-04-14', '631');
INSERT INTO datas_pag_pedidos VALUES ( '40', '10', '1', '2017-01-10', '688');
INSERT INTO datas_pag_pedidos VALUES ( '41', '10', '2', '2017-01-24', '688');
INSERT INTO datas_pag_pedidos VALUES ( '42', '10', '3', '2017-02-07', '688');
INSERT INTO datas_pag_pedidos VALUES ( '43', '11', '1', '2017-01-10', '133.33');
INSERT INTO datas_pag_pedidos VALUES ( '44', '11', '2', '2017-01-24', '133.33');
INSERT INTO datas_pag_pedidos VALUES ( '45', '11', '3', '2017-02-07', '133.33');
INSERT INTO datas_pag_pedidos VALUES ( '46', '12', '1', '2017-01-10', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '47', '12', '2', '2017-01-24', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '48', '12', '3', '2017-02-07', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '49', '13', '1', '2017-01-10', '26.67');
INSERT INTO datas_pag_pedidos VALUES ( '50', '13', '2', '2017-01-24', '26.67');
INSERT INTO datas_pag_pedidos VALUES ( '51', '13', '3', '2017-02-07', '26.67');
INSERT INTO datas_pag_pedidos VALUES ( '52', '14', '1', '2017-01-10', '311');
INSERT INTO datas_pag_pedidos VALUES ( '53', '14', '2', '2017-01-24', '311');
INSERT INTO datas_pag_pedidos VALUES ( '54', '14', '3', '2017-02-07', '311');
INSERT INTO datas_pag_pedidos VALUES ( '55', '15', '1', '2017-01-10', '367');
INSERT INTO datas_pag_pedidos VALUES ( '56', '15', '2', '2017-01-24', '367');
INSERT INTO datas_pag_pedidos VALUES ( '57', '15', '3', '2017-02-07', '367');
INSERT INTO datas_pag_pedidos VALUES ( '58', '16', '1', '2017-01-10', '983.33');
INSERT INTO datas_pag_pedidos VALUES ( '59', '16', '2', '2017-01-24', '983.33');
INSERT INTO datas_pag_pedidos VALUES ( '60', '16', '3', '2017-02-07', '983.33');
INSERT INTO datas_pag_pedidos VALUES ( '61', '17', '1', '2016-12-13', '487.33');
INSERT INTO datas_pag_pedidos VALUES ( '62', '17', '2', '2016-12-27', '487.33');
INSERT INTO datas_pag_pedidos VALUES ( '63', '17', '3', '2017-01-10', '487.33');
INSERT INTO datas_pag_pedidos VALUES ( '64', '18', '1', '2016-12-13', '312.12');
INSERT INTO datas_pag_pedidos VALUES ( '65', '18', '2', '2016-12-27', '312.12');
INSERT INTO datas_pag_pedidos VALUES ( '66', '19', '1', '2016-12-20', '1749.1');
INSERT INTO datas_pag_pedidos VALUES ( '67', '19', '2', '2017-01-17', '1749.1');
INSERT INTO datas_pag_pedidos VALUES ( '68', '19', '3', '2017-02-14', '1749.1');
INSERT INTO datas_pag_pedidos VALUES ( '69', '31', '1', '2017-01-17', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '70', '31', '2', '2017-02-14', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '71', '31', '3', '2017-03-14', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '72', '32', '1', '2016-12-10', '209');
INSERT INTO datas_pag_pedidos VALUES ( '73', '32', '2', '2017-01-09', '209');
INSERT INTO datas_pag_pedidos VALUES ( '74', '32', '3', '2017-02-08', '209');
INSERT INTO datas_pag_pedidos VALUES ( '75', '38', '1', '2016-12-20', '1009.4');
INSERT INTO datas_pag_pedidos VALUES ( '76', '38', '2', '2017-01-17', '1009.4');
INSERT INTO datas_pag_pedidos VALUES ( '77', '38', '3', '2017-02-14', '1009.4');
INSERT INTO datas_pag_pedidos VALUES ( '78', '44', '1', '2016-12-27', '459.67');
INSERT INTO datas_pag_pedidos VALUES ( '79', '44', '2', '2017-01-10', '459.67');
INSERT INTO datas_pag_pedidos VALUES ( '80', '44', '3', '2017-01-24', '459.67');
INSERT INTO datas_pag_pedidos VALUES ( '81', '46', '1', '2016-12-27', '1692.86');
INSERT INTO datas_pag_pedidos VALUES ( '82', '46', '2', '2017-01-10', '1692.86');
INSERT INTO datas_pag_pedidos VALUES ( '83', '46', '3', '2017-01-24', '1692.86');
INSERT INTO datas_pag_pedidos VALUES ( '84', '47', '1', '2016-12-27', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '85', '47', '2', '2017-01-10', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '86', '47', '3', '2017-01-24', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '87', '48', '1', '2017-01-10', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '88', '48', '2', '2017-01-24', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '89', '48', '3', '2017-02-07', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '90', '49', '1', '2016-12-27', '11785');
INSERT INTO datas_pag_pedidos VALUES ( '91', '49', '2', '2017-01-10', '11785');
INSERT INTO datas_pag_pedidos VALUES ( '92', '49', '3', '2017-01-24', '11785');
INSERT INTO datas_pag_pedidos VALUES ( '93', '51', '1', '2017-01-05', '2100');
INSERT INTO datas_pag_pedidos VALUES ( '94', '51', '2', '2017-01-19', '2100');
INSERT INTO datas_pag_pedidos VALUES ( '95', '51', '3', '2017-02-02', '2100');
INSERT INTO datas_pag_pedidos VALUES ( '96', '52', '1', '2017-01-10', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '97', '52', '2', '2017-01-24', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '98', '52', '3', '2017-02-07', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '99', '53', '1', '2016-12-15', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '100', '53', '2', '2017-01-14', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '101', '53', '3', '2017-02-13', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '102', '63', '1', '2017-01-10', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '103', '63', '2', '2017-01-24', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '104', '63', '3', '2017-02-07', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '105', '65', '1', '2017-01-05', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '106', '65', '2', '2017-01-19', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '107', '65', '3', '2017-02-02', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '108', '66', '1', '2017-01-05', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '109', '66', '2', '2017-01-19', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '110', '66', '3', '2017-02-02', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '111', '67', '1', '2017-01-10', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '112', '67', '2', '2017-01-24', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '113', '67', '3', '2017-02-07', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '114', '68', '1', '2017-01-10', '1797.43');
INSERT INTO datas_pag_pedidos VALUES ( '115', '68', '2', '2017-01-24', '1797.43');
INSERT INTO datas_pag_pedidos VALUES ( '116', '68', '3', '2017-02-07', '1797.43');
INSERT INTO datas_pag_pedidos VALUES ( '117', '71', '1', '2017-01-10', '503.67');
INSERT INTO datas_pag_pedidos VALUES ( '118', '71', '2', '2017-02-07', '503.67');
INSERT INTO datas_pag_pedidos VALUES ( '119', '71', '3', '2017-03-07', '503.67');
INSERT INTO datas_pag_pedidos VALUES ( '120', '76', '1', '2016-12-20', '729.5');
INSERT INTO datas_pag_pedidos VALUES ( '121', '76', '2', '2017-01-17', '729.5');
INSERT INTO datas_pag_pedidos VALUES ( '122', '76', '3', '2017-02-14', '729.5');
INSERT INTO datas_pag_pedidos VALUES ( '123', '87', '1', '2016-12-15', '268');
INSERT INTO datas_pag_pedidos VALUES ( '124', '87', '2', '2017-01-14', '268');
INSERT INTO datas_pag_pedidos VALUES ( '125', '87', '3', '2017-02-13', '268');
INSERT INTO datas_pag_pedidos VALUES ( '126', '87', '4', '2017-03-15', '268');
INSERT INTO datas_pag_pedidos VALUES ( '127', '87', '5', '2017-04-14', '268');
INSERT INTO datas_pag_pedidos VALUES ( '128', '88', '1', '2016-12-15', '71.96');
INSERT INTO datas_pag_pedidos VALUES ( '129', '88', '2', '2017-01-14', '71.96');
INSERT INTO datas_pag_pedidos VALUES ( '130', '88', '3', '2017-02-13', '71.96');
INSERT INTO datas_pag_pedidos VALUES ( '131', '93', '1', '2017-01-24', '1344');
INSERT INTO datas_pag_pedidos VALUES ( '132', '93', '2', '2017-02-07', '1344');
INSERT INTO datas_pag_pedidos VALUES ( '133', '93', '3', '2017-02-21', '1344');
INSERT INTO datas_pag_pedidos VALUES ( '134', '127', '1', '2017-01-05', '1235.33');
INSERT INTO datas_pag_pedidos VALUES ( '135', '127', '2', '2017-02-02', '1235.33');
INSERT INTO datas_pag_pedidos VALUES ( '136', '127', '3', '2017-03-02', '1235.33');
INSERT INTO datas_pag_pedidos VALUES ( '137', '128', '1', '2017-01-05', '6060');
INSERT INTO datas_pag_pedidos VALUES ( '138', '128', '2', '2017-02-02', '6060');
INSERT INTO datas_pag_pedidos VALUES ( '139', '128', '3', '2017-03-02', '6060');
INSERT INTO datas_pag_pedidos VALUES ( '140', '129', '1', '2017-03-20', '857');
INSERT INTO datas_pag_pedidos VALUES ( '141', '129', '2', '2017-04-19', '857');
INSERT INTO datas_pag_pedidos VALUES ( '142', '129', '3', '2017-05-19', '857');
INSERT INTO datas_pag_pedidos VALUES ( '143', '50', '1', '2017-01-16', '5143.33');
INSERT INTO datas_pag_pedidos VALUES ( '144', '50', '2', '2017-01-30', '5143.33');
INSERT INTO datas_pag_pedidos VALUES ( '145', '50', '3', '2017-02-13', '5143.33');
INSERT INTO datas_pag_pedidos VALUES ( '146', '69', '1', '2017-01-30', '322');
INSERT INTO datas_pag_pedidos VALUES ( '147', '69', '2', '2017-02-13', '322');
INSERT INTO datas_pag_pedidos VALUES ( '148', '69', '3', '2017-02-27', '322');
INSERT INTO datas_pag_pedidos VALUES ( '149', '70', '1', '2017-01-30', '983');
INSERT INTO datas_pag_pedidos VALUES ( '150', '70', '2', '2017-02-13', '983');
INSERT INTO datas_pag_pedidos VALUES ( '151', '70', '3', '2017-02-27', '983');
INSERT INTO datas_pag_pedidos VALUES ( '152', '125', '1', '2017-02-07', '1803.93');
INSERT INTO datas_pag_pedidos VALUES ( '153', '125', '2', '2017-03-09', '1803.93');
INSERT INTO datas_pag_pedidos VALUES ( '154', '125', '3', '2017-04-08', '1803.93');
INSERT INTO datas_pag_pedidos VALUES ( '155', '100', '1', '2017-03-07', '2071.96');
INSERT INTO datas_pag_pedidos VALUES ( '156', '100', '2', '2017-03-21', '2071.96');
INSERT INTO datas_pag_pedidos VALUES ( '157', '100', '3', '2017-04-04', '2071.96');
INSERT INTO datas_pag_pedidos VALUES ( '158', '101', '1', '2017-03-07', '3097.67');
INSERT INTO datas_pag_pedidos VALUES ( '159', '101', '2', '2017-03-21', '3097.67');
INSERT INTO datas_pag_pedidos VALUES ( '160', '101', '3', '2017-04-04', '3097.67');
INSERT INTO datas_pag_pedidos VALUES ( '161', '102', '1', '2017-03-07', '622');
INSERT INTO datas_pag_pedidos VALUES ( '162', '102', '2', '2017-03-21', '622');
INSERT INTO datas_pag_pedidos VALUES ( '163', '102', '3', '2017-04-04', '622');
INSERT INTO datas_pag_pedidos VALUES ( '164', '115', '1', '2017-03-07', '4958.6');
INSERT INTO datas_pag_pedidos VALUES ( '165', '115', '2', '2017-04-04', '4958.6');
INSERT INTO datas_pag_pedidos VALUES ( '166', '115', '3', '2017-05-02', '4958.6');
INSERT INTO datas_pag_pedidos VALUES ( '167', '109', '1', '2017-02-14', '7313.67');
INSERT INTO datas_pag_pedidos VALUES ( '168', '109', '2', '2017-03-14', '7313.67');
INSERT INTO datas_pag_pedidos VALUES ( '169', '109', '3', '2017-04-11', '7313.67');
INSERT INTO datas_pag_pedidos VALUES ( '170', '205', '1', '2016-12-15', '563.33');
INSERT INTO datas_pag_pedidos VALUES ( '171', '205', '2', '2017-01-14', '563.33');
INSERT INTO datas_pag_pedidos VALUES ( '172', '205', '3', '2017-02-13', '563.33');
INSERT INTO datas_pag_pedidos VALUES ( '173', '217', '1', '2017-01-17', '3396.67');
INSERT INTO datas_pag_pedidos VALUES ( '174', '217', '2', '2017-02-16', '3396.67');
INSERT INTO datas_pag_pedidos VALUES ( '175', '217', '3', '2017-03-18', '3396.67');
INSERT INTO datas_pag_pedidos VALUES ( '176', '223', '1', '2016-12-20', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '177', '223', '2', '2016-12-27', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '178', '223', '3', '2017-01-03', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '179', '224', '1', '2016-12-15', '2658.33');
INSERT INTO datas_pag_pedidos VALUES ( '180', '224', '2', '2017-01-12', '2658.33');
INSERT INTO datas_pag_pedidos VALUES ( '181', '224', '3', '2017-02-09', '2658.33');
INSERT INTO datas_pag_pedidos VALUES ( '182', '229', '1', '2017-01-09', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '183', '229', '2', '2017-02-08', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '184', '229', '3', '2017-03-10', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '185', '234', '1', '2016-11-30', '777.67');
INSERT INTO datas_pag_pedidos VALUES ( '186', '234', '2', '2016-12-10', '777.67');
INSERT INTO datas_pag_pedidos VALUES ( '187', '234', '3', '2016-12-20', '777.67');
INSERT INTO datas_pag_pedidos VALUES ( '188', '235', '1', '2017-01-09', '1632.33');
INSERT INTO datas_pag_pedidos VALUES ( '189', '235', '2', '2017-02-08', '1632.33');
INSERT INTO datas_pag_pedidos VALUES ( '190', '235', '3', '2017-03-10', '1632.33');
INSERT INTO datas_pag_pedidos VALUES ( '191', '241', '1', '2017-03-02', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '192', '241', '2', '2017-03-30', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '193', '241', '3', '2017-04-27', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '194', '248', '1', '2017-02-08', '725');
INSERT INTO datas_pag_pedidos VALUES ( '195', '248', '2', '2017-03-10', '725');
INSERT INTO datas_pag_pedidos VALUES ( '196', '248', '3', '2017-04-09', '725');
INSERT INTO datas_pag_pedidos VALUES ( '197', '253', '1', '2017-01-09', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '198', '253', '2', '2017-02-08', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '199', '253', '3', '2017-03-10', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '200', '256', '1', '2016-12-15', '7125.33');
INSERT INTO datas_pag_pedidos VALUES ( '201', '256', '2', '2017-01-12', '7125.33');
INSERT INTO datas_pag_pedidos VALUES ( '202', '256', '3', '2017-02-09', '7125.33');
INSERT INTO datas_pag_pedidos VALUES ( '203', '257', '1', '2017-01-09', '3098');
INSERT INTO datas_pag_pedidos VALUES ( '204', '257', '2', '2017-02-08', '3098');
INSERT INTO datas_pag_pedidos VALUES ( '205', '257', '3', '2017-03-10', '3098');
INSERT INTO datas_pag_pedidos VALUES ( '206', '259', '1', '2017-01-09', '743.58');
INSERT INTO datas_pag_pedidos VALUES ( '207', '259', '2', '2017-02-08', '743.58');
INSERT INTO datas_pag_pedidos VALUES ( '208', '259', '3', '2017-03-10', '743.58');
INSERT INTO datas_pag_pedidos VALUES ( '209', '260', '1', '2017-01-09', '499.8');
INSERT INTO datas_pag_pedidos VALUES ( '210', '260', '2', '2017-02-08', '499.8');
INSERT INTO datas_pag_pedidos VALUES ( '211', '260', '3', '2017-03-10', '499.8');
INSERT INTO datas_pag_pedidos VALUES ( '212', '261', '1', '2017-01-09', '1047.72');
INSERT INTO datas_pag_pedidos VALUES ( '213', '261', '2', '2017-02-08', '1047.72');
INSERT INTO datas_pag_pedidos VALUES ( '214', '261', '3', '2017-03-10', '1047.72');
INSERT INTO datas_pag_pedidos VALUES ( '215', '262', '1', '2017-01-09', '1183.33');
INSERT INTO datas_pag_pedidos VALUES ( '216', '262', '2', '2017-02-08', '1183.33');
INSERT INTO datas_pag_pedidos VALUES ( '217', '262', '3', '2017-03-10', '1183.33');
INSERT INTO datas_pag_pedidos VALUES ( '218', '305', '1', '2016-12-10', '2551');
INSERT INTO datas_pag_pedidos VALUES ( '219', '308', '1', '2017-01-09', '5556.33');
INSERT INTO datas_pag_pedidos VALUES ( '220', '308', '2', '2017-01-19', '5556.33');
INSERT INTO datas_pag_pedidos VALUES ( '221', '308', '3', '2017-01-29', '5556.33');
INSERT INTO datas_pag_pedidos VALUES ( '222', '316', '1', '2016-12-15', '280');
INSERT INTO datas_pag_pedidos VALUES ( '223', '316', '2', '2017-01-14', '280');
INSERT INTO datas_pag_pedidos VALUES ( '224', '316', '3', '2017-02-13', '280');
INSERT INTO datas_pag_pedidos VALUES ( '225', '324', '1', '2017-01-09', '1921.33');
INSERT INTO datas_pag_pedidos VALUES ( '226', '324', '2', '2017-02-08', '1921.33');
INSERT INTO datas_pag_pedidos VALUES ( '227', '324', '3', '2017-03-10', '1921.33');
INSERT INTO datas_pag_pedidos VALUES ( '228', '325', '1', '2016-12-14', '2071.33');
INSERT INTO datas_pag_pedidos VALUES ( '229', '325', '2', '2017-01-13', '2071.33');
INSERT INTO datas_pag_pedidos VALUES ( '230', '325', '3', '2017-02-12', '2071.33');
INSERT INTO datas_pag_pedidos VALUES ( '231', '326', '1', '2016-12-25', '1256.33');
INSERT INTO datas_pag_pedidos VALUES ( '232', '326', '2', '2017-01-24', '1256.33');
INSERT INTO datas_pag_pedidos VALUES ( '233', '326', '3', '2017-02-23', '1256.33');
INSERT INTO datas_pag_pedidos VALUES ( '234', '327', '1', '2017-01-29', '2143.67');
INSERT INTO datas_pag_pedidos VALUES ( '235', '327', '2', '2017-02-28', '2143.67');
INSERT INTO datas_pag_pedidos VALUES ( '236', '327', '3', '2017-03-30', '2143.67');
INSERT INTO datas_pag_pedidos VALUES ( '237', '328', '1', '2016-11-30', '644');
INSERT INTO datas_pag_pedidos VALUES ( '238', '328', '2', '2016-12-10', '644');
INSERT INTO datas_pag_pedidos VALUES ( '239', '328', '3', '2016-12-20', '644');
INSERT INTO datas_pag_pedidos VALUES ( '240', '329', '1', '2016-11-30', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '241', '329', '2', '2016-12-10', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '242', '329', '3', '2016-12-20', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '243', '331', '1', '2017-01-11', '1162.1');
INSERT INTO datas_pag_pedidos VALUES ( '244', '331', '2', '2017-01-21', '1162.1');
INSERT INTO datas_pag_pedidos VALUES ( '245', '331', '3', '2017-01-31', '1162.1');
INSERT INTO datas_pag_pedidos VALUES ( '246', '333', '1', '2016-12-10', '1739.33');
INSERT INTO datas_pag_pedidos VALUES ( '247', '333', '2', '2017-01-09', '1739.33');
INSERT INTO datas_pag_pedidos VALUES ( '248', '333', '3', '2017-02-08', '1739.33');
INSERT INTO datas_pag_pedidos VALUES ( '249', '334', '1', '2016-12-10', '864.43');
INSERT INTO datas_pag_pedidos VALUES ( '250', '334', '2', '2017-01-09', '864.43');
INSERT INTO datas_pag_pedidos VALUES ( '251', '334', '3', '2017-02-08', '864.43');
INSERT INTO datas_pag_pedidos VALUES ( '252', '336', '1', '2016-12-10', '1742.5');
INSERT INTO datas_pag_pedidos VALUES ( '253', '336', '2', '2016-12-25', '1742.5');
INSERT INTO datas_pag_pedidos VALUES ( '254', '337', '1', '2017-01-05', '4320');
INSERT INTO datas_pag_pedidos VALUES ( '255', '337', '2', '2017-02-02', '4320');
INSERT INTO datas_pag_pedidos VALUES ( '256', '337', '3', '2017-03-02', '4320');
INSERT INTO datas_pag_pedidos VALUES ( '257', '338', '1', '2017-01-19', '2472.33');
INSERT INTO datas_pag_pedidos VALUES ( '258', '338', '2', '2017-02-18', '2472.33');
INSERT INTO datas_pag_pedidos VALUES ( '259', '338', '3', '2017-03-20', '2472.33');
INSERT INTO datas_pag_pedidos VALUES ( '260', '352', '1', '2017-01-05', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '261', '352', '2', '2017-02-02', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '262', '352', '3', '2017-03-02', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '263', '275', '1', '2017-04-15', '7222.28');
INSERT INTO datas_pag_pedidos VALUES ( '264', '276', '1', '2017-03-21', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '265', '276', '2', '2017-04-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '266', '276', '3', '2017-05-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '267', '269', '1', '2017-02-17', '1415.4');
INSERT INTO datas_pag_pedidos VALUES ( '268', '269', '2', '2017-03-03', '1415.4');
INSERT INTO datas_pag_pedidos VALUES ( '269', '269', '3', '2017-03-17', '1415.4');
INSERT INTO datas_pag_pedidos VALUES ( '270', '269', '4', '2017-03-31', '1415.4');
INSERT INTO datas_pag_pedidos VALUES ( '271', '269', '5', '2017-04-14', '1415.4');
INSERT INTO datas_pag_pedidos VALUES ( '272', '264', '1', '2017-02-19', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '273', '264', '2', '2017-03-19', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '274', '264', '3', '2017-04-16', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '275', '274', '1', '2017-03-31', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '276', '274', '2', '2017-04-30', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '277', '274', '3', '2017-05-30', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '278', '274', '4', '2017-06-29', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '279', '271', '1', '2017-04-17', '239.88');
INSERT INTO datas_pag_pedidos VALUES ( '280', '271', '2', '2017-05-01', '239.88');
INSERT INTO datas_pag_pedidos VALUES ( '281', '271', '3', '2017-05-15', '239.88');
INSERT INTO datas_pag_pedidos VALUES ( '282', '271', '4', '2017-05-29', '239.88');
INSERT INTO datas_pag_pedidos VALUES ( '283', '271', '5', '2017-06-12', '239.88');
INSERT INTO datas_pag_pedidos VALUES ( '284', '272', '1', '2017-05-18', '1151.64');
INSERT INTO datas_pag_pedidos VALUES ( '285', '272', '2', '2017-06-01', '1151.64');
INSERT INTO datas_pag_pedidos VALUES ( '286', '272', '3', '2017-06-15', '1151.64');
INSERT INTO datas_pag_pedidos VALUES ( '287', '272', '4', '2017-06-29', '1151.64');
INSERT INTO datas_pag_pedidos VALUES ( '288', '272', '5', '2017-07-13', '1151.64');
INSERT INTO datas_pag_pedidos VALUES ( '289', '273', '1', '2017-06-17', '1079.52');
INSERT INTO datas_pag_pedidos VALUES ( '290', '273', '2', '2017-07-01', '1079.52');
INSERT INTO datas_pag_pedidos VALUES ( '291', '273', '3', '2017-07-15', '1079.52');
INSERT INTO datas_pag_pedidos VALUES ( '292', '273', '4', '2017-07-29', '1079.52');
INSERT INTO datas_pag_pedidos VALUES ( '293', '273', '5', '2017-08-12', '1079.52');
INSERT INTO datas_pag_pedidos VALUES ( '294', '203', '1', '2017-03-17', '430.44');

#
# Cria��o da Tabela : fornecedor
#

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnpj_fornecedor` varchar(18) NOT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `fone_fornecedor` varchar(15) DEFAULT NULL,
  `nome_contato` varchar(100) DEFAULT NULL,
  `email_fornecedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
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
INSERT INTO fornecedor VALUES ( '38', '', 'CALÇ BOTTERO', '', '', '');
INSERT INTO fornecedor VALUES ( '39', '', 'OCCASION', '', '', '');
INSERT INTO fornecedor VALUES ( '40', '', 'DIAN PATRIS', '', '', '');
INSERT INTO fornecedor VALUES ( '41', '', 'FOCAL FLEX', '', '', '');

#
# Cria��o da Tabela : lojas
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
# Dados a serem inclu�dos na tabela
#

INSERT INTO lojas VALUES ( '5', '01', 'SPORT CENTER', '(61) 3326-3331', 'VALDEMIR E ROGERIO', 'SDN CONJ A LOJA T19');
INSERT INTO lojas VALUES ( '6', '02', 'PASSAREDO CALÇADOS', '(61) 3326-2782', 'VILMAR E ROCHA', 'SDN CONJ A LOJA T20');

#
# Cria��o da Tabela : pedidos
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO pedidos VALUES ( '10', '02', '01 - SPORT CENTER', 'BABOLAT', '1895.28', '', '2016-11-18', 'aprazo', '3', '631.76', '');
INSERT INTO pedidos VALUES ( '12', '04', '01 - SPORT CENTER', 'ADIDAS', '4951.08', '', '2016-11-16', 'aprazo', '3', '1650.36', '');
INSERT INTO pedidos VALUES ( '13', '08', '01 - SPORT CENTER', 'NIKE', '874', '', '2016-11-16', 'aprazo', '3', '291.33', '');
INSERT INTO pedidos VALUES ( '14', '09', '01 - SPORT CENTER', 'GUEPARD', '2524', '', '2016-11-15', 'aprazo', '4', '631', '');
INSERT INTO pedidos VALUES ( '15', '10', '01 - SPORT CENTER', 'NIKE', '2064', '', '2016-11-15', 'aprazo', '3', '688', '');
INSERT INTO pedidos VALUES ( '16', '11', '01 - SPORT CENTER', 'NIKE', '400', '', '2016-11-15', 'aprazo', '3', '133.33', '');
INSERT INTO pedidos VALUES ( '17', '12', '01 - SPORT CENTER', 'NIKE', '461.16', '', '2016-11-15', 'aprazo', '3', '153.72', '');
INSERT INTO pedidos VALUES ( '18', '13', '01 - SPORT CENTER', 'NIKE', '80', '', '2016-11-15', 'aprazo', '3', '26.67', '');
INSERT INTO pedidos VALUES ( '19', '14', '01 - SPORT CENTER', 'NIKE', '933', '', '2016-11-15', 'aprazo', '3', '311', '');
INSERT INTO pedidos VALUES ( '20', '15', '01 - SPORT CENTER', 'NIKE', '1101', '', '2016-11-15', 'aprazo', '3', '367', '');
INSERT INTO pedidos VALUES ( '21', '16', '01 - SPORT CENTER', 'PENALTY', '2950', '', '2016-11-15', 'aprazo', '3', '983.33', '');
INSERT INTO pedidos VALUES ( '22', '17', '01 - SPORT CENTER', 'CBC', '1462', '', '2016-11-15', 'aprazo', '3', '487.33', '');
INSERT INTO pedidos VALUES ( '23', '18', '01 - SPORT CENTER', 'CBC', '624.24', '', '2016-11-15', 'aprazo', '2', '312.12', '');
INSERT INTO pedidos VALUES ( '24', '19', '01 - SPORT CENTER', 'ASICS', '5247.3', '', '2016-11-15', 'aprazo', '3', '1749.1', '');
INSERT INTO pedidos VALUES ( '25', '31', '01 - SPORT CENTER', 'OLYMPIKUS', '1439.1', '', '2016-11-15', 'aprazo', '3', '479.7', '');
INSERT INTO pedidos VALUES ( '26', '32', '01 - SPORT CENTER', 'OLYMPIKUS', '627', '', '2016-11-10', 'aprazo', '3', '209', '');
INSERT INTO pedidos VALUES ( '27', '38', '01 - SPORT CENTER', 'ASICS', '3028.2', '', '2016-11-15', 'aprazo', '3', '1009.4', '');
INSERT INTO pedidos VALUES ( '28', '44', '01 - SPORT CENTER', 'ADIDAS', '1379', '', '2016-11-15', 'aprazo', '3', '459.67', '');
INSERT INTO pedidos VALUES ( '29', '46', '01 - SPORT CENTER', 'ADIDAS', '5078.58', '', '2016-11-15', 'aprazo', '3', '1692.86', '');
INSERT INTO pedidos VALUES ( '30', '47', '01 - SPORT CENTER', 'ADIDAS', '4499.76', '', '2016-11-15', 'aprazo', '3', '1499.92', '');
INSERT INTO pedidos VALUES ( '31', '48', '01 - SPORT CENTER', 'ADIDAS', '8600', '', '2016-11-15', 'aprazo', '3', '2866.67', '');
INSERT INTO pedidos VALUES ( '32', '49', '01 - SPORT CENTER', 'ADIDAS', '35355', '', '2016-11-15', 'aprazo', '3', '11785', '');
INSERT INTO pedidos VALUES ( '33', '51', '01 - SPORT CENTER', 'TOPPER', '6300', '', '2016-11-10', 'aprazo', '3', '2100', '');
INSERT INTO pedidos VALUES ( '34', '52', '01 - SPORT CENTER', 'PENALTY', '1107.28', '', '2016-11-15', 'aprazo', '3', '369.09', '');
INSERT INTO pedidos VALUES ( '35', '53', '01 - SPORT CENTER', 'BRAZILINE', '2371', '', '2016-11-15', 'aprazo', '3', '790.33', '');
INSERT INTO pedidos VALUES ( '37', '63', '01 - SPORT CENTER', 'NIKE', '2126', '', '2016-11-15', 'aprazo', '3', '708.67', '');
INSERT INTO pedidos VALUES ( '38', '65', '01 - SPORT CENTER', 'NIKE', '718.26', '', '2016-11-10', 'aprazo', '3', '239.42', '');
INSERT INTO pedidos VALUES ( '39', '66', '01 - SPORT CENTER', 'NIKE', '200', '', '2016-11-10', 'aprazo', '3', '66.67', '');
INSERT INTO pedidos VALUES ( '40', '67', '01 - SPORT CENTER', 'NIKE', '218.4', '', '2016-11-15', 'aprazo', '3', '72.8', '');
INSERT INTO pedidos VALUES ( '41', '68', '01 - SPORT CENTER', 'NIKE', '5392.3', '', '2016-11-15', 'aprazo', '3', '1797.43', '');
INSERT INTO pedidos VALUES ( '42', '71', '01 - SPORT CENTER', 'IPPON', '1511', '', '2016-11-15', 'aprazo', '3', '503.67', '');
INSERT INTO pedidos VALUES ( '43', '76', '01 - SPORT CENTER', 'ASICS', '2188.5', '', '2016-11-15', 'aprazo', '3', '729.5', '');
INSERT INTO pedidos VALUES ( '44', '87', '01 - SPORT CENTER', 'VOLLO', '1340', '', '2016-11-15', 'aprazo', '5', '268', '');
INSERT INTO pedidos VALUES ( '45', '88', '01 - SPORT CENTER', 'SPEEDO', '215.88', '', '2016-11-15', 'aprazo', '3', '71.96', '');
INSERT INTO pedidos VALUES ( '46', '93', '01 - SPORT CENTER', 'TOPPER', '4032', '', '2016-11-15', 'aprazo', '3', '1344', '');
INSERT INTO pedidos VALUES ( '47', '127', '01 - SPORT CENTER', 'MIZUNO', '3706', '', '2016-11-10', 'aprazo', '3', '1235.33', '');
INSERT INTO pedidos VALUES ( '48', '128', '01 - SPORT CENTER', 'MIZUNO', '18180', '', '2016-11-10', 'aprazo', '3', '6060', '');
INSERT INTO pedidos VALUES ( '49', '129', '01 - SPORT CENTER', 'POKER', '2571', '', '2016-11-20', 'aprazo', '3', '857', '');
INSERT INTO pedidos VALUES ( '50', '50', '01 - SPORT CENTER', 'ADIDAS', '15430', '', '2016-12-05', 'aprazo', '3', '5143.33', '');
INSERT INTO pedidos VALUES ( '51', '69', '01 - SPORT CENTER', 'NIKE', '966', '', '2016-12-05', 'aprazo', '3', '322', '');
INSERT INTO pedidos VALUES ( '52', '70', '01 - SPORT CENTER', 'NIKE', '2949', '', '2016-12-05', 'aprazo', '3', '983', '');
INSERT INTO pedidos VALUES ( '53', '125', '01 - SPORT CENTER', 'UMBRO', '5411.8', '', '2016-12-09', 'aprazo', '3', '1803.93', '');
INSERT INTO pedidos VALUES ( '54', '100', '01 - SPORT CENTER', 'NIKE', '6215.88', '', '2017-01-10', 'aprazo', '3', '2071.96', '');
INSERT INTO pedidos VALUES ( '55', '101', '01 - SPORT CENTER', 'NIKE', '9293', '', '2017-01-10', 'aprazo', '3', '3097.67', '');
INSERT INTO pedidos VALUES ( '56', '102', '01 - SPORT CENTER', 'NIKE', '1866', '', '2017-01-10', 'aprazo', '3', '622', '');
INSERT INTO pedidos VALUES ( '57', '115', '01 - SPORT CENTER', 'MIZUNO', '14875.8', '', '2017-01-10', 'aprazo', '3', '4958.6', '');
INSERT INTO pedidos VALUES ( '58', '109', '01 - SPORT CENTER', 'ASICS', '21941', '', '2017-01-10', 'aprazo', '3', '7313.67', '');
INSERT INTO pedidos VALUES ( '59', '205', '02 - PASSAREDO CALÇADOS', 'KIDY', '1690', '', '2016-11-15', 'aprazo', '3', '563.33', '');
INSERT INTO pedidos VALUES ( '60', '217', '02 - PASSAREDO CALÇADOS', 'RANDALL', '10190', '', '2016-11-18', 'aprazo', '3', '3396.67', '');
INSERT INTO pedidos VALUES ( '61', '223', '02 - PASSAREDO CALÇADOS', 'HAVAIANAS', '2720', '', '2016-11-15', 'aprazo', '3', '906.67', '');
INSERT INTO pedidos VALUES ( '62', '224', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '7975', '', '2016-11-10', 'aprazo', '3', '2658.33', '');
INSERT INTO pedidos VALUES ( '63', '229', '02 - PASSAREDO CALÇADOS', 'TRIFIL', '490.34', '', '2016-11-10', 'aprazo', '3', '163.45', '');
INSERT INTO pedidos VALUES ( '64', '234', '02 - PASSAREDO CALÇADOS', 'TERRA E AGUA', '2333', '', '2016-11-10', 'aprazo', '3', '777.67', '');
INSERT INTO pedidos VALUES ( '65', '235', '02 - PASSAREDO CALÇADOS', 'CALPRADO', '4897', '', '2016-11-10', 'aprazo', '3', '1632.33', '');
INSERT INTO pedidos VALUES ( '66', '241', '02 - PASSAREDO CALÇADOS', 'DISNEY', '2721.6', '', '2016-11-10', 'aprazo', '3', '907.2', '');
INSERT INTO pedidos VALUES ( '67', '248', '01 - SPORT CENTER', 'KOLOSH', '2175', '', '2016-11-10', 'aprazo', '3', '725', '');
INSERT INTO pedidos VALUES ( '68', '253', '02 - PASSAREDO CALÇADOS', 'INVOICE', '9040', '', '2016-11-10', 'aprazo', '3', '3013.33', '');
INSERT INTO pedidos VALUES ( '69', '256', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '21376', '', '2016-11-10', 'aprazo', '3', '7125.33', '');
INSERT INTO pedidos VALUES ( '70', '257', '02 - PASSAREDO CALÇADOS', 'ADORA', '9294', '', '2016-11-10', 'aprazo', '3', '3098', '');
INSERT INTO pedidos VALUES ( '71', '259', '02 - PASSAREDO CALÇADOS', 'ANDRAX', '2230.74', '', '2016-11-10', 'aprazo', '3', '743.58', '');
INSERT INTO pedidos VALUES ( '72', '260', '02 - PASSAREDO CALÇADOS', 'ANDRAX', '1499.4', '', '2016-11-10', 'aprazo', '3', '499.8', '');
INSERT INTO pedidos VALUES ( '73', '261', '02 - PASSAREDO CALÇADOS', 'ANDRAX', '3143.16', '', '2016-11-10', 'aprazo', '3', '1047.72', '');
INSERT INTO pedidos VALUES ( '74', '262', '02 - PASSAREDO CALÇADOS', 'ANA FLOR', '3550', '', '2016-11-10', 'aprazo', '3', '1183.33', '');
INSERT INTO pedidos VALUES ( '75', '305', '02 - PASSAREDO CALÇADOS', 'BLOOMPY', '2551', '', '2016-11-10', 'aprazo', '1', '2551', '');
INSERT INTO pedidos VALUES ( '76', '308', '02 - PASSAREDO CALÇADOS', 'USAFLEX', '16669', '', '2016-11-10', 'aprazo', '3', '5556.33', '');
INSERT INTO pedidos VALUES ( '77', '316', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '840', '', '2016-11-15', 'aprazo', '3', '280', '');
INSERT INTO pedidos VALUES ( '78', '324', '02 - PASSAREDO CALÇADOS', 'FRANCOOP', '5764', '', '2016-11-10', 'aprazo', '3', '1921.33', '');
INSERT INTO pedidos VALUES ( '79', '325', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '6214', '', '2016-11-14', 'aprazo', '3', '2071.33', '');
INSERT INTO pedidos VALUES ( '80', '326', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '3769', '', '2016-11-25', 'aprazo', '3', '1256.33', '');
INSERT INTO pedidos VALUES ( '81', '327', '02 - PASSAREDO CALÇADOS', 'DI VALENTINI', '6431', '', '2016-11-30', 'aprazo', '3', '2143.67', '');
INSERT INTO pedidos VALUES ( '82', '328', '02 - PASSAREDO CALÇADOS', 'CALÇ BOTTERO', '1932', '', '2016-11-10', 'aprazo', '3', '644', '');
INSERT INTO pedidos VALUES ( '83', '329', '02 - PASSAREDO CALÇADOS', 'CALÇ BOTTERO', '1631', '', '2016-11-10', 'aprazo', '3', '543.67', '');
INSERT INTO pedidos VALUES ( '84', '331', '02 - PASSAREDO CALÇADOS', 'USAFLEX', '3486.3', '', '2016-11-12', 'aprazo', '3', '1162.1', '');
INSERT INTO pedidos VALUES ( '85', '333', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '5218', '', '2016-11-10', 'aprazo', '3', '1739.33', '');
INSERT INTO pedidos VALUES ( '86', '334', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '2593.3', '', '2016-11-10', 'aprazo', '3', '864.43', '');
INSERT INTO pedidos VALUES ( '87', '336', '02 - PASSAREDO CALÇADOS', 'OCCASION', '3485', '', '2016-11-10', 'aprazo', '2', '1742.5', '');
INSERT INTO pedidos VALUES ( '88', '337', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '12960', '', '2016-11-10', 'aprazo', '3', '4320', '');
INSERT INTO pedidos VALUES ( '89', '338', '02 - PASSAREDO CALÇADOS', 'DIAN PATRIS', '7417', '', '2016-11-20', 'aprazo', '3', '2472.33', '');
INSERT INTO pedidos VALUES ( '90', '352', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '2500', '', '2016-11-10', 'aprazo', '3', '833.33', '');
INSERT INTO pedidos VALUES ( '91', '275', '02 - PASSAREDO CALÇADOS', 'RANDALL', '7222.28', '', '2017-01-15', 'aprazo', '1', '7222.28', '');
INSERT INTO pedidos VALUES ( '92', '276', '02 - PASSAREDO CALÇADOS', 'KIDY', '1581.6', '', '2017-01-20', 'aprazo', '3', '527.2', '');
INSERT INTO pedidos VALUES ( '93', '269', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '7077', '', '2017-01-20', 'aprazo', '5', '1415.4', '');
INSERT INTO pedidos VALUES ( '94', '264', '02 - PASSAREDO CALÇADOS', 'ASICS', '15494', '', '2017-01-15', 'aprazo', '3', '5164.67', '');
INSERT INTO pedidos VALUES ( '95', '274', '02 - PASSAREDO CALÇADOS', 'FOCAL FLEX', '5251', '', '2017-01-30', 'aprazo', '4', '1312.75', '');
INSERT INTO pedidos VALUES ( '96', '271', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '1199.4', '', '2017-03-20', 'aprazo', '5', '239.88', '');
INSERT INTO pedidos VALUES ( '97', '272', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '5758.2', '', '2017-04-20', 'aprazo', '5', '1151.64', '');
INSERT INTO pedidos VALUES ( '98', '273', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '5397.6', '', '2017-05-20', 'aprazo', '5', '1079.52', '');
INSERT INTO pedidos VALUES ( '99', '203', '02 - PASSAREDO CALÇADOS', 'RANDALL', '430.44', '', '2016-12-17', 'aprazo', '1', '430.44', '');

#
# Cria��o da Tabela : produto
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
# Dados a serem inclu�dos na tabela
#


#
# Cria��o da Tabela : usuario
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO usuario VALUES ( '3', 'Administrador do Sistema', '000.000.000-00', 'Rua 36', '', '', 'contato@artspeck.com.br', 'Administrador', 'administrador', 'admin2016');
INSERT INTO usuario VALUES ( '5', 'Sandra', '125.586.654-44', '', '', '', 'sandralessal2@gmail.com', 'Administrador', 'sandra', '123456');

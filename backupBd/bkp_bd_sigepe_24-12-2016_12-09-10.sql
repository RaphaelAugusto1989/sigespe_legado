
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

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
INSERT INTO condicoes_pagamentos VALUES ( '25', '22', '', '30', '45', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '26', '23', '', '90', '0', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '27', '24', '', '28', '42', '56', '70', '84');
INSERT INTO condicoes_pagamentos VALUES ( '29', '25', '', '49', '63', '77', '91', '0');
INSERT INTO condicoes_pagamentos VALUES ( '30', '26', '', '45', '75', '105', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '31', '27', '', '67', '74', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '32', '28', '', '30', '60', '90', '120', '0');
INSERT INTO condicoes_pagamentos VALUES ( '33', '29', '', '90', '105', '120', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '34', '30', '', '30', '60', '0', '0', '0');
INSERT INTO condicoes_pagamentos VALUES ( '35', '31', '', '28', '42', '56', '70', '84');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO cotas VALUES ( '5', '01 - SPORT CENTER', '', 'Novembro', '2016', '100000', '-117390');
INSERT INTO cotas VALUES ( '7', '01 - SPORT CENTER', '', 'Dezembro', '2016', '50000', '-150407');
INSERT INTO cotas VALUES ( '8', '01 - SPORT CENTER', '', 'Janeiro', '2017', '50000', '-11444.8');
INSERT INTO cotas VALUES ( '9', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-10265.2');
INSERT INTO cotas VALUES ( '10', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '-32549.8');
INSERT INTO cotas VALUES ( '11', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '-38228');
INSERT INTO cotas VALUES ( '12', '01 - SPORT CENTER', '', 'Maio', '2017', '50000', '-20573.7');
INSERT INTO cotas VALUES ( '13', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-60265.2');
INSERT INTO cotas VALUES ( '14', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '17450.2');
INSERT INTO cotas VALUES ( '15', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '11772');
INSERT INTO cotas VALUES ( '16', '01 - SPORT CENTER', '', 'Maio', '2017', '50', '-20523.7');
INSERT INTO cotas VALUES ( '17', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-60265.2');
INSERT INTO cotas VALUES ( '18', '01 - SPORT CENTER', '', 'Março', '2017', '50000', '17450.2');
INSERT INTO cotas VALUES ( '19', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '11772');
INSERT INTO cotas VALUES ( '20', '02 - PASSAREDO CALÇADOS', '', 'Novembro', '2016', '150000', '115422');
INSERT INTO cotas VALUES ( '21', '02 - PASSAREDO CALÇADOS', '', 'Janeiro', '2017', '50000', '-57136.3');
INSERT INTO cotas VALUES ( '22', '02 - PASSAREDO CALÇADOS', '', 'Fevereiro', '2017', '60000', '-15841.4');
INSERT INTO cotas VALUES ( '23', '02 - PASSAREDO CALÇADOS', '', 'Março', '2017', '50000', '23661.6');
INSERT INTO cotas VALUES ( '24', '02 - PASSAREDO CALÇADOS', '', 'Abril', '2017', '50000', '30815.6');
INSERT INTO cotas VALUES ( '25', '02 - PASSAREDO CALÇADOS', '', 'Maio', '2017', '50000', '27749');
INSERT INTO cotas VALUES ( '27', '02 - PASSAREDO CALÇADOS', '', 'Dezembro', '2016', '10000', '-10928.9');
INSERT INTO cotas VALUES ( '28', '01 - SPORT CENTER', '', 'Junho', '2016', '50000', '50000');
INSERT INTO cotas VALUES ( '29', '01 - SPORT CENTER', '', 'Junho', '2017', '50000', '44722');

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
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO datas_pag_pedidos VALUES ( '152', '125', '1', '2017-02-07', '268.6');
INSERT INTO datas_pag_pedidos VALUES ( '153', '125', '2', '2017-03-09', '268.6');
INSERT INTO datas_pag_pedidos VALUES ( '154', '125', '3', '2017-04-08', '268.6');
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
INSERT INTO datas_pag_pedidos VALUES ( '263', '275', '1', '2017-04-15', '7222.28');
INSERT INTO datas_pag_pedidos VALUES ( '264', '276', '1', '2017-03-21', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '265', '276', '2', '2017-04-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '266', '276', '3', '2017-05-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '275', '274', '1', '2017-03-31', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '276', '274', '2', '2017-04-30', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '277', '274', '3', '2017-05-30', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '278', '274', '4', '2017-06-29', '1312.75');
INSERT INTO datas_pag_pedidos VALUES ( '301', '002', '1', '2016-12-23', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '302', '002', '2', '2017-01-06', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '303', '002', '3', '2017-01-20', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '304', '009', '1', '2017-01-24', '631');
INSERT INTO datas_pag_pedidos VALUES ( '305', '009', '2', '2017-02-23', '631');
INSERT INTO datas_pag_pedidos VALUES ( '306', '009', '3', '2017-03-25', '631');
INSERT INTO datas_pag_pedidos VALUES ( '307', '009', '4', '2017-04-24', '631');
INSERT INTO datas_pag_pedidos VALUES ( '308', '012', '1', '2017-01-20', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '309', '012', '2', '2017-02-03', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '310', '012', '3', '2017-02-17', '153.72');
INSERT INTO datas_pag_pedidos VALUES ( '311', '014', '1', '2017-01-20', '311');
INSERT INTO datas_pag_pedidos VALUES ( '312', '014', '2', '2017-02-03', '311');
INSERT INTO datas_pag_pedidos VALUES ( '313', '014', '3', '2017-02-17', '311');
INSERT INTO datas_pag_pedidos VALUES ( '314', '016', '1', '2017-01-20', '333.33');
INSERT INTO datas_pag_pedidos VALUES ( '315', '016', '2', '2017-02-03', '333.33');
INSERT INTO datas_pag_pedidos VALUES ( '316', '016', '3', '2017-02-17', '333.33');
INSERT INTO datas_pag_pedidos VALUES ( '317', '018', '1', '2016-12-23', '312.12');
INSERT INTO datas_pag_pedidos VALUES ( '318', '018', '2', '2017-01-06', '312.12');
INSERT INTO datas_pag_pedidos VALUES ( '319', '031', '1', '2017-01-27', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '320', '031', '2', '2017-02-24', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '321', '031', '3', '2017-03-24', '479.7');
INSERT INTO datas_pag_pedidos VALUES ( '322', '032', '1', '2016-12-25', '209');
INSERT INTO datas_pag_pedidos VALUES ( '323', '032', '2', '2017-01-24', '209');
INSERT INTO datas_pag_pedidos VALUES ( '324', '032', '3', '2017-02-23', '209');
INSERT INTO datas_pag_pedidos VALUES ( '325', '047', '1', '2017-01-06', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '326', '047', '2', '2017-01-20', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '327', '047', '3', '2017-02-03', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '328', '048', '1', '2017-01-06', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '329', '048', '2', '2017-01-20', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '330', '048', '3', '2017-02-03', '2866.67');
INSERT INTO datas_pag_pedidos VALUES ( '331', '049', '1', '2017-01-06', '3464');
INSERT INTO datas_pag_pedidos VALUES ( '332', '049', '2', '2017-01-20', '3464');
INSERT INTO datas_pag_pedidos VALUES ( '333', '049', '3', '2017-02-03', '3464');
INSERT INTO datas_pag_pedidos VALUES ( '337', '052', '1', '2017-01-20', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '338', '052', '2', '2017-02-03', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '339', '052', '3', '2017-02-17', '369.09');
INSERT INTO datas_pag_pedidos VALUES ( '340', '053', '1', '2016-12-25', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '341', '053', '2', '2017-01-24', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '342', '053', '3', '2017-02-23', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '343', '063', '1', '2017-01-20', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '344', '063', '2', '2017-02-03', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '345', '063', '3', '2017-02-17', '708.67');
INSERT INTO datas_pag_pedidos VALUES ( '346', '065', '1', '2017-01-20', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '347', '065', '2', '2017-02-03', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '348', '065', '3', '2017-02-17', '239.42');
INSERT INTO datas_pag_pedidos VALUES ( '349', '066', '1', '2017-01-20', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '350', '066', '2', '2017-02-03', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '351', '066', '3', '2017-02-17', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '352', '067', '1', '2017-01-20', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '353', '067', '2', '2017-02-03', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '354', '067', '3', '2017-02-17', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '355', '068', '1', '2017-01-20', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '356', '068', '2', '2017-02-03', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '357', '068', '3', '2017-02-17', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '358', '076', '1', '2016-12-30', '269.67');
INSERT INTO datas_pag_pedidos VALUES ( '359', '076', '2', '2017-01-27', '269.67');
INSERT INTO datas_pag_pedidos VALUES ( '360', '076', '3', '2017-02-24', '269.67');
INSERT INTO datas_pag_pedidos VALUES ( '361', '127', '1', '2017-01-20', '198');
INSERT INTO datas_pag_pedidos VALUES ( '362', '127', '2', '2017-02-17', '198');
INSERT INTO datas_pag_pedidos VALUES ( '363', '127', '3', '2017-03-17', '198');
INSERT INTO datas_pag_pedidos VALUES ( '364', '050', '1', '2017-01-16', '3251.67');
INSERT INTO datas_pag_pedidos VALUES ( '365', '050', '2', '2017-01-30', '3251.67');
INSERT INTO datas_pag_pedidos VALUES ( '366', '050', '3', '2017-02-13', '3251.67');
INSERT INTO datas_pag_pedidos VALUES ( '371', '055', '1', '2017-01-30', '432.67');
INSERT INTO datas_pag_pedidos VALUES ( '372', '055', '2', '2017-02-13', '432.67');
INSERT INTO datas_pag_pedidos VALUES ( '373', '055', '3', '2017-02-27', '432.67');
INSERT INTO datas_pag_pedidos VALUES ( '374', '103', '1', '2017-04-02', '1865.95');
INSERT INTO datas_pag_pedidos VALUES ( '375', '103', '2', '2017-04-16', '1865.95');
INSERT INTO datas_pag_pedidos VALUES ( '376', '103', '3', '2017-04-30', '1865.95');
INSERT INTO datas_pag_pedidos VALUES ( '377', '104', '1', '2017-04-02', '4040.86');
INSERT INTO datas_pag_pedidos VALUES ( '378', '104', '2', '2017-04-16', '4040.86');
INSERT INTO datas_pag_pedidos VALUES ( '379', '104', '3', '2017-04-30', '4040.86');
INSERT INTO datas_pag_pedidos VALUES ( '380', '105', '1', '2017-04-07', '1693.67');
INSERT INTO datas_pag_pedidos VALUES ( '381', '105', '2', '2017-04-21', '1693.67');
INSERT INTO datas_pag_pedidos VALUES ( '382', '105', '3', '2017-05-05', '1693.67');
INSERT INTO datas_pag_pedidos VALUES ( '383', '110', '1', '2017-03-17', '9897.33');
INSERT INTO datas_pag_pedidos VALUES ( '384', '110', '2', '2017-04-14', '9897.33');
INSERT INTO datas_pag_pedidos VALUES ( '385', '110', '3', '2017-05-12', '9897.33');
INSERT INTO datas_pag_pedidos VALUES ( '386', '111', '1', '2017-04-14', '1239.5');
INSERT INTO datas_pag_pedidos VALUES ( '387', '111', '2', '2017-05-12', '1239.5');
INSERT INTO datas_pag_pedidos VALUES ( '388', '111', '3', '2017-06-09', '1239.5');
INSERT INTO datas_pag_pedidos VALUES ( '389', '106', '1', '2017-05-05', '1765.33');
INSERT INTO datas_pag_pedidos VALUES ( '390', '106', '2', '2017-05-19', '1765.33');
INSERT INTO datas_pag_pedidos VALUES ( '391', '106', '3', '2017-06-02', '1765.33');
INSERT INTO datas_pag_pedidos VALUES ( '392', '107', '1', '2017-05-05', '3438.44');
INSERT INTO datas_pag_pedidos VALUES ( '393', '107', '2', '2017-05-19', '3438.44');
INSERT INTO datas_pag_pedidos VALUES ( '394', '107', '3', '2017-06-02', '3438.44');
INSERT INTO datas_pag_pedidos VALUES ( '395', '108', '1', '2017-05-05', '4406.67');
INSERT INTO datas_pag_pedidos VALUES ( '396', '108', '2', '2017-05-19', '4406.67');
INSERT INTO datas_pag_pedidos VALUES ( '397', '108', '3', '2017-06-02', '4406.67');
INSERT INTO datas_pag_pedidos VALUES ( '398', '121', '1', '2017-05-24', '774');
INSERT INTO datas_pag_pedidos VALUES ( '399', '121', '2', '2017-06-07', '774');
INSERT INTO datas_pag_pedidos VALUES ( '400', '121', '3', '2017-06-21', '774');
INSERT INTO datas_pag_pedidos VALUES ( '401', '121', '4', '2017-07-05', '774');
INSERT INTO datas_pag_pedidos VALUES ( '405', '112', '1', '2017-05-15', '5855.33');
INSERT INTO datas_pag_pedidos VALUES ( '406', '112', '2', '2017-06-12', '5855.33');
INSERT INTO datas_pag_pedidos VALUES ( '407', '112', '3', '2017-07-10', '5855.33');
INSERT INTO datas_pag_pedidos VALUES ( '408', '113', '1', '2017-06-14', '6857.9');
INSERT INTO datas_pag_pedidos VALUES ( '409', '113', '2', '2017-07-12', '6857.9');
INSERT INTO datas_pag_pedidos VALUES ( '410', '113', '3', '2017-08-09', '6857.9');
INSERT INTO datas_pag_pedidos VALUES ( '411', '114', '1', '2017-07-15', '1759.33');
INSERT INTO datas_pag_pedidos VALUES ( '412', '114', '2', '2017-08-12', '1759.33');
INSERT INTO datas_pag_pedidos VALUES ( '413', '114', '3', '2017-09-09', '1759.33');
INSERT INTO datas_pag_pedidos VALUES ( '414', '208', '1', '2016-12-30', '2079.33');
INSERT INTO datas_pag_pedidos VALUES ( '415', '208', '2', '2017-01-27', '2079.33');
INSERT INTO datas_pag_pedidos VALUES ( '416', '208', '3', '2017-02-24', '2079.33');
INSERT INTO datas_pag_pedidos VALUES ( '417', '209', '1', '2017-01-19', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '418', '209', '2', '2017-02-18', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '419', '209', '3', '2017-03-20', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '420', '211', '1', '2017-01-31', '1079');
INSERT INTO datas_pag_pedidos VALUES ( '421', '211', '2', '2017-02-07', '1079');
INSERT INTO datas_pag_pedidos VALUES ( '422', '213', '1', '2017-03-25', '1304.67');
INSERT INTO datas_pag_pedidos VALUES ( '423', '213', '2', '2017-04-24', '1304.67');
INSERT INTO datas_pag_pedidos VALUES ( '424', '213', '3', '2017-05-24', '1304.67');
INSERT INTO datas_pag_pedidos VALUES ( '425', '229', '1', '2017-01-24', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '426', '229', '2', '2017-02-23', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '427', '229', '3', '2017-03-25', '163.45');
INSERT INTO datas_pag_pedidos VALUES ( '428', '223', '1', '2017-01-04', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '429', '223', '2', '2017-01-11', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '430', '223', '3', '2017-01-18', '906.67');
INSERT INTO datas_pag_pedidos VALUES ( '431', '234', '1', '2016-12-15', '126.33');
INSERT INTO datas_pag_pedidos VALUES ( '432', '234', '2', '2016-12-25', '126.33');
INSERT INTO datas_pag_pedidos VALUES ( '433', '234', '3', '2017-01-04', '126.33');
INSERT INTO datas_pag_pedidos VALUES ( '437', '241', '1', '2017-03-17', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '438', '241', '2', '2017-04-14', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '439', '241', '3', '2017-05-12', '907.2');
INSERT INTO datas_pag_pedidos VALUES ( '440', '244', '1', '2017-01-24', '692.38');
INSERT INTO datas_pag_pedidos VALUES ( '441', '244', '2', '2017-02-23', '692.38');
INSERT INTO datas_pag_pedidos VALUES ( '442', '244', '3', '2017-03-25', '692.38');
INSERT INTO datas_pag_pedidos VALUES ( '443', '248', '1', '2017-02-23', '725');
INSERT INTO datas_pag_pedidos VALUES ( '444', '248', '2', '2017-03-25', '725');
INSERT INTO datas_pag_pedidos VALUES ( '445', '248', '3', '2017-04-24', '725');
INSERT INTO datas_pag_pedidos VALUES ( '449', '253', '1', '2017-01-24', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '450', '253', '2', '2017-02-23', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '451', '253', '3', '2017-03-25', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '452', '254', '1', '2017-01-24', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '453', '254', '2', '2017-02-23', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '454', '254', '3', '2017-03-25', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '455', '263', '1', '2016-12-26', '504.5');
INSERT INTO datas_pag_pedidos VALUES ( '456', '263', '2', '2017-01-25', '504.5');
INSERT INTO datas_pag_pedidos VALUES ( '457', '263', '3', '2017-02-24', '504.5');
INSERT INTO datas_pag_pedidos VALUES ( '458', '263', '4', '2017-03-26', '504.5');
INSERT INTO datas_pag_pedidos VALUES ( '459', '273', '1', '2017-01-24', '937');
INSERT INTO datas_pag_pedidos VALUES ( '460', '273', '2', '2017-02-23', '937');
INSERT INTO datas_pag_pedidos VALUES ( '461', '273', '3', '2017-03-25', '937');
INSERT INTO datas_pag_pedidos VALUES ( '468', '329', '1', '2016-12-15', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '469', '329', '2', '2016-12-25', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '470', '329', '3', '2017-01-04', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '477', '258', '1', '2017-02-20', '4637');
INSERT INTO datas_pag_pedidos VALUES ( '478', '258', '2', '2017-03-20', '4637');
INSERT INTO datas_pag_pedidos VALUES ( '479', '258', '3', '2017-04-17', '4637');
INSERT INTO datas_pag_pedidos VALUES ( '480', '255', '1', '2017-04-16', '7222.28');
INSERT INTO datas_pag_pedidos VALUES ( '481', '251', '1', '2017-03-21', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '482', '251', '2', '2017-04-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '483', '251', '3', '2017-05-20', '527.2');
INSERT INTO datas_pag_pedidos VALUES ( '484', '250', '1', '2017-02-14', '459.33');
INSERT INTO datas_pag_pedidos VALUES ( '485', '250', '2', '2017-03-14', '459.33');
INSERT INTO datas_pag_pedidos VALUES ( '486', '250', '3', '2017-04-11', '459.33');
INSERT INTO datas_pag_pedidos VALUES ( '487', '249', '1', '2017-03-03', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '488', '249', '2', '2017-04-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '489', '249', '3', '2017-05-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '490', '259', '1', '2017-05-03', '6571.18');
INSERT INTO datas_pag_pedidos VALUES ( '491', '261', '1', '2017-04-09', '3797.67');
INSERT INTO datas_pag_pedidos VALUES ( '492', '261', '2', '2017-05-07', '3797.67');
INSERT INTO datas_pag_pedidos VALUES ( '493', '261', '3', '2017-06-04', '3797.67');
INSERT INTO datas_pag_pedidos VALUES ( '494', '262', '1', '2017-05-14', '4182.2');
INSERT INTO datas_pag_pedidos VALUES ( '495', '262', '2', '2017-06-13', '4182.2');
INSERT INTO datas_pag_pedidos VALUES ( '496', '262', '3', '2017-07-13', '4182.2');
INSERT INTO datas_pag_pedidos VALUES ( '497', '203', '1', '2017-03-17', '430.44');
INSERT INTO datas_pag_pedidos VALUES ( '498', '214', '1', '2017-01-27', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '499', '214', '2', '2017-02-10', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '500', '214', '3', '2017-02-24', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '501', '215', '1', '2017-01-31', '645.33');
INSERT INTO datas_pag_pedidos VALUES ( '502', '215', '2', '2017-03-02', '645.33');
INSERT INTO datas_pag_pedidos VALUES ( '503', '215', '3', '2017-04-01', '645.33');
INSERT INTO datas_pag_pedidos VALUES ( '504', '216', '1', '2017-02-03', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '505', '216', '2', '2017-03-05', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '506', '216', '3', '2017-04-04', '833.33');
INSERT INTO datas_pag_pedidos VALUES ( '507', '264', '1', '2017-02-19', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '508', '264', '2', '2017-03-19', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '509', '264', '3', '2017-04-16', '5164.67');
INSERT INTO datas_pag_pedidos VALUES ( '531', '265', '1', '2017-03-22', '3178.67');
INSERT INTO datas_pag_pedidos VALUES ( '532', '265', '2', '2017-04-19', '3178.67');
INSERT INTO datas_pag_pedidos VALUES ( '533', '265', '3', '2017-05-17', '3178.67');
INSERT INTO datas_pag_pedidos VALUES ( '534', '266', '1', '2017-05-20', '2556');
INSERT INTO datas_pag_pedidos VALUES ( '535', '266', '2', '2017-06-17', '2556');
INSERT INTO datas_pag_pedidos VALUES ( '536', '266', '3', '2017-07-15', '2556');
INSERT INTO datas_pag_pedidos VALUES ( '537', '267', '1', '2017-06-19', '3818.6');
INSERT INTO datas_pag_pedidos VALUES ( '538', '267', '2', '2017-07-17', '3818.6');
INSERT INTO datas_pag_pedidos VALUES ( '539', '267', '3', '2017-08-14', '3818.6');
INSERT INTO datas_pag_pedidos VALUES ( '546', '210', '1', '2017-01-26', '3215.5');
INSERT INTO datas_pag_pedidos VALUES ( '547', '210', '2', '2017-02-02', '3215.5');
INSERT INTO datas_pag_pedidos VALUES ( '548', '224', '1', '2016-12-25', '479.6');
INSERT INTO datas_pag_pedidos VALUES ( '549', '224', '2', '2017-01-22', '479.6');
INSERT INTO datas_pag_pedidos VALUES ( '550', '224', '3', '2017-02-19', '479.6');
INSERT INTO datas_pag_pedidos VALUES ( '551', '256', '1', '2016-12-25', '5327');
INSERT INTO datas_pag_pedidos VALUES ( '552', '256', '2', '2017-01-22', '5327');
INSERT INTO datas_pag_pedidos VALUES ( '553', '256', '3', '2017-02-19', '5327');
INSERT INTO datas_pag_pedidos VALUES ( '563', '269', '1', '2017-03-17', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '564', '269', '2', '2017-03-31', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '565', '269', '3', '2017-04-14', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '566', '260', '1', '2017-03-22', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '567', '260', '2', '2017-04-19', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '568', '260', '3', '2017-05-17', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '569', '56', '1', '2017-02-24', '2221.67');
INSERT INTO datas_pag_pedidos VALUES ( '570', '56', '2', '2017-03-10', '2221.67');
INSERT INTO datas_pag_pedidos VALUES ( '571', '56', '3', '2017-03-24', '2221.67');
INSERT INTO datas_pag_pedidos VALUES ( '572', '130', '1', '2017-03-12', '2417.71');
INSERT INTO datas_pag_pedidos VALUES ( '573', '130', '2', '2017-03-26', '2417.71');
INSERT INTO datas_pag_pedidos VALUES ( '574', '130', '3', '2017-04-09', '2417.71');
INSERT INTO datas_pag_pedidos VALUES ( '575', '131', '1', '2017-04-07', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '576', '131', '2', '2017-04-21', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '577', '131', '3', '2017-05-05', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '581', '204', '1', '2017-01-24', '800');
INSERT INTO datas_pag_pedidos VALUES ( '582', '204', '2', '2017-02-21', '800');
INSERT INTO datas_pag_pedidos VALUES ( '583', '204', '3', '2017-03-21', '800');
INSERT INTO datas_pag_pedidos VALUES ( '584', '205', '1', '2017-04-11', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '585', '205', '2', '2017-05-11', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '586', '205', '3', '2017-06-10', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '587', '206', '1', '2017-01-19', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '588', '206', '2', '2017-02-18', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '589', '206', '3', '2017-03-20', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '590', '207', '1', '2017-01-19', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '591', '207', '2', '2017-02-18', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '592', '207', '3', '2017-03-20', '379.39');
INSERT INTO datas_pag_pedidos VALUES ( '594', '217', '1', '2017-03-03', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '595', '217', '2', '2017-04-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '596', '217', '3', '2017-05-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '597', '218', '1', '2017-04-20', '1196');
INSERT INTO datas_pag_pedidos VALUES ( '598', '218', '2', '2017-05-05', '1196');
INSERT INTO datas_pag_pedidos VALUES ( '599', '218', '3', '2017-05-20', '1196');
INSERT INTO datas_pag_pedidos VALUES ( '602', '133', '1', '2017-01-23', '3760.73');
INSERT INTO datas_pag_pedidos VALUES ( '603', '133', '2', '2017-02-06', '3760.73');
INSERT INTO datas_pag_pedidos VALUES ( '604', '133', '3', '2017-02-20', '3760.73');
INSERT INTO datas_pag_pedidos VALUES ( '605', '133', '4', '2017-03-06', '3760.73');
INSERT INTO datas_pag_pedidos VALUES ( '606', '133', '5', '2017-03-20', '3760.73');
INSERT INTO datas_pag_pedidos VALUES ( '607', '134', '1', '2017-02-28', '2990.28');
INSERT INTO datas_pag_pedidos VALUES ( '608', '134', '2', '2017-03-30', '2990.28');
INSERT INTO datas_pag_pedidos VALUES ( '609', '134', '3', '2017-04-29', '2990.28');
INSERT INTO datas_pag_pedidos VALUES ( '610', '134', '4', '2017-05-29', '2990.28');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ;

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
  `cod_cond_pag` varchar(5) NOT NULL,
  `prazo` varchar(2) NOT NULL,
  `valor_dividido` float NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO pedidos VALUES ( '53', '125', '01 - SPORT CENTER', 'UMBRO', '805.8', '', '2016-12-05', 'aprazo', '', '3', '268.6', '');
INSERT INTO pedidos VALUES ( '54', '100', '01 - SPORT CENTER', 'NIKE', '6215.88', '', '2017-01-10', 'aprazo', '', '3', '2071.96', '');
INSERT INTO pedidos VALUES ( '55', '101', '01 - SPORT CENTER', 'NIKE', '9293', '', '2017-01-10', 'aprazo', '', '3', '3097.67', '');
INSERT INTO pedidos VALUES ( '56', '102', '01 - SPORT CENTER', 'NIKE', '1866', '', '2017-01-10', 'aprazo', '', '3', '622', '');
INSERT INTO pedidos VALUES ( '57', '115', '01 - SPORT CENTER', 'MIZUNO', '14875.8', '', '2017-01-10', 'aprazo', '', '3', '4958.6', '');
INSERT INTO pedidos VALUES ( '58', '109', '01 - SPORT CENTER', 'ASICS', '21941', '', '2017-01-10', 'aprazo', '', '3', '7313.67', '');
INSERT INTO pedidos VALUES ( '91', '275', '02 - PASSAREDO CALÇADOS', 'RANDALL', '7222.28', '', '2017-01-15', 'aprazo', '', '1', '7222.28', '');
INSERT INTO pedidos VALUES ( '92', '276', '02 - PASSAREDO CALÇADOS', 'KIDY', '1581.6', '', '2017-01-20', 'aprazo', '', '3', '527.2', '');
INSERT INTO pedidos VALUES ( '95', '274', '02 - PASSAREDO CALÇADOS', 'FOCAL FLEX', '5251', '', '2017-01-30', 'aprazo', '', '4', '1312.75', '');
INSERT INTO pedidos VALUES ( '102', '002', '01 - SPORT CENTER', 'BABOLAT', '1895.28', '', '2016-12-05', 'aprazo', '', '3', '631.76', '');
INSERT INTO pedidos VALUES ( '103', '009', '01 - SPORT CENTER', 'GUEPARD', '2524', '', '2016-11-25', 'aprazo', '', '4', '631', '');
INSERT INTO pedidos VALUES ( '104', '012', '01 - SPORT CENTER', 'NIKE', '461.16', '', '2016-12-05', 'aprazo', '', '3', '153.72', '');
INSERT INTO pedidos VALUES ( '105', '014', '01 - SPORT CENTER', 'NIKE', '933', '', '2016-11-25', 'aprazo', '', '3', '311', '');
INSERT INTO pedidos VALUES ( '106', '016', '01 - SPORT CENTER', 'PENALTY', '1000', '', '2016-12-01', 'aprazo', '', '3', '333.33', '');
INSERT INTO pedidos VALUES ( '107', '018', '01 - SPORT CENTER', 'CBC', '624.24', '', '2016-11-25', 'aprazo', '', '2', '312.12', '');
INSERT INTO pedidos VALUES ( '108', '031', '01 - SPORT CENTER', 'OLYMPIKUS', '1439.1', '', '2016-11-25', 'aprazo', '', '3', '479.7', '');
INSERT INTO pedidos VALUES ( '109', '032', '01 - SPORT CENTER', 'OLYMPIKUS', '627', '', '2016-11-25', 'aprazo', '', '3', '209', '');
INSERT INTO pedidos VALUES ( '110', '047', '01 - SPORT CENTER', 'ADIDAS', '4499.76', '', '2016-11-25', 'aprazo', '', '3', '1499.92', '');
INSERT INTO pedidos VALUES ( '111', '048', '01 - SPORT CENTER', 'ADIDAS', '8600', '', '2016-11-25', 'aprazo', '', '3', '2866.67', '');
INSERT INTO pedidos VALUES ( '112', '049', '01 - SPORT CENTER', 'ADIDAS', '10392', '', '2016-12-05', 'aprazo', '', '3', '3464', '');
INSERT INTO pedidos VALUES ( '114', '052', '01 - SPORT CENTER', 'PENALTY', '1107.28', '', '2016-11-25', 'aprazo', '', '3', '369.09', '');
INSERT INTO pedidos VALUES ( '115', '053', '01 - SPORT CENTER', 'BRAZILINE', '2371', '', '2016-11-25', 'aprazo', '', '3', '790.33', '');
INSERT INTO pedidos VALUES ( '116', '063', '01 - SPORT CENTER', 'NIKE', '2126', '', '2016-11-25', 'aprazo', '', '3', '708.67', '');
INSERT INTO pedidos VALUES ( '117', '065', '01 - SPORT CENTER', 'NIKE', '718.26', '', '2016-12-05', 'aprazo', '', '3', '239.42', '');
INSERT INTO pedidos VALUES ( '118', '066', '01 - SPORT CENTER', 'NIKE', '200', '', '2016-11-25', 'aprazo', '', '3', '66.67', '');
INSERT INTO pedidos VALUES ( '119', '067', '01 - SPORT CENTER', 'NIKE', '218.4', '', '2016-11-25', 'aprazo', '', '3', '72.8', '');
INSERT INTO pedidos VALUES ( '120', '068', '01 - SPORT CENTER', 'NIKE', '2506', '', '2016-11-25', 'aprazo', '', '3', '835.33', '');
INSERT INTO pedidos VALUES ( '121', '076', '01 - SPORT CENTER', 'ASICS', '809', '', '2016-12-05', 'aprazo', '', '3', '269.67', '');
INSERT INTO pedidos VALUES ( '122', '127', '01 - SPORT CENTER', 'MIZUNO', '594', '', '2016-12-05', 'aprazo', '', '3', '198', '');
INSERT INTO pedidos VALUES ( '123', '050', '01 - SPORT CENTER', 'ADIDAS', '9755', '', '2016-12-05', 'aprazo', '', '3', '3251.67', '');
INSERT INTO pedidos VALUES ( '125', '055', '01 - SPORT CENTER', 'SPR', '1298', '', '2016-12-05', 'aprazo', '', '3', '432.67', '');
INSERT INTO pedidos VALUES ( '126', '103', '01 - SPORT CENTER', 'NIKE', '5597.84', '', '2017-02-05', 'aprazo', '', '3', '1865.95', '');
INSERT INTO pedidos VALUES ( '127', '104', '01 - SPORT CENTER', 'NIKE', '12122.6', '', '2017-02-05', 'aprazo', '', '3', '4040.86', '');
INSERT INTO pedidos VALUES ( '128', '105', '01 - SPORT CENTER', 'NIKE', '5081', '', '2017-02-10', 'aprazo', '', '3', '1693.67', '');
INSERT INTO pedidos VALUES ( '129', '110', '01 - SPORT CENTER', 'ASICS', '29692', '', '2017-02-10', 'aprazo', '', '3', '9897.33', '');
INSERT INTO pedidos VALUES ( '130', '111', '01 - SPORT CENTER', 'ASICS', '3718.5', '', '2017-03-10', 'aprazo', '', '3', '1239.5', '');
INSERT INTO pedidos VALUES ( '131', '106', '01 - SPORT CENTER', 'NIKE', '5296', '', '2017-03-10', 'aprazo', '', '3', '1765.33', '');
INSERT INTO pedidos VALUES ( '132', '107', '01 - SPORT CENTER', 'NIKE', '10315.3', '', '2017-03-10', 'aprazo', '', '3', '3438.44', '');
INSERT INTO pedidos VALUES ( '133', '108', '01 - SPORT CENTER', 'NIKE', '13220', '', '2017-03-10', 'aprazo', '', '3', '4406.67', '');
INSERT INTO pedidos VALUES ( '134', '121', '01 - SPORT CENTER', 'BABOLAT', '3096', '', '2017-04-05', 'aprazo', '', '4', '774', '');
INSERT INTO pedidos VALUES ( '136', '112', '01 - SPORT CENTER', 'ASICS', '17566', '', '2017-04-10', 'aprazo', '', '3', '5855.33', '');
INSERT INTO pedidos VALUES ( '137', '113', '01 - SPORT CENTER', 'ASICS', '20573.7', '', '2017-05-10', 'aprazo', '', '3', '6857.9', '');
INSERT INTO pedidos VALUES ( '138', '114', '01 - SPORT CENTER', 'ASICS', '5278', '', '2017-06-10', 'aprazo', '', '3', '1759.33', '');
INSERT INTO pedidos VALUES ( '139', '208', '02 - PASSAREDO CALÇADOS', 'ASICS', '6238', '', '2016-12-05', 'aprazo', '', '3', '2079.33', '');
INSERT INTO pedidos VALUES ( '140', '209', '02 - PASSAREDO CALÇADOS', 'VVT MODA', '2285.62', '', '2016-12-05', 'aprazo', '', '3', '761.87', '');
INSERT INTO pedidos VALUES ( '141', '211', '02 - PASSAREDO CALÇADOS', 'GRENDENE', '2158', '', '2016-12-05', 'aprazo', '', '2', '1079', '');
INSERT INTO pedidos VALUES ( '142', '213', '02 - PASSAREDO CALÇADOS', 'CAL PEGADA', '3914', '', '2016-11-25', 'aprazo', '', '3', '1304.67', '');
INSERT INTO pedidos VALUES ( '143', '229', '02 - PASSAREDO CALÇADOS', 'TRIFIL', '490.34', '', '2016-11-25', 'aprazo', '', '3', '163.45', '');
INSERT INTO pedidos VALUES ( '144', '223', '02 - PASSAREDO CALÇADOS', 'HAVAIANAS', '2720', '', '2016-11-30', 'aprazo', '', '3', '906.67', '');
INSERT INTO pedidos VALUES ( '145', '234', '02 - PASSAREDO CALÇADOS', 'TERRA E AGUA', '379', '', '2016-12-05', 'aprazo', '', '3', '126.33', '');
INSERT INTO pedidos VALUES ( '147', '241', '02 - PASSAREDO CALÇADOS', 'DISNEY', '2721.6', '', '2016-11-25', 'aprazo', '', '3', '907.2', '');
INSERT INTO pedidos VALUES ( '148', '244', '02 - PASSAREDO CALÇADOS', 'VIZZANO', '2077.14', '', '2016-11-25', 'aprazo', '', '3', '692.38', '');
INSERT INTO pedidos VALUES ( '149', '248', '02 - PASSAREDO CALÇADOS', 'KOLOSH', '2175', '', '2016-11-25', 'aprazo', '', '3', '725', '');
INSERT INTO pedidos VALUES ( '151', '253', '02 - PASSAREDO CALÇADOS', 'INVOICE', '9040', '', '2016-11-25', 'aprazo', '', '3', '3013.33', '');
INSERT INTO pedidos VALUES ( '152', '254', '02 - PASSAREDO CALÇADOS', 'VIZZANO', '2692', '', '2016-11-25', 'aprazo', '', '3', '897.33', '');
INSERT INTO pedidos VALUES ( '153', '263', '02 - PASSAREDO CALÇADOS', 'OPANANKEN', '2018', '', '2016-12-05', 'aprazo', '', '4', '504.5', '');
INSERT INTO pedidos VALUES ( '154', '273', '02 - PASSAREDO CALÇADOS', 'BEIRA RIO', '2811', '', '2016-11-25', 'aprazo', '', '3', '937', '');
INSERT INTO pedidos VALUES ( '157', '329', '02 - PASSAREDO CALÇADOS', 'CALÇ BOTTERO', '1631', '', '2016-11-25', 'aprazo', '', '3', '543.67', '');
INSERT INTO pedidos VALUES ( '160', '258', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '13911', '', '2017-01-16', 'aprazo', '', '3', '4637', '');
INSERT INTO pedidos VALUES ( '161', '255', '02 - PASSAREDO CALÇADOS', 'RANDALL', '7222.28', '', '2017-01-16', 'aprazo', '', '1', '7222.28', '');
INSERT INTO pedidos VALUES ( '162', '251', '02 - PASSAREDO CALÇADOS', 'KIDY', '1581.6', '', '2017-01-20', 'aprazo', '', '3', '527.2', '');
INSERT INTO pedidos VALUES ( '163', '250', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '1378', '', '2017-01-10', 'aprazo', '', '3', '459.33', '');
INSERT INTO pedidos VALUES ( '164', '249', '02 - PASSAREDO CALÇADOS', 'DENZEL', '2188.8', '', '2017-01-02', 'aprazo', '', '3', '729.6', '');
INSERT INTO pedidos VALUES ( '165', '259', '02 - PASSAREDO CALÇADOS', 'RANDALL', '6571.18', '', '2017-02-02', 'aprazo', '', '1', '6571.18', '');
INSERT INTO pedidos VALUES ( '166', '261', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '11393', '', '2017-03-05', 'aprazo', '', '3', '3797.67', '');
INSERT INTO pedidos VALUES ( '167', '262', '02 - PASSAREDO CALÇADOS', 'CHENSON', '12546.6', '', '2017-03-15', 'aprazo', '', '3', '4182.2', '');
INSERT INTO pedidos VALUES ( '168', '203', '02 - PASSAREDO CALÇADOS', 'RANDALL', '430.44', '', '2016-12-17', 'aprazo', '', '1', '430.44', '');
INSERT INTO pedidos VALUES ( '169', '214', '02 - PASSAREDO CALÇADOS', 'PENALTY', '1895.04', '', '2016-12-02', 'aprazo', '', '3', '631.68', '');
INSERT INTO pedidos VALUES ( '170', '215', '02 - PASSAREDO CALÇADOS', 'LUPO', '1936', '', '2016-12-05', 'aprazo', '', '3', '645.33', '');
INSERT INTO pedidos VALUES ( '171', '216', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '2500', '', '2016-12-05', 'aprazo', '', '3', '833.33', '');
INSERT INTO pedidos VALUES ( '172', '264', '02 - PASSAREDO CALÇADOS', 'ASICS', '15494', '', '2017-01-15', 'aprazo', '', '3', '5164.67', '');
INSERT INTO pedidos VALUES ( '178', '265', '02 - PASSAREDO CALÇADOS', 'ASICS', '9536', '', '2017-02-15', 'aprazo', '', '3', '3178.67', '');
INSERT INTO pedidos VALUES ( '179', '266', '02 - PASSAREDO CALÇADOS', 'ASICS', '7668', '', '2017-04-15', 'aprazo', '', '3', '2556', '');
INSERT INTO pedidos VALUES ( '180', '267', '02 - PASSAREDO CALÇADOS', 'ASICS', '11455.8', '', '2017-05-15', 'aprazo', '', '3', '3818.6', '');
INSERT INTO pedidos VALUES ( '183', '210', '02 - PASSAREDO CALÇADOS', 'GRENDENE', '6431', '', '2016-12-05', 'aprazo', '', '2', '3215.5', '');
INSERT INTO pedidos VALUES ( '184', '224', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '1438.8', '', '2016-12-05', 'aprazo', '', '3', '479.6', '');
INSERT INTO pedidos VALUES ( '185', '256', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '15981', '', '2016-12-05', 'aprazo', '', '3', '5327', '');
INSERT INTO pedidos VALUES ( '189', '269', '02 - PASSAREDO CALÇADOS', 'MIZUNO', '7077', '', '2017-01-20', 'aprazo', '', '3', '2359', '');
INSERT INTO pedidos VALUES ( '190', '260', '02 - PASSAREDO CALÇADOS', 'OLYMPIKUS', '25000', '', '2017-02-15', 'aprazo', '', '3', '8333.33', '');
INSERT INTO pedidos VALUES ( '191', '56', '01 - SPORT CENTER', 'PENALTY', '6665', '', '2016-12-10', 'aprazo', '', '3', '2221.67', '');
INSERT INTO pedidos VALUES ( '192', '130', '01 - SPORT CENTER', 'PENALTY', '7253.14', '', '2017-01-15', 'aprazo', '', '3', '2417.71', '');
INSERT INTO pedidos VALUES ( '193', '131', '01 - SPORT CENTER', 'PENALTY', '7771.8', '', '2017-02-10', 'aprazo', '', '3', '2590.6', '');
INSERT INTO pedidos VALUES ( '195', '204', '02 - PASSAREDO CALÇADOS', 'AZALEIA', '2400', '', '2016-12-20', 'aprazo', '', '3', '800', '');
INSERT INTO pedidos VALUES ( '196', '205', '02 - PASSAREDO CALÇADOS', 'PARISI', '4397.4', '', '2017-02-10', 'aprazo', '', '3', '1465.8', '');
INSERT INTO pedidos VALUES ( '197', '206', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '1138.18', '', '2016-12-20', 'aprazo', '', '3', '379.39', '');
INSERT INTO pedidos VALUES ( '198', '207', '02 - PASSAREDO CALÇADOS', 'PICADILLY', '1138.18', '', '2016-12-20', 'aprazo', '', '3', '379.39', '');
INSERT INTO pedidos VALUES ( '200', '217', '02 - PASSAREDO CALÇADOS', 'DENZEL', '2188.8', '', '2017-01-02', 'aprazo', '', '3', '729.6', '');
INSERT INTO pedidos VALUES ( '201', '218', '02 - PASSAREDO CALÇADOS', 'CALVEST', '3588', '', '2017-01-20', 'aprazo', '', '3', '1196', '');
INSERT INTO pedidos VALUES ( '203', '133', '01 - SPORT CENTER', 'CBC', '18803.7', '', '2016-12-26', 'aprazo', '', '5', '3760.73', '');
INSERT INTO pedidos VALUES ( '204', '134', '01 - SPORT CENTER', 'TRILHAS E RUMOS', '11961.1', '', '2016-12-30', 'aprazo', '', '', '2990.28', '');

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

INSERT INTO usuario VALUES ( '3', 'Administrador do Sistema', '000.000.000-00', 'Areal/Águas Claras', '(99) 9999-9999', '(99) 99999-9999', 'raphael.a.a.p@gmail.com', 'Administrador', 'administrador', 'admin2016');
INSERT INTO usuario VALUES ( '5', 'Sandra', '125.586.654-44', '', '', '', 'sandralessal2@gmail.com', 'Administrador', 'sandra', '123456');

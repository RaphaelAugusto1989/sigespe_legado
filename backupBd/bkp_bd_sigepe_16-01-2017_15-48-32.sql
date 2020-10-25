
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

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
INSERT INTO condicoes_pagamentos VALUES ( '35', '31', '', '28', '42', '56', '70', '84');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO cotas VALUES ( '5', '01 - SPORT CENTER', '', 'Novembro', '2016', '100000', '-117390');
INSERT INTO cotas VALUES ( '7', '01 - SPORT CENTER', '', 'Dezembro', '2016', '50000', '-150407');
INSERT INTO cotas VALUES ( '8', '01 - SPORT CENTER', '', 'Janeiro', '2017', '50000', '-11444.8');
INSERT INTO cotas VALUES ( '9', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-10265.2');
INSERT INTO cotas VALUES ( '10', '01 - SPORT CENTER', '', 'Mar√ßo', '2017', '50000', '-32549.8');
INSERT INTO cotas VALUES ( '11', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '-55720.5');
INSERT INTO cotas VALUES ( '12', '01 - SPORT CENTER', '', 'Maio', '2017', '50000', '-38798.2');
INSERT INTO cotas VALUES ( '13', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-60265.2');
INSERT INTO cotas VALUES ( '14', '01 - SPORT CENTER', '', 'Mar√ßo', '2017', '50000', '17450.2');
INSERT INTO cotas VALUES ( '15', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '-5720.48');
INSERT INTO cotas VALUES ( '16', '01 - SPORT CENTER', '', 'Maio', '2017', '50', '-38748.2');
INSERT INTO cotas VALUES ( '17', '01 - SPORT CENTER', '', 'Fevereiro', '2017', '50000', '-60265.2');
INSERT INTO cotas VALUES ( '18', '01 - SPORT CENTER', '', 'Mar√ßo', '2017', '50000', '17450.2');
INSERT INTO cotas VALUES ( '19', '01 - SPORT CENTER', '', 'Abril', '2017', '50000', '-5720.48');
INSERT INTO cotas VALUES ( '20', '02 - PASSAREDO CAL√áADOS', '', 'Novembro', '2016', '150000', '115422');
INSERT INTO cotas VALUES ( '21', '02 - PASSAREDO CAL√áADOS', '', 'Janeiro', '2017', '50000', '-57136.3');
INSERT INTO cotas VALUES ( '22', '02 - PASSAREDO CAL√áADOS', '', 'Fevereiro', '2017', '60000', '-15841.4');
INSERT INTO cotas VALUES ( '23', '02 - PASSAREDO CAL√áADOS', '', 'Mar√ßo', '2017', '50000', '23661.6');
INSERT INTO cotas VALUES ( '24', '02 - PASSAREDO CAL√áADOS', '', 'Abril', '2017', '50000', '30815.6');
INSERT INTO cotas VALUES ( '25', '02 - PASSAREDO CAL√áADOS', '', 'Maio', '2017', '50000', '27749');
INSERT INTO cotas VALUES ( '27', '02 - PASSAREDO CAL√áADOS', '', 'Dezembro', '2016', '10000', '-10928.9');
INSERT INTO cotas VALUES ( '28', '01 - SPORT CENTER', '', 'Junho', '2017', '50000', '0');
INSERT INTO cotas VALUES ( '29', '01 - SPORT CENTER', '', 'Junho', '2017', '50000', '40709.8');
INSERT INTO cotas VALUES ( '30', '01 - SPORT CENTER', '', 'Julho', '2017', '100000', '-14858');
INSERT INTO cotas VALUES ( '31', '01 - SPORT CENTER', '', 'Agosto', '2016', '100000', '100000');
INSERT INTO cotas VALUES ( '32', '01 - SPORT CENTER', '', 'Agosto', '2017', '100000', '92457.8');
INSERT INTO cotas VALUES ( '33', '01 - SPORT CENTER', '', 'Setembro', '2017', '100000', '91002.3');

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
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

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
INSERT INTO datas_pag_pedidos VALUES ( '563', '269', '1', '2017-03-17', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '564', '269', '2', '2017-03-31', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '565', '269', '3', '2017-04-14', '2359');
INSERT INTO datas_pag_pedidos VALUES ( '566', '260', '1', '2017-03-22', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '567', '260', '2', '2017-04-19', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '568', '260', '3', '2017-05-17', '8333.33');
INSERT INTO datas_pag_pedidos VALUES ( '575', '131', '1', '2017-04-07', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '576', '131', '2', '2017-04-21', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '577', '131', '3', '2017-05-05', '2590.6');
INSERT INTO datas_pag_pedidos VALUES ( '584', '205', '1', '2017-04-11', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '585', '205', '2', '2017-05-11', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '586', '205', '3', '2017-06-10', '1465.8');
INSERT INTO datas_pag_pedidos VALUES ( '594', '217', '1', '2017-03-03', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '595', '217', '2', '2017-04-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '596', '217', '3', '2017-05-02', '729.6');
INSERT INTO datas_pag_pedidos VALUES ( '611', '048', '1', '2017-01-31', '2588.67');
INSERT INTO datas_pag_pedidos VALUES ( '612', '048', '2', '2017-02-14', '2588.67');
INSERT INTO datas_pag_pedidos VALUES ( '613', '048', '3', '2017-02-28', '2588.67');
INSERT INTO datas_pag_pedidos VALUES ( '614', '050', '1', '2017-01-31', '133.32');
INSERT INTO datas_pag_pedidos VALUES ( '615', '050', '2', '2017-02-14', '133.32');
INSERT INTO datas_pag_pedidos VALUES ( '616', '050', '3', '2017-02-28', '133.32');
INSERT INTO datas_pag_pedidos VALUES ( '620', '047', '1', '2017-01-31', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '621', '047', '2', '2017-02-14', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '622', '047', '3', '2017-02-28', '1499.92');
INSERT INTO datas_pag_pedidos VALUES ( '623', '053', '1', '2017-01-19', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '624', '053', '2', '2017-02-18', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '625', '053', '3', '2017-03-20', '790.33');
INSERT INTO datas_pag_pedidos VALUES ( '626', '066', '1', '2017-02-14', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '627', '066', '2', '2017-02-28', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '628', '066', '3', '2017-03-14', '66.67');
INSERT INTO datas_pag_pedidos VALUES ( '629', '067', '1', '2017-02-14', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '630', '067', '2', '2017-02-28', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '631', '067', '3', '2017-03-14', '72.8');
INSERT INTO datas_pag_pedidos VALUES ( '632', '068', '1', '2017-02-14', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '633', '068', '2', '2017-02-28', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '634', '068', '3', '2017-03-14', '835.33');
INSERT INTO datas_pag_pedidos VALUES ( '635', '002', '1', '2017-01-17', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '636', '002', '2', '2017-01-31', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '637', '002', '3', '2017-02-14', '631.76');
INSERT INTO datas_pag_pedidos VALUES ( '641', '055', '1', '2017-02-14', '960.34');
INSERT INTO datas_pag_pedidos VALUES ( '642', '055', '2', '2017-02-28', '960.34');
INSERT INTO datas_pag_pedidos VALUES ( '643', '055', '3', '2017-03-14', '960.34');
INSERT INTO datas_pag_pedidos VALUES ( '644', '56', '1', '2017-02-14', '2347');
INSERT INTO datas_pag_pedidos VALUES ( '645', '56', '2', '2017-02-28', '2347');
INSERT INTO datas_pag_pedidos VALUES ( '646', '56', '3', '2017-03-14', '2347');
INSERT INTO datas_pag_pedidos VALUES ( '647', '135', '1', '2017-06-05', '2045.13');
INSERT INTO datas_pag_pedidos VALUES ( '648', '135', '2', '2017-06-19', '2045.13');
INSERT INTO datas_pag_pedidos VALUES ( '649', '135', '3', '2017-07-03', '2045.13');
INSERT INTO datas_pag_pedidos VALUES ( '650', '136', '1', '2017-06-05', '1165.69');
INSERT INTO datas_pag_pedidos VALUES ( '651', '136', '2', '2017-06-19', '1165.69');
INSERT INTO datas_pag_pedidos VALUES ( '652', '136', '3', '2017-07-03', '1165.69');
INSERT INTO datas_pag_pedidos VALUES ( '653', '137', '1', '2017-06-05', '0');
INSERT INTO datas_pag_pedidos VALUES ( '654', '137', '2', '2017-06-19', '0');
INSERT INTO datas_pag_pedidos VALUES ( '655', '137', '3', '2017-07-03', '0');
INSERT INTO datas_pag_pedidos VALUES ( '656', '138', '1', '2017-07-05', '3920.41');
INSERT INTO datas_pag_pedidos VALUES ( '657', '138', '2', '2017-07-19', '3920.41');
INSERT INTO datas_pag_pedidos VALUES ( '658', '138', '3', '2017-08-02', '3920.41');
INSERT INTO datas_pag_pedidos VALUES ( '659', '139', '1', '2017-07-05', '1202.54');
INSERT INTO datas_pag_pedidos VALUES ( '660', '139', '2', '2017-07-19', '1202.54');
INSERT INTO datas_pag_pedidos VALUES ( '661', '139', '3', '2017-08-02', '1202.54');
INSERT INTO datas_pag_pedidos VALUES ( '662', '140', '1', '2017-07-05', '951.91');
INSERT INTO datas_pag_pedidos VALUES ( '663', '140', '2', '2017-07-19', '951.91');
INSERT INTO datas_pag_pedidos VALUES ( '664', '140', '3', '2017-08-02', '951.91');
INSERT INTO datas_pag_pedidos VALUES ( '665', '141', '1', '2017-08-05', '1337.42');
INSERT INTO datas_pag_pedidos VALUES ( '666', '141', '2', '2017-08-19', '1337.42');
INSERT INTO datas_pag_pedidos VALUES ( '667', '141', '3', '2017-09-02', '1337.42');
INSERT INTO datas_pag_pedidos VALUES ( '668', '142', '1', '2017-09-04', '2004.8');
INSERT INTO datas_pag_pedidos VALUES ( '669', '142', '2', '2017-09-18', '2004.8');
INSERT INTO datas_pag_pedidos VALUES ( '670', '142', '3', '2017-10-02', '2004.8');
INSERT INTO datas_pag_pedidos VALUES ( '671', '143', '1', '2017-09-04', '1473.94');
INSERT INTO datas_pag_pedidos VALUES ( '672', '143', '2', '2017-09-18', '1473.94');
INSERT INTO datas_pag_pedidos VALUES ( '673', '143', '3', '2017-10-02', '1473.94');
INSERT INTO datas_pag_pedidos VALUES ( '674', '144', '1', '2017-10-05', '0');
INSERT INTO datas_pag_pedidos VALUES ( '675', '144', '2', '2017-10-19', '0');
INSERT INTO datas_pag_pedidos VALUES ( '676', '144', '3', '2017-11-02', '0');
INSERT INTO datas_pag_pedidos VALUES ( '677', '145', '1', '2017-10-05', '1390.74');
INSERT INTO datas_pag_pedidos VALUES ( '678', '145', '2', '2017-10-19', '1390.74');
INSERT INTO datas_pag_pedidos VALUES ( '679', '145', '3', '2017-11-02', '1390.74');
INSERT INTO datas_pag_pedidos VALUES ( '680', '146', '1', '2017-11-05', '1150.08');
INSERT INTO datas_pag_pedidos VALUES ( '681', '146', '2', '2017-11-19', '1150.08');
INSERT INTO datas_pag_pedidos VALUES ( '682', '146', '3', '2017-12-03', '1150.08');
INSERT INTO datas_pag_pedidos VALUES ( '683', '147', '1', '2017-11-05', '1849.16');
INSERT INTO datas_pag_pedidos VALUES ( '684', '147', '2', '2017-11-19', '1849.16');
INSERT INTO datas_pag_pedidos VALUES ( '685', '147', '3', '2017-12-03', '1849.16');
INSERT INTO datas_pag_pedidos VALUES ( '686', '256', '1', '2017-01-30', '4776.67');
INSERT INTO datas_pag_pedidos VALUES ( '687', '256', '2', '2017-02-27', '4776.67');
INSERT INTO datas_pag_pedidos VALUES ( '688', '256', '3', '2017-03-27', '4776.67');
INSERT INTO datas_pag_pedidos VALUES ( '696', '214', '1', '2017-02-20', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '697', '214', '2', '2017-03-06', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '698', '214', '3', '2017-03-20', '631.68');
INSERT INTO datas_pag_pedidos VALUES ( '699', '273', '1', '2017-02-24', '937');
INSERT INTO datas_pag_pedidos VALUES ( '700', '273', '2', '2017-03-26', '937');
INSERT INTO datas_pag_pedidos VALUES ( '701', '273', '3', '2017-04-25', '937');
INSERT INTO datas_pag_pedidos VALUES ( '702', '254', '1', '2017-02-24', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '703', '254', '2', '2017-03-26', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '704', '254', '3', '2017-04-25', '897.33');
INSERT INTO datas_pag_pedidos VALUES ( '705', '209', '1', '2017-02-09', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '706', '209', '2', '2017-03-11', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '707', '209', '3', '2017-04-10', '761.87');
INSERT INTO datas_pag_pedidos VALUES ( '708', '216', '1', '2017-02-24', '1166.67');
INSERT INTO datas_pag_pedidos VALUES ( '709', '216', '2', '2017-03-26', '1166.67');
INSERT INTO datas_pag_pedidos VALUES ( '710', '216', '3', '2017-04-25', '1166.67');
INSERT INTO datas_pag_pedidos VALUES ( '711', '329', '1', '2017-01-15', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '712', '329', '2', '2017-01-25', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '713', '329', '3', '2017-02-04', '543.67');
INSERT INTO datas_pag_pedidos VALUES ( '714', '253', '1', '2017-02-24', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '715', '253', '2', '2017-03-26', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '716', '253', '3', '2017-04-25', '3013.33');
INSERT INTO datas_pag_pedidos VALUES ( '717', '049', '1', '2017-02-05', '4610.67');
INSERT INTO datas_pag_pedidos VALUES ( '718', '049', '2', '2017-02-19', '4610.67');
INSERT INTO datas_pag_pedidos VALUES ( '719', '049', '3', '2017-03-05', '4610.67');
INSERT INTO datas_pag_pedidos VALUES ( '728', '130', '1', '2017-02-26', '1409');
INSERT INTO datas_pag_pedidos VALUES ( '729', '130', '2', '2017-03-12', '1409');
INSERT INTO datas_pag_pedidos VALUES ( '730', '130', '3', '2017-03-26', '1409');
INSERT INTO datas_pag_pedidos VALUES ( '731', '133', '1', '2016-01-29', '1084.4');
INSERT INTO datas_pag_pedidos VALUES ( '732', '133', '2', '2016-02-12', '1084.4');
INSERT INTO datas_pag_pedidos VALUES ( '733', '133', '3', '2016-02-26', '1084.4');
INSERT INTO datas_pag_pedidos VALUES ( '734', '133', '4', '2016-03-11', '1084.4');
INSERT INTO datas_pag_pedidos VALUES ( '735', '133', '5', '2016-03-25', '1084.4');
INSERT INTO datas_pag_pedidos VALUES ( '738', '215', '1', '2017-03-02', '442.13');
INSERT INTO datas_pag_pedidos VALUES ( '739', '215', '2', '2017-04-01', '442.13');
INSERT INTO datas_pag_pedidos VALUES ( '740', '215', '3', '2017-05-01', '442.13');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ;

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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO pedidos VALUES ( '54', '100', '01 - SPORT CENTER', 'NIKE', '6215.88', '', '2017-01-10', 'aprazo', '', '3', '2071.96', '');
INSERT INTO pedidos VALUES ( '55', '101', '01 - SPORT CENTER', 'NIKE', '9293', '', '2017-01-10', 'aprazo', '', '3', '3097.67', '');
INSERT INTO pedidos VALUES ( '56', '102', '01 - SPORT CENTER', 'NIKE', '1866', '', '2017-01-10', 'aprazo', '', '3', '622', '');
INSERT INTO pedidos VALUES ( '57', '115', '01 - SPORT CENTER', 'MIZUNO', '14875.8', '', '2017-01-10', 'aprazo', '', '3', '4958.6', '');
INSERT INTO pedidos VALUES ( '58', '109', '01 - SPORT CENTER', 'ASICS', '21941', '', '2017-01-10', 'aprazo', '', '3', '7313.67', '');
INSERT INTO pedidos VALUES ( '91', '275', '02 - PASSAREDO CAL√áADOS', 'RANDALL', '7222.28', '', '2017-01-15', 'aprazo', '', '1', '7222.28', '');
INSERT INTO pedidos VALUES ( '92', '276', '02 - PASSAREDO CAL√áADOS', 'KIDY', '1581.6', '', '2017-01-20', 'aprazo', '', '3', '527.2', '');
INSERT INTO pedidos VALUES ( '95', '274', '02 - PASSAREDO CAL√áADOS', 'FOCAL FLEX', '5251', '', '2017-01-30', 'aprazo', '', '4', '1312.75', '');
INSERT INTO pedidos VALUES ( '102', '002', '01 - SPORT CENTER', 'BABOLAT', '1895.28', '', '2016-12-20', 'aprazo', '01', '3', '631.76', '');
INSERT INTO pedidos VALUES ( '110', '047', '01 - SPORT CENTER', 'ADIDAS', '4499.76', '', '2016-12-20', 'aprazo', '02', '3', '1499.92', '');
INSERT INTO pedidos VALUES ( '111', '048', '01 - SPORT CENTER', 'ADIDAS', '7766', '', '2016-12-20', 'aprazo', '02', '3', '2588.67', '');
INSERT INTO pedidos VALUES ( '112', '049', '01 - SPORT CENTER', 'ADIDAS', '13832', '', '2016-12-25', 'aprazo', '02', '3', '4610.67', '');
INSERT INTO pedidos VALUES ( '115', '053', '01 - SPORT CENTER', 'BRAZILINE', '2371', '', '2016-12-20', 'aprazo', '09', '3', '790.33', '');
INSERT INTO pedidos VALUES ( '118', '066', '01 - SPORT CENTER', 'NIKE', '200', '', '2016-12-20', 'aprazo', '03', '3', '66.67', '');
INSERT INTO pedidos VALUES ( '119', '067', '01 - SPORT CENTER', 'NIKE', '218.4', '', '2016-12-20', 'aprazo', '03', '3', '72.8', '');
INSERT INTO pedidos VALUES ( '120', '068', '01 - SPORT CENTER', 'NIKE', '2506', '', '2016-12-20', 'aprazo', '03', '3', '835.33', '');
INSERT INTO pedidos VALUES ( '123', '050', '01 - SPORT CENTER', 'ADIDAS', '399.96', '', '2016-12-20', 'aprazo', '02', '3', '133.32', '');
INSERT INTO pedidos VALUES ( '125', '055', '01 - SPORT CENTER', 'SPR', '2881.02', '', '2016-12-20', 'aprazo', '03', '3', '960.34', '');
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
INSERT INTO pedidos VALUES ( '140', '209', '02 - PASSAREDO CAL√áADOS', 'VVT MODA', '2285.62', '', '2016-12-26', 'aprazo', '26', '3', '761.87', '');
INSERT INTO pedidos VALUES ( '151', '253', '02 - PASSAREDO CAL√áADOS', 'INVOICE', '9040', '', '2016-12-26', 'aprazo', '13', '3', '3013.33', '');
INSERT INTO pedidos VALUES ( '152', '254', '02 - PASSAREDO CAL√áADOS', 'VIZZANO', '2692', '', '2016-12-26', 'aprazo', '13', '3', '897.33', '');
INSERT INTO pedidos VALUES ( '154', '273', '02 - PASSAREDO CAL√áADOS', 'BEIRA RIO', '2811', '', '2016-12-26', 'aprazo', '13', '3', '937', '');
INSERT INTO pedidos VALUES ( '157', '329', '02 - PASSAREDO CAL√áADOS', 'CAL√á BOTTERO', '1631', '', '2016-12-26', 'aprazo', '16', '3', '543.67', '');
INSERT INTO pedidos VALUES ( '160', '258', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '13911', '', '2017-01-16', 'aprazo', '', '3', '4637', '');
INSERT INTO pedidos VALUES ( '161', '255', '02 - PASSAREDO CAL√áADOS', 'RANDALL', '7222.28', '', '2017-01-16', 'aprazo', '', '1', '7222.28', '');
INSERT INTO pedidos VALUES ( '162', '251', '02 - PASSAREDO CAL√áADOS', 'KIDY', '1581.6', '', '2017-01-20', 'aprazo', '', '3', '527.2', '');
INSERT INTO pedidos VALUES ( '163', '250', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '1378', '', '2017-01-10', 'aprazo', '', '3', '459.33', '');
INSERT INTO pedidos VALUES ( '164', '249', '02 - PASSAREDO CAL√áADOS', 'DENZEL', '2188.8', '', '2017-01-02', 'aprazo', '', '3', '729.6', '');
INSERT INTO pedidos VALUES ( '165', '259', '02 - PASSAREDO CAL√áADOS', 'RANDALL', '6571.18', '', '2017-02-02', 'aprazo', '', '1', '6571.18', '');
INSERT INTO pedidos VALUES ( '166', '261', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '11393', '', '2017-03-05', 'aprazo', '', '3', '3797.67', '');
INSERT INTO pedidos VALUES ( '167', '262', '02 - PASSAREDO CAL√áADOS', 'CHENSON', '12546.6', '', '2017-03-15', 'aprazo', '', '3', '4182.2', '');
INSERT INTO pedidos VALUES ( '169', '214', '02 - PASSAREDO CAL√áADOS', 'PENALTY', '1895.04', '', '2016-12-26', 'aprazo', '03', '3', '631.68', '');
INSERT INTO pedidos VALUES ( '170', '215', '02 - PASSAREDO CAL√áADOS', 'LUPO', '1326.4', '', '2017-01-01', 'aprazo', '13', '3', '442.13', '');
INSERT INTO pedidos VALUES ( '171', '216', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '3500', '', '2016-12-26', 'aprazo', '13', '3', '1166.67', '');
INSERT INTO pedidos VALUES ( '172', '264', '02 - PASSAREDO CAL√áADOS', 'ASICS', '15494', '', '2017-01-15', 'aprazo', '', '3', '5164.67', '');
INSERT INTO pedidos VALUES ( '178', '265', '02 - PASSAREDO CAL√áADOS', 'ASICS', '9536', '', '2017-02-15', 'aprazo', '', '3', '3178.67', '');
INSERT INTO pedidos VALUES ( '179', '266', '02 - PASSAREDO CAL√áADOS', 'ASICS', '7668', '', '2017-04-15', 'aprazo', '', '3', '2556', '');
INSERT INTO pedidos VALUES ( '180', '267', '02 - PASSAREDO CAL√áADOS', 'ASICS', '11455.8', '', '2017-05-15', 'aprazo', '', '3', '3818.6', '');
INSERT INTO pedidos VALUES ( '185', '256', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '14330', '', '2016-12-26', 'aprazo', '07', '3', '4776.67', '');
INSERT INTO pedidos VALUES ( '189', '269', '02 - PASSAREDO CAL√áADOS', 'MIZUNO', '7077', '', '2017-01-20', 'aprazo', '', '3', '2359', '');
INSERT INTO pedidos VALUES ( '190', '260', '02 - PASSAREDO CAL√áADOS', 'OLYMPIKUS', '25000', '', '2017-02-15', 'aprazo', '', '3', '8333.33', '');
INSERT INTO pedidos VALUES ( '191', '56', '01 - SPORT CENTER', 'PENALTY', '7041', '', '2016-12-20', 'aprazo', '03', '3', '2347', '');
INSERT INTO pedidos VALUES ( '192', '130', '01 - SPORT CENTER', 'PENALTY', '4227', '', '2017-01-01', 'aprazo', '03', '3', '1409', '');
INSERT INTO pedidos VALUES ( '193', '131', '01 - SPORT CENTER', 'PENALTY', '7771.8', '', '2017-02-10', 'aprazo', '', '3', '2590.6', '');
INSERT INTO pedidos VALUES ( '196', '205', '02 - PASSAREDO CAL√áADOS', 'PARISI', '4397.4', '', '2017-02-10', 'aprazo', '', '3', '1465.8', '');
INSERT INTO pedidos VALUES ( '200', '217', '02 - PASSAREDO CAL√áADOS', 'DENZEL', '2188.8', '', '2017-01-02', 'aprazo', '', '3', '729.6', '');
INSERT INTO pedidos VALUES ( '203', '133', '01 - SPORT CENTER', 'CBC', '5422', '', '2016-01-01', 'aprazo', '24', '5', '1084.4', '');
INSERT INTO pedidos VALUES ( '205', '135', '01 - SPORT CENTER', 'NIKE', '6135.4', '', '2017-04-10', 'aprazo', '', '3', '2045.13', '');
INSERT INTO pedidos VALUES ( '206', '136', '01 - SPORT CENTER', 'NIKE', '3497.08', '', '2017-04-10', 'aprazo', '', '3', '1165.69', '');
INSERT INTO pedidos VALUES ( '207', '137', '01 - SPORT CENTER', 'NIKE', '7860', '', '2017-04-10', 'aprazo', '', '3', '0', '');
INSERT INTO pedidos VALUES ( '208', '138', '01 - SPORT CENTER', 'NIKE', '11761.2', '', '2017-05-10', 'aprazo', '', '3', '3920.41', '');
INSERT INTO pedidos VALUES ( '209', '139', '01 - SPORT CENTER', 'NIKE', '3607.61', '', '2017-05-10', 'aprazo', '', '3', '1202.54', '');
INSERT INTO pedidos VALUES ( '210', '140', '01 - SPORT CENTER', 'NIKE', '2855.74', '', '2017-05-10', 'aprazo', '', '3', '951.91', '');
INSERT INTO pedidos VALUES ( '211', '141', '01 - SPORT CENTER', 'NIKE', '4012.25', '', '2017-06-10', 'aprazo', '', '3', '1337.42', '');
INSERT INTO pedidos VALUES ( '212', '142', '01 - SPORT CENTER', 'NIKE', '6014.4', '', '2017-07-10', 'aprazo', '', '3', '2004.8', '');
INSERT INTO pedidos VALUES ( '213', '143', '01 - SPORT CENTER', 'NIKE', '4421.82', '', '2017-07-10', 'aprazo', '', '3', '1473.94', '');
INSERT INTO pedidos VALUES ( '214', '144', '01 - SPORT CENTER', 'NIKE', '3370', '', '2017-08-10', 'aprazo', '', '3', '0', '');
INSERT INTO pedidos VALUES ( '215', '145', '01 - SPORT CENTER', 'NIKE', '4172.22', '', '2017-08-10', 'aprazo', '', '3', '1390.74', '');
INSERT INTO pedidos VALUES ( '216', '146', '01 - SPORT CENTER', 'NIKE', '3450.24', '', '2017-09-10', 'aprazo', '', '3', '1150.08', '');
INSERT INTO pedidos VALUES ( '217', '147', '01 - SPORT CENTER', 'NIKE', '5547.48', '', '2017-09-10', 'aprazo', '', '3', '1849.16', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#


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
  `senha_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluÌdos na tabela
#

INSERT INTO usuario VALUES ( '3', 'Administrador do Sistema', '000.000.000-00', 'Areal/√Åguas Claras', '(99) 9999-9999', '(99) 99999-9999', 'raphael.a.a.p@gmail.com', 'Administrador', 'administrador', 'admin2016');
INSERT INTO usuario VALUES ( '5', 'Sandra', '125.586.654-44', '', '', '', 'sandralessal2@gmail.com', 'Administrador', 'sandra', '123456');

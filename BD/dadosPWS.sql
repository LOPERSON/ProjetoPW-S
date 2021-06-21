use projetopws;

insert into aeroportos values
(default, 'Aeroporto de Lisboa', 'Lisboa', 'Portugal', 'Alameda das Comunidades Portuguesas, 1700-111 Lisboa'),
(default, 'Aeroporto Francisco Sa Carneiro', 'Porto', 'Portugal', '4470-558 Vila Nova da Telha'),
(default, 'Aeroporto Internacional Domodedovo', 'Moscovo', 'Russia', 'Moscow Oblast, Rússia'),
(default, 'Aeroporto de Helsinquia-Vantaa', 'Helsinquia ', 'Finlandia', '01531 Vantaa, Finlândia'),
(default, 'Aeroporto de Hamburgo', 'Hamburgo', 'Alemanha', 'Flughafenstr. 1-3, 22335 Hamburg, Alemanha'),
(default, 'Aeroporto de Copenhaga', 'Copenhaga', 'Dinamarca', 'Lufthavnsboulevarden 6, 2770 Kastrup, Dinamarca'),
(default, 'Aeroporto de Paris-Charles de Gaulle', 'Paris', 'Franca', '95700 Roissy-en-France, Franca'),
(default, 'Aeroporto de Madrid-Barajas', 'Madrid', 'Espanha', 'Av de la Hispanidad, s/n, 28042 Madrid, Espanha'),
(default, 'Aeroporto de Budapeste Ferenc Liszt', 'Budapeste', 'Hungria', 'Budapest, 1185 Hungria'),
(default, 'Aeroporto de Amesterdão Schiphol', 'Amesterdao', 'Paises Baixos', 'Evert van de Beekstraat 202, 1118 CP Schiphol, Paises Baixos'),
(default, 'Aeroporto Internacional de Roma', 'Roma', 'Italia', "Via dell'Aeroporto di Fiumicino, 00054 Fiumicino RM, Italia"),
(default, 'Aeroporto de Manchester', 'Manchester', 'Reino Unido', 'Manchester M90 1QX, Reino Unido'),
(default, 'Aeroporto de Londres Heathrow', 'Londres', 'Reino Unido', 'Longford TW6, Reino Unido');

insert into users values
(default, 'Tiago', 'Ruhle', '999999999', '2202414@my.ipleiria.pt', 'Rua da bebida, nr 80', 'yoyo', '1234', 'administrador'),
(default, 'Bruno', 'Lopes', '988888888', '2201104@my.ipleiria.pt', 'Rua dos casais, nr 62', 'bruno', '1234', 'administrador'),
(default, 'Tiago', 'Gomes', '977777777', '2201123@my.ipleiria.pt', 'Rua do C, nr 74', 'tiago', '1234', 'administrador'),
(default, 'Adelia', 'Paiao', '945645642', 'adelia9876@gmail.com', 'Avenida do Rei Marco, nr 54', 'adelia', '1234', 'gestor'),
(default, 'Joao', 'Turco', '912121212', 'joao.turco@hotmail.com', 'Avenida dos Reis, nr 8', 'joao', '1234', 'operador'),
(default, 'Matias', 'Lopes', '987324973', '2201106@my.ipleiria.pt', 'Largo dos frangos, nr 14', 'matias', '1234', 'passageiro'),
(default, 'Lucas', 'Moribundo', '912987123', '2201118@my.ipleiria.pt', 'Avenida dos Lagartos, nr 99', 'lucas', '1234', 'passageiro'),
(default, 'Guilherme', 'Galvão', '912543692', '2202410@my.ipleiria.pt', 'Rua da Corrida, nr 143', 'gui', '1234', 'passageiro');

insert into planes values
(default, 'Boeing', '787-10', '336', 'p787001'),
(default, 'Boeing', '737-9Max', '220', 'p737001'),
(default, 'Embraer', 'E-195', '108', 'p195001'),
(default, 'Airbus', 'a330-900neo', '330', 'p330001');

insert into voos values
-- 1 escala (ida)
(default, 1, 13, 1263, '4149', 325), -- lisboa - londres
-- 1 escala (volta)
(default, 13, 1, 1263, '4149', 325), -- londres - lisboa
-- 1 escala (ida)
(default, 1, 7, 890, '3101', 374), -- lisboa - Paris
-- 1 escala (volta)
(default, 7, 1, 890, '3101', 374), -- Paris - lisboa
-- 1 escala (ida)
(default, 1, 13, 810, '3487', 394), -- lisboa - londres
-- 1 escala (volta)
(default, 13, 1, 810, '3487', 394), -- londres - lisboa

-- 2 escalas (ida)
(default, 1, 9, 1263, '4149', 325), -- lisboa - budapeste
-- 2 escalas (volta)
(default, 9, 1, 1263, '4149', 325), --  budapeste - lisboa
-- 2 escalas (ida)
(default, 1, 3, 890, '3101', 374), -- lisboa - moscovo
-- 2 escalas (volta)
(default, 3, 1, 890, '3101', 374), -- moscovo - lisboa
-- 2 escalas (ida)
(default, 1, 4, 810, '3487', 394), -- lisboa - helsinquia
-- 2 escalas (volta)
(default, 4, 1, 810, '3487', 394), -- helsinquia - lisboa

-- 3 escalas (ida)
(default, 1, 3, 1263, '4149', 325), -- lisboa - moscovo
-- 3 escalas (volta)
(default, 3, 1, 1263, '4149', 325), -- moscovo - lisboa
-- 3 escalas (ida)
(default, 1, 3, 890, '3101', 374), -- lisboa - moscovo
-- 3 escalas (volta)
(default, 3, 1, 890, '3101', 374), -- moscovo - lisboa
-- 3 escalas (ida)
(default, 1, 11, 810, '3487', 394), -- lisboa - Roma
-- 3 escalas (volta)
(default, 11, 1, 810, '3487', 394); -- Roma - lisboa

insert into escalas values
(default, 1, 1, 2, '2021-06-18 14:20:00', '2021-06-18 15:10:00', 285, 50), -- lisboa - porto
(default, 1, 2, 13, '2021-06-18 15:40:00', '2021-06-18 17:42:00', 1312, 122), -- porto - londres
-- ...........................................................................................
(default, 4, 13, 2, '2021-06-21 12:25:00', '2021-06-21 14:27:00', 1312, 122), -- londres - porto 
(default, 4, 2, 1, '2021-06-21 15:55:00', '2021-06-21 16:45:00', 285, 50), -- porto - lisboa
-- ...........................................................................................
(default, 2, 1, 2, '2021-06-12 20:45:00', '2021-06-12 20:35:00', 285, 50), -- lisboa - porto
(default, 2, 2, 7, '2021-06-12 20:55:00', '2021-06-12 22:50:00', 1206, 115), -- porto - paris
(default, 5, 7, 2, '2021-06-15 18:45:00', '2021-06-15 19:51:00', '517', 66), -- paris - porto
(default, 5, 2, 1, '2021-06-15 19:00:00', '2021-06-15 20:43:00', '1042', 103), -- porto - lisboa
-- ...........................................................................................
(default, 3, 1, 7, '2021-06-10 09:05:00', '2021-06-10 11:10:00', 1445, 131), -- lisboa - paris
(default, 3, 7, 13, '2021-06-10 12:40:00', '2021-06-10 13:35:00', 359, 55), -- paris - londres 
-- ...........................................................................................
(default, 6, 13, 7, '2021-06-12 21:00:00', '2021-06-12 22:23:00', '752', 83), -- londres - paris
(default, 6, 7, 1, '2021-06-12 22:45:00', '2021-06-12 23:34:00', '282', 49), -- paris - lisboa
-- ...........................................................................................
-- ...........................................................................................
(default, 7, 1, 8, '2021-06-24 06:40:00', '2021-06-24 07:46:00', 517, 66), -- lisboa - madrid
(default, 7, 8, 11, '2021-06-24 8:10:00', '2021-06-24 10:15:00', 1356, 125), -- madrid - roma
(default, 7, 11, 9, '2021-06-24 10:50:00', '2021-06-24 12:17:00', 815, 87), -- roma - budapeste
-- ...........................................................................................
(default, 10, 9, 11, '2021-06-27 11:00:00', '2021-06-27 12:27:00', 815, 87), -- budapeste - roma
(default, 10, 11, 8, '2021-06-27 12:50:00', '2021-06-27 14:55:00', 1356, 125), -- roma - madrid
(default, 10, 8, 1, '2021-06-27 15:30:00', '2021-06-27 15:36:00', 517, 66), -- madrid - lisboa
-- ...........................................................................................
(default, 8, 1, 7, '2021-07-03 16:50:00', '2021-07-03 19:01:00', 1445, 131), -- lisboa - paris
(default, 8, 7, 6, '2021-07-03 19:35:00', '2021-07-03 21:17:00', 1028, 102), -- paris - copenhaga
(default, 8, 6, 3, '2021-07-03 21:40:00', '2021-07-04 00:00:00', 1562, 140), -- copenhaga - moscovo
-- ...........................................................................................
(default, 11, 3, 6, '2021-07-07 12:25:00', '2021-07-07 14:45:00', 1562, 140), -- moscovo - copenhaga
(default, 11, 6, 7, '2021-07-07 15:35:00', '2021-07-07 17:07:00', 1028, 102), -- copenhaga - paris
(default, 11, 7, 1, '2021-07-07 17:40:00', '2021-07-07 19:51:00', 1445, 131), -- paris - lisboa
-- ...........................................................................................
(default, 9, 1, 12, '2021-07-13 10:10:00', '2021-07-13 12:40:00', 1709, 170), -- lisboa - manchester
(default, 9, 12, 5, '2021-07-13 13:15:00', '2021-07-13 14:42:00', 814, 87), -- manchester - hamburgo
(default, 9, 5, 4, '2021-07-13 15:20:00', '2021-07-13 17:13:00', 1178, 113), -- hamburgo - helsinquia
-- ...........................................................................................
(default, 12, 4, 5, '2021-07-18 05:50:00', '2021-07-18 07:47:00', 1178, 113), -- helsinquia - hamburgo
(default, 12, 5, 12, '2021-07-18 08:15:00', '2021-07-18 09:42:00', 814, 87), -- hamburgo - manchester
(default, 12, 12, 1, '2021-07-18 10:20:00', '2021-07-18 13:10:00', 1709, 170), -- manchester - lisboa
-- ...........................................................................................
-- ...........................................................................................
(default, 13, 1, 2, '2021-06-18 14:20:00', '2021-06-18 15:10:00', 285, 50), -- lisboa - porto
(default, 13, 2, 13, '2021-06-18 15:40:00', '2021-06-18 17:42:00', 1312, 122), -- porto - londres
(default, 13, 13, 4, '2021-06-18 18:20:00', '2021-06-18 20:59:00', 1836, 159), -- londres - helsinquia
(default, 13, 4, 3, '2021-06-18 21:40:00', '2021-06-18 22:13:00', 902, 93), -- helsinquia - moscovo
-- ...........................................................................................
(default, 16, 3, 4, '2021-06-22 19:45:00', '2021-06-22 21:18:00', 902, 93), -- moscovo - helsinquia
(default, 16, 4, 13, '2021-06-22 21:40:00', '2021-06-23 00:19:00', 1836, 159), -- helsinquia - londres
(default, 16, 13, 2, '2021-06-23 00:50:00', '2021-06-23 02:52:00', 1312, 122), -- londres - porto
(default, 16, 2, 1, '2021-06-23 03:15:00', '2021-06-23 04:05:00', 285, 50), -- porto - lisboa
-- ...........................................................................................
(default, 14, 1, 8, '2021-07-07 14:50:00', '2021-07-07 15:56:00', 517, 66), -- lisboa - madrid
(default, 14, 8, 11, '2021-07-07 16:30:00', '2021-07-07 18:35:00', 1356, 125), -- madrid - roma
(default, 14, 11, 9, '2021-07-07 19:10:00', '2021-07-07 20:37:00', 815, 87), -- roma - budapeste
(default, 14, 9, 3, '2021-07-07 21:00:00', '2021-07-07 23:20:00', 1565, 140), -- budapeste - moscovo
-- ...........................................................................................
(default, 17, 3, 9, '2021-07-11 07:20:00', '2021-07-11 09:40:00', 1565, 140), -- moscovo - budapeste
(default, 17, 9, 11, '2021-07-11 10:10:00', '2021-07-11 11:37:00', 815, 87), -- budapeste - roma
(default, 17, 11, 8, '2021-07-11 12:05:00', '2021-07-11 14:10:00', 1356, 125), -- roma - madrid
(default, 17, 8, 1, '2021-07-11 14:35:00', '2021-07-11 15:41:00', 517, 66), -- madrid - lisboa
-- ...........................................................................................
(default, 15, 1, 12, '2021-06-24 10:30:00', '2021-06-24 13:00:00', 1709, 150), -- lisboa - manchester
(default, 15, 12, 7, '2021-06-24 13:20:00', '2021-06-24 14:32:00', 596, 72), -- manchester - paris
(default, 15, 7, 5, '2021-06-24 15:00:00', '2021-06-24 16:23:00', 752, 83), -- paris - hamburgo
(default, 15, 5, 11, '2021-06-24 17:00:00', '2021-06-24 19:03:00', 1319, 123), -- hamburgo - roma
-- ...........................................................................................
(default, 18, 11, 5, '2021-06-29 05:40:00', '2021-06-29 07:43:00', 1319, 123), -- roma - hamburgo
(default, 18, 5, 7, '2021-06-29 08:05:00', '2021-06-29 09:28:00', 752, 83), -- hamburgo - paris
(default, 18, 7, 12, '2021-06-29 10:00:00', '2021-06-29 11:12:00', 596, 72), -- paris - manchester
(default, 18, 12, 1, '2021-06-29 11:40:00', '2021-06-29 14:10:00', 1709, 150); -- manchester - lisboa

insert into passagem_vendas values
(default, 8, 1, 2, 1798, 'concluido'),
(default, 8, 9, 10, 2431, 'nao_concluido');

insert into escala_planes values
(1,4),
(2,4),
(3,4),
(4,4),
(5,1),
(6,1),
(7,1),
(8,1);
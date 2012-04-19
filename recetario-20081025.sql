-- phpMyAdmin SQL Dump
-- version 2.11.3deb1ubuntu1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2008 a las 15:21:00
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.4-2ubuntu5.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `recetario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--
-- Creación: 09-09-2008 a las 10:54:15
-- Última actualización: 09-09-2008 a las 10:54:15
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE IF NOT EXISTS `libros` (
  `nombre` varchar(255) NOT NULL,
  `autor` varchar(255) default NULL,
  `comentario` text,
  PRIMARY KEY  (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `libros`
--

INSERT INTO `libros` (`nombre`, `autor`, `comentario`) VALUES
('libronegro', 'Elena Sciacaluga', 'Rosanita: cuando saborees una de estas recetas, te acordaras de tu madre. Te las dedico con todo el amor, recordando las veces que las saboreamos bajo el mismo techo; en las mas variadas ocaciones; y en los a?os que las fui acumulando, buscando lo que les agradara a todos.\r\n                               MAMA\r\n                          7 de julio de 1981\r\n                             Viña del Mar\r\n\r\nEn este maravilloso recuerdo del dia que naciste, te dedico este modesto regalo, 26 de julio de 1981.\r\n      "Los fuertes debemos soportar las flaquezas de los debiles y no complacernos a nosotros mismos."\r\n      "Cada uno de nosotros procure agradar a su projimo, en lo que es bueno." '),
('dolo', 'Manuel Arredondo', 'En este libro voy a ir anotanto cada una de las recetas preparadas por mi, dedicadas a esas personitas que las disfrutan con mucha alegria.\r\n                                19-08-2006'),
('pili', 'Pilar Salazar', 'aki la pili tiene q escribir algo'),
('tami', 'Tamara Fernández', 'Un libro para que tamituga escriba recetas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--
-- Creación: 09-09-2008 a las 10:54:15
-- Última actualización: 09-09-2008 a las 11:18:01
--

DROP TABLE IF EXISTS `recetas`;
CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL,
  `ingredientes` text NOT NULL,
  `receta` text NOT NULL,
  `tipo1` varchar(255) default NULL,
  `tipo2` varchar(255) default NULL,
  `libro` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Volcar la base de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `nombre`, `ingredientes`, `receta`, `tipo1`, `tipo2`, `libro`, `foto`) VALUES
(1, 'Alfajores(Torta alfajor)', '- 6 yemas\r\n- 3 tazas de harina\r\n- 1 copita de aguardiente\r\n- 1 copa de pisco o vino blanco  	\r\n', 'Se une todo, se amasa, quedando una masa blanda. Se uslerea y cortan rodelas, se pinchan con tenedor antes de ponerlas al horno, salen 10 a 12 alfajores; se rellenan con manjar.', 'Dulces', '', 'libronegro', ''),
(2, 'Alfajores(pastelitos)', '- 5 yemas\r\n- 1/2 taza de harina\r\n- 1/2 taza de chuño\r\n- 1/2 cucharadita de polvos de hornear\r\n- 2 cucharadas de jugo de naranja  	', 'Bata las 5 llemas hasta q esten casi blancas; agregar poco a poco 1/2 taza de harina cernida con 1/2 taza de chuño y 1/2 cucharadita de polvos de hornear alternando con 2 cucharadas de jugo de naranja; trabajar bien la masa hasta q este lisa y seca. uslerear fino y cortar discos del tama?ano deseado, pincharlos y hornerlos al horno enmantequillado por 5 minutos(no deven dorarse) unir de a 2 con manjar.', 'Dulces', '', 'libronegro', ''),
(3, 'Arroz con asafran', '- 1 1/2 de arroz\r\n- 1 cubito de caldo\r\n- 1/2 cebolla\r\n- 1 cucharada de mantequilla\r\n- asafran\r\n- queso rallado ', 'Se frie la cebolla picada fina o molida en mantequilla o aceite o mitad y mitad; se agrega el arroz y se revuelve a fuego fuerte hasta que se absorba la mantequilla, luego se agrega el asafran remojado en una taza de caldo o agua hirviendo; luego se revuelve hasta que se absorba y se agregaen seguida se agrega el caldo o agua hirviendo, al comenzar a hervir se tapa y se revuelve de vez en cuando durante 20 min;  se agrega queso rallado a gusto  ', 'Arrozes', '', 'libronegro', ''),
(4, 'Arroz graneado', '- 1 taza de arroz\r\n- 2 tazas de agua', 'Se frie el arroz en aceite caliente, se le agrega e agua, se revuelve y se deja 20 a 30 min a fuego lento Se puede agregar tambien 1 diente de ajo, zanahoria, pimenton y cebolla.', 'Arrozes', '', 'libronegro', ''),
(5, 'Biscochuelo', '- 3 huevos\r\n- 3 cucharadas de maicena\r\n- 3 cucharadas de azucar flor\r\n- 3 cucharaditas de polvos de hornear ', 'Se baten las claras a nieve y se agregan la yemas, en seguida la maicena y los polvos de hornear de a poco mezclando bien, luego el azucar flor de a poco y batiendo bastante.', 'Tortas', '', 'libronegro', ''),
(6, 'Biscochuelos julia', '- 3 huevos\r\n- 3 cucharadas de agua\r\n- 1 taza de azucar flor\r\n- 1 1/2 cucharadita de maicena\r\n- 1 taza de harina\r\n- 2 cucharaditas de royal', 'Las yemas se baten con las 3 cucharaditas de agua, luego se agrega el azucar flor cernida y la taza de harina con la maicena y los polvos de hornear(todo junto cernido), al final se agregan las claras batidas a nieve sin batir', 'Tortas', '', 'libronegro', ''),
(7, 'Almendrado de frutillas', '- 1/4 kg de almendras\r\n- 1/4 kg de azucar flor\r\n- 3 claras\r\n- 1 taza de frutillas picadas\r\n- 2 cucharadas de gelatina de frutilla', 'Ponga las almendras en una olla con agua fria al fuego hasta que comiense a hervir, retirelas y quitele el ollejo, echelas a un tiesto con agua fria, luego sequelas y muelalas muy finas\r\nJunte las almedras con el azucar flor cernida\r\nBata las claras hasta q esten bien firmes y agrguelas a la pasta de almendras, deve quedar muy bien mezclado\r\nEnmantequille un molde de kuchen y cubra con un delgado vuelo de harina\r\nCubra el fondo y los bordes con las 3/4 partes del batido, con el resto forme agunas lineas q pasen por el centro\r\nLleve al horno regular durante 30 min app\r\nDisuelva la gelatina en 1/2 taza de agua hirviendo y deje enfriar\r\nCuando este fria llene los huecos formados por las lineas con las frutillas y cubra con la gelatina. ', 'Postres', '', 'libronegro', ''),
(8, 'Brazo de reina', '- 6 huevos \r\n- 1 taza de azucar flor\r\n- taza de harina\r\n- 2 cucharadas de polvos de hornear', 'Se baten las claras a nieve y se incorpora de apoco el azucar flor cernida sin dejar de batir, agregue las yemas una a una y luego la harina y los polvo de hornear.\r\nVacie a una lata de horno forrada en papel mantequilla, empareje y lleve a horno caliente 8 a 10 min, no deve dorarse.\r\nVuelque sobre un papel espolvoreado con azucar flor, desprenda el papel en que se horneo y enrrolle rapidamente con el papel que se espolvoreo y deje enfriar\r\nDesenrrolle y tapice con manjar y vuelva a enrrollar.\r\nEspolvore con azucar flor y si desea queme el azucar con un fierrito caliente. ', 'Postres', 'Dulces', 'libronegro', ''),
(9, 'Salsa Blanca (Bechamel tia Enriqueta)', '- 2 cucharadas de harina\r\n- 1/2 lt de leche\r\n- 2 yemas\r\n- 100 gr de queso rallado\r\n- 50 gr de mantequilla\r\n ', 'Se deshace la harina en un poco de leche fria, luego se agrega el resto de la leche, se cuece 10 min siempre revolviendo a fuego lento, cuando este cocida se retira del fuego y se agregan las yemas previamente disueltas en un poco de leche y enseguida el queso rallado, si quedan grumos se pasa por sedazo.', 'Salsas', 'Pastas', 'libronegro', ''),
(10, 'Biscochuelo(Monona)', '- 6 huevos\r\n- 375 gr de azucar granulada\r\n- 175 gr de chuño\r\n- 80 gr de harina\r\n-2 cucharadas de polvos de hornear', 'Se baten los huevos enteros con el azucar hasta que suban harto y despues se mezclan los otros ingrdientes\r\nSe pone al horno fuerte, cuando suban se baja.', 'Tortas', '', 'libronegro', ''),
(11, 'Bavarois de frutilla', 'Frutillas:\r\n- 6 claras\r\n- 4 hojas de colapez\r\n- 1 tarro de frutillas\r\n- 6 cucharadas de azucar granulada', 'Bata las claras a nieve\r\nCon el azucar haga un almidon de pelos y agregue a las claras sin dejar de batir.\r\nAñada el colapez remojado en 1/4 de taza de agua\r\nAñada las frutillas\r\nDeje enfriar', 'Postres', '', 'libronegro', ''),
(12, 'Atun Strogonov', '- 2 latas de lomitos de atun\r\n- 1 tarro de champiñones\r\n- 2 cucharadas de mantequillas\r\n- 1/2 copa de vino blanco\r\n- 200 cc de crema\r\n- sal\r\n- pimienta', 'Corte los champiñones en 4, salteelos en mantequilla y agregue el vino blanco, añada sal, pimienta y los loitos desmenuzados, por ultimo la crema.', 'Pescados', '', 'libronegro', ''),
(13, 'Apiado', '- 6 ramas de apio\r\n- 1/4 lt de aguardiente\r\n- 1/2 lt de agua\r\n- 1/4 kg de azucar', 'En una olla se coloca el agua, una vez hervida, se le agrega el apio y el azucar, se deja hervir 15 min en seguida se retira del fuego, se cuela y se enfria.\r\nSe agrega el aguardiente se enbotella y se agrega una hoja de apio lavada.\r\nSe tapa con corchos hervidos.', 'Licores', '', 'libronegro', ''),
(14, 'Brownis', '- 4 huevos\r\n- 2 tazas de azucar\r\n- 1 cucharadita de vainilla\r\n- 150 gr de mantequilla\r\n- 3/4 taza de chocolate amargo en polvo\r\n- 1 taza de harina\r\n- 1 cucharadita de polvos de hornear\r\n- 1 cucharadita de sal\r\n- 100 gr de nueces o almendras ', 'Batir los huevos, el azucar y la vainilla hasta que esten blancos\r\nDerretir la mantequilla y el chocolate a fuego lento y echar a los huevos.\r\nAgregar la harin, los polvosy, la sal y las nueces.\r\nHornear durante 40 min app.', 'Queques', '', 'libronegro', ''),
(15, 'Crema Pompadoure', '- 1/2 lb de almendras\r\n- 1/2 lb azucar flor\r\n- 1/2 lt de leche\r\n- 4 yemas\r\n- 1/2 lb de mantequilla\r\n- 1 palito de vainilla', 'Se bate la mantequilla con el azucar cernida, se agregan las yemas alternando con el azucar.\r\nLa leche hervida con la vainilla y una vez fria se agrega a lo anterior de apoco y batiendo.\r\nAl final las almendras peladas y molidas.\r\n', 'Tortas', '', 'libronegro', ''),
(16, 'Crema de Limon', '- 1/2 taza de azucar flor\r\n- 6 huevos\r\n- 460 gr de mantequilla\r\n- 2 limones', 'Se derite la mantequilla a baño maria y se agrega el azucar, en seguida se incorporan los huevos enteros de uno en uno.\r\nSe raya la cascara de linon y se exprime el jugo y se agrega a lo anterior.\r\nSe pone a baño maria revolviendo hasta que se espese.', 'Tortas', '', 'libronegro', ''),
(17, 'Calzones rotos', '- 2 tazas de harina\r\n- 1 huevo\r\n- 1/2 cucharadita de polvos de hornear\r\n- 1/2 cucharada de manteca\r\n- 1/4 taza azucar disuelta\r\n- 1/2 taza de leche', 'Se mezcla todo bien, se amasa, se uslerea. se cortan tiras, se frien en manteca bien caliente y se espolvorean en azucar flor', 'Frituras', '', 'libronegro', ''),
(18, 'Calzones rotos(Anna)', '- 4 tazas de harina\r\n- 4 cucharadas de aceite\r\n- 1 taza de leche\r\n- 1 huevo\r\n- 1/2 tza de azucar flor\r\n- 1 cucharadita de vainilla\r\n- 1 cucharadita de polvos de hornear', 'Se mezcla todo bien, se amasa, se uslerea. se cortan tiras, se frien en manteca bien caliente y se espolvorean en azucar flor', 'Frituras', '', 'libronegro', ''),
(19, 'Chupe de Locos(Luchita)', '- 1 tacita de aceite\r\n- 1 cebolla\r\n- 3 ajos\r\n- 5 panes\r\n- 1 litro de leche\r\n- 8 a 10 locos\r\n- 1 tarro de crema\r\n- 2 huevos duros\r\n- aji de color', 'En la tacita de aceite se frie la cebolla y el ajo, a esta se agregan las 5 marraquetas remojadas en el litro de leche y luego pasadas por cedazo o juguera, luego se agregan los locos picados en cuadritos chicos, se agrega el jugo en que se cocieron los locos y aji de color a gusto, al final el tarro de crema.\r\nSe ponen en ollas de greda y se adornan con los huevos, luego al horno.', 'Mariscos', '', 'libronegro', ''),
(20, 'Chupe de Locos(tia Meme)', '- 4 locos picados\r\n- 3 marraquetas de pan\r\n- 2 tazas de leche\r\n- 2 1/2 tazas de jugo de locos\r\n- 2 cucharadas de salsa de tomates\r\n- 1 tarro chico de crema\r\n- aji\r\n- queso rallado\r\n- queso mantecoso\r\n- mantequilla', 'El pan remojado en la leche se apsa por cedazoy se junta con el jugo de locos, aji, salsa, locos y se hace hervir hasta q espese, se agrega la crema y en las pailas el queso y mantequilla', 'Mariscos', '', 'libronegro', ''),
(21, 'Queque de Zanahorias', '- 2 huevos\r\n- 3/4 taza de aceite\r\n- 1 taza de azucar negra\r\n- 1 1/2 taza de zanahorias rayadas\r\n- 1/2 cucharadits de sal\r\n- 1 cucharadita de canela en polvo\r\n- 1 cucharadita de bicarbonato\r\n- 1 taza de harina\r\nCrema:\r\n- 100 gr de queso crema\r\n- 1 taza de azucar flor\r\n- 1/8 de mantequilla\r\n- 1/8 de vainilla', 'Se mezcla el aceite con el azucar bien batida, se agrega uno a uno los huevos enteros, en seguida los ingredientes secos y al final las zanahorias.\r\nSe lleva al horno y una vez listo se deja enfriar y se sirve con la crema\r\nCrema:\r\nSe mezcla el queso con el azucar, se agrega la mantequilla y la vainilla, secubre el queuqe y se pone al refrigerador', 'Queques', '', 'libronegro', ''),
(22, 'Dulce de naranja', '- 12 naranjas\r\n- 2 kg de azucar\r\n- 3 a 4 litros de agua', 'Se parten las naranjas por la mitad se le sacan las pepas y se dejan remojando en agua.\r\nSe expimen las naranjas y las cascaras se cortan muy finas en tiritas y se hierven en el agua hasta que estan transparentes.\r\nSe agrega el jugo exprimido, el azucar y el agua donde se remojaron las pepas.\r\nSe hierve unos 10 min hasta que espesa.', 'Salsas', '', 'libronegro', ''),
(23, 'Crema de Espinacas', '- 1 diente de ajo\r\n- 1/2 cebolla picada o en pluma\r\n- 2 oaquetes de espinacas\r\n- 1 zanahoria picada\r\n- 3 cucharadas de cuaker\r\n- agua\r\n- crema\r\n- leche\r\n- sal', 'Se frie la cebolla, se le agrega el ajo, zanahoria, espinacas, el agua y el cuaker.\r\nSe hierve 5 min', 'Cremas', '', 'libronegro', ''),
(24, 'Crema de Papas', '- papas\r\n- zapallo\r\n- cebolla\r\n- ajo\r\n- leche\r\n- crema\r\n- agua\r\n- sal', 'Se frie la cebolla, se le agrega el ajo, zanahoria, papas, zapallo, el agua y el cuaker.\r\nSe hierve 5 min', 'Cremas', '', 'libronegro', ''),
(25, 'Crema de Choclo', '- cebolla\r\n- choclo rallado\r\n- agua\r\n- leche\r\n- crema\r\n- sal', 'Se frie la cebolla, se le agrega el ajo, zanahoria, papas, zapallo, el agua y el cuaker.\r\nSe hierve 5 min', 'Cremas', '', 'libronegro', ''),
(26, 'Crema de Esparragos', '- 1/2 kg de esparragos\r\n- 3 tazas de leche\r\n- 1 1/2 cucharadas de harina\r\n- 1 tarro chico de crema\r\n- 1 cubo de caldo de ave\r\n- sal\r\n- pimienta', 'Lave y pele los esparagos, cuezalos en agua hirviendo con sal durante 20 min.\r\nEn una olla derrita la mantequilla con la harina mezclandola con una cuchara de palo.\r\nAgregue la leche y deje hervir 5, revolviendo todo el tiempo.\r\nDiduelva el caldo en jugo de la coccion de los exparragos y agreguelo a la mezcla anterior.\r\nCorte las puntas de los esparragos y distribullalas en las tazas.\r\nMuela los tallos en la licuadora e incorporelos a la sopa con la crema sal y pimienta.', 'Cremas', '', 'libronegro', ''),
(27, 'Chowx', '- 1 taza de agua\r\n- 1 taza de haina\r\n- 1/2 cucharadita de polvos de hornear\r\n- 3 huevos enteros\r\n- sal\r\n- azucar', 'Se hierve el agua con la mantequilla, sal y azucar, se agrega de golpe la harina y se revuelve con cuchara de madera y se etira una vez que la harina se ha cocido, se agrega uno a uno los huevos y se sigue revolviendo hasta que todo se haya unido bien.\r\nSe despega del fondo de la cacerola cuando este listo.\r\nSe pone en montoncitos chicos que se hacen con una cucharita de te en una lata y se ponen al hornobien caliente.\r\nSe inflan y quedan huecos para rellenarlos con manjar u otra cosa', 'Dulces', '', 'libronegro', ''),
(28, 'Cañoncitos', '- 300 gr de harina\r\n- 100 gr de margarina\r\n- 2 yemas\r\n- 1/2 lt de leche', 'Se amasa y se uslerea, luego se envuelven en los moldes paa cañoncitos  ', 'Masas', '', 'libronegro', ''),
(29, 'Cocaditas al horno', '- 1 cucharada de mantequilla\r\n- 4 cucharadas de azucar\r\n- 4 huevos\r\n- 1 tarro de leche condensada\r\n- 3 1/2 tazas de coco rallado', 'Batir la mantequilla con el azucar y las yemas hasta que esten cremosas.\r\nAñadir la leche condensada el coco y luego incorpore lentamente las claras batidas a nieve.\r\nVierta la mezcla en modecitos de papel enmantequillados y lleve al hornomoderado hasta que este dorados, 20 a 25 min.', 'Dulces', '', 'libronegro', ''),
(30, 'Cocaditas', '- 1 tarro de leche condensada\r\n- 3 tazas de coco rallado\r\n- 2 cucharaditas de ralladura de limon\r\n- frutas', 'Mezcle la leche condensada con el coco y la ralladura de limon.\r\nPonga por cucharaditas en la lata del horno enmantequilladas, coloqueles encima un trocito de fruta y lleve al horno regular a dorar ligeramente, 20 min app.', 'Dulces', '', 'libronegro', ''),
(31, 'Chuletas al jerez', '- 6 chuletas\r\n- 4 cucharadas de pan rallado\r\n- 1 cucharada de mantequilla\r\n- 1/2 taza de leche\r\n- 1 vaso de jerez\r\n- sal\r\n- pimienta\r\n- estragon\r\n- 1 huevo', 'Bata el huevo entero y agregue bstante sal y pimienta.\r\nPase cada chuleta por el huevo battido y luego por el pan rallado quitando el sobrante.\r\nEn un sarten con la mantequilla ponga las chules y cuando hayan tomado un bonito color por ambos lados, cubrirlas con la lehe, jerez y estragon y deje hervir a fuego suave de modo que se valla formando una salsa.', 'Chancho', '', 'libronegro', ''),
(32, 'Dulce de membrillos***', '- 12 membrillos', 'Lavar los membrillos, cortarlos por la mitad y extraerle las semillas.\r\nCocer bien los membrillos, sacarlos del agua y pasarlos por cedazo.\r\nCon el agua se prepara la jalea.\r\nPesar la misma cantidad de azucar que membrillos y colocar la pulpa y el azucar en una cacerola(ojala cobre), al fuego revolviendocon cuchara de palo constantemente hasta que se vea el fondo del tiesto y tome color billante.\r\nEn el agua en que se hirvieron los membrillos colocar las semillas atadas en un lienzo y hacer hervir hasta que tome un color rosado y se reduzca un poco******', 'Dulces', '', 'libronegro', ''),
(33, 'Donuts', '- 2 cucharadas de manteca\r\n- 3/4 taza de azucar flor\r\n- 3/4 taza de leche cocida fria\r\n- 3/4 cucharadita de sal\r\n- 4 cucharaditas de hornear\r\n- 1 cucharadita de ralladura de limon o naranja\r\n- 2 tazas de harina\r\n- 2 huevos', 'Se ablanda la manteca y se le agrega la azucar y los huevos batidos como paa merengue, se agrega la leche y se revuelve bien.\r\nSe agrega la ralladura, harina y polvos de hornear.\r\nSe amasa se corta, se frieen aceite bien caliente.', 'Frituras', '', 'libronegro', ''),
(34, 'Crema de Almendras', '- 10 a 11 huevos\r\n- 1 taza de azucar\r\n- 2 tazas de agua\r\n- escencia de almendras\r\n- 2 tazas de almendras\r\n- 1 cucharadda de mantequilla', 'En una olla se pone el agua y la mantequilla, cuando este a punto de hervir se apaga y se le agregan las almendras y luego las claras a nieve con el a azucar y las yemas.\r\nSe deja hervir 5 min se apaga y revolver hasta que se entierre.', 'Salsas', '', 'libronegro', ''),
(35, 'Crema de queso', '- 1/4 kilo de queso\r\n- 1/2 lt de leche\r\n- 50 gr de mantequilla\r\n- sal\r\n- pimienta\r\n- 1/8 lt crema fresca\r\n- 2 cucharadas de harina', 'Se hace una crema blanca.\r\nSe pone la mantequilla y la harina en una cacerola, sal, pimienta, se agrega la leche caliente poco a poco y se revuelve para que no se apelotone.\r\nSe deja 10 min hasta que se coce la harina, se le agrega el queso y la crema.', 'Cremas', '', 'libronegro', ''),
(36, 'Crema de callampas', '- callampas secas\r\n- 1 cebolla\r\n- aceite\r\n- sal\r\n- 1 cucharadita de mantequilla\r\n- 1 cucharada de harina\r\n- 2 tazas de leche', 'La cebolla se pica bien fina y se frie en una olla con un poco de aceite, se le agrega sal, las callampas picadas y una cucharadita de mantequilla, se revuelve un rato y se agrega una cucharada de harina cuidando que no se apelotone, de apoco se agrega la leche caliente y se deja cocer 10 min.', 'Cremas', '', 'libronegro', ''),
(37, 'Crema de erizos', '- 1 tarro de erizos o dos erizos frescos\r\n- 1 cucharada de crema fresca\r\n- queso rallado\r\n- 1 1/2 cucharada de harina\r\n- 1/4 lt de leche\r\n- 1 cucharada de mantequilla\r\n- sal\r\n- limon\r\n- nuez moscada', 'Se mezcla la harina con la mantequilla en una cacerola a fuego suave, se agrega la sal, nuez moscada, limon y los erizos, la leche y la crema.\r\nSe hierve revolviendo 10 min.\r\nSe sirve y se agrega queso rallado.', 'Cremas', '', 'libronegro', ''),
(38, 'Bavarois de Frambuesa', ' Frambuesa:\r\n- 3 claras\r\n- 1 1/2 sobre de gelatina sin sabor\r\n- 1 taza de azucar\r\n- 1 taza de frambuesas', 'Bata las claras a nieve\r\nCon el azucar haga un almidon de pelos y Agregue a las claras sin dejar de batir.\r\nAgregue las frambuezas picadas o molidas.\r\nAgregue la gelatina disiuelta en agua y bata hasta que este frio.\r\nPoner en un molde previamente pasado por agua y llevarlo al refrigerador', 'Postres', '', 'libronegro', ''),
(39, 'Bavarois de Nuez', 'Nuez:\r\n- 6 claras\r\n- 18 cucharadas de azucar flor(echa almibar)\r\n- 1 sobre de gelatina sin sabor\r\n- 1 taza de nuez', 'Bata las claras a nieve\r\nCon el azucar haga un almidon de pelos y Agregue a las claras sin dejar de batir.\r\nAgregue las nueces molidas.\r\nAgregue la gelatina disiuelta en agua y bata hasta que este frio.\r\nPoner en un molde previamente pasado por agua y llevarlo al refrigerador', 'Postres', '', 'libronegro', ''),
(40, 'Salsa de leche***', 'Crema:\r\n- 2 tazas de leche\r\n- 3 yemas\r\n- 3 cucharadas de azucar', '', 'Salsas', 'Postres', 'libronegro', ''),
(41, 'Empanadas', '- 1 kg harina\r\n- 250 gr manteca\r\n- 2 cucharadas de sal\r\n- 2 tazas de leche\r\n- 2 cucharadas polvos de hornear', 'La sal se agrega a la leche y los polvos se ciernen con la harina, la leche se agrega tibia.', 'Masas', 'Empanadas', 'libronegro', ''),
(42, 'Picarones***', '- 360 gr de zapallo\r\n- 3 papas regulares\r\n- 1 pan de levadura\r\n- 3 tazas harina\r\n- 1/2 cucharadita de sal', 'Se cuece el zapallo con las papas y sal,se pasan por cedazo.\r\nLa levadura se disuelve en 1/4 de taza de agua tibia se le agrega 1/2 taza de harina y se deja levantar en un lugar tibio 25 min.\r\nCon el pure de zapallo y papas las 3 tazas de harina y 4 tazas de agua donde se cocio el zapallo se hace la masa y se le agrega la levadura, se bate 25 min hasta que quede ligosa y se despeque de la fuente.\r\nDejar en reposo 1 hr hasta que levante', 'Frituras', 'Masas', 'libronegro', ''),
(43, 'Salsa de chancaca***', '- 1/4 kg de chancaca\r\n- 2 tazas de agua\r\n- 1 limon\r\n- canela\r\n- 1/4 kg de azucar\r\n- 1 cucharada de harina', 'Se coloca en una olla el agua, harina y azucar, se revuelve y agregar la chancaca, limon y la canela.\r\nHervir despacio', 'Salsas', '', 'libronegro', ''),
(44, 'Ensaimados', '-1 kg harina\r\n- 140 gr mantequilla\r\n- 140 gr azucar\r\n- 3 huevos\r\n- gotas de vainilla\r\n- ralladura de limon\r\n- 30 gr de levadura\r\n- 1 taza de leche', 'Se hace la masa con la harina, levadura, mantequilla, huevos y leche, debe quedar suve y blanda.\r\nSe pone en un bol aceitado al calorsuave o al sol, se deja subir, se saca y se amasa hasta que suene, se agregan dos cucharadas de aceite y se vuelve a dejar en reposo para que suba nuevamente.\r\nSe forman tiras aceitandose las manos  que se enrroscan mojando los bordes para que se peguen.\r\nLa levadura se prepara en una taza con leche tivia y harina para que linde y 1 cucharadita de azucar.\r\nLuego se agrega azucarado por encima, preparado con una taza de azucar flor, un poquito de agua, se revuelve bien hasta que se deshaga, se le dasabor con vainilla o licor de anis.', 'Dulces', '', 'libronegro', ''),
(45, 'Fondant', '- 1 taza de azucar flor cernida\r\n- 1 clara\r\n- 1 cucharadita de jugo de limon\r\n- 1 cucharadita de agua ', 'Se bate bien en la licuadora, todo junto, 10 min.\r\nPara cubrir pasteles o kuchen.', 'Tortas', '', 'libronegro', ''),
(46, 'Empanadas de queso', '- 1/2 kg de harina\r\n- 2 yemas\r\n- 80 gr de manteca\r\n- 1 cucharadita de sal\r\n- 1 taza de agua caliente\r\n- 1/2 cucharadita de vinagre\r\nRelleno:\r\n- 1/2 lt de salsa blanca\r\n- 1/2 lt de leche\r\n- 2 cucharadas de maicena\r\n- 1/4 kg de queso\r\n- 1 cucharada de mantequilla\r\n- sal\r\n- pimienta', 'Cernir la harina, hacer un hueco y poner las yemas, la amnteca derretida, agregar la salmuera y el vinagre poco a poco mezclando para ir formando la masa, blanda y suve, procurando que no se enfrie.\r\nEl vinagre es para que no se absorba mucha manteca al freir.\r\nRelleno:\r\nUna vez echa la salsa blanca agregar el queso picado y revolver hasta que este deshecho, dejar enfriar y rellenar.', 'Masas', 'Empanadas', 'libronegro', ''),
(47, 'Empanadas de Horno', '- 1 kg harina\r\n- 1/4 kg de manteca\r\n- 1 1/2 a 2 lt de agua hirviendo\r\n- 1 cucharadita de sal\r\n- 2 cucharaditas polvos de hornear', 'Se pone la harina e ingrediaentes secos en un bol y se agrega la manteca en trocitos, con la mano se revuelve y con el calor de la mano se abkanda la manteca.\r\nCon una cuchara de palo se revuelve agregando el agua muy caliente de a poco, calculando que quede una masa blanda y suave.\r\nSe adelgaza la masa y cortan ridelas del tamaño deseado.\r\nrrellenar con el pino, se pincelan con huevo, 10 min de horno fuerte y luego horno bajo.', 'Masas', 'Empanadas', 'libronegro', ''),
(48, 'Pino***', '', '', '', '', 'libronegro', ''),
(49, 'Escalopas napolitanas', '- 6 escalopas\r\n- 1/4 kd de queso\r\n- 1/4 kg de jamon\r\n- 2 tazas de pan rallado\r\n- 2 huevos\r\n- sal\r\n- pimienta\r\n- aceite para freir', 'Ali?e las escalopas con sal y pimienta, coloque sobre ellas una tahada de jamo y una de queso y doblelas por la mitad.\r\nPase las escalopas por el huevo batido y por el pan rallado.\r\nFreirlas en abundante aceite.', 'Vacuno', '', 'libronegro', ''),
(50, 'Flan de carne', '- 1/2 kg de posta molida\r\n- 1/2 cebolla picada fina\r\n- 1 cucharadita de perejil picado\r\n- 2 cucharadas de mantequilla\r\n- 2 cucharadas de harina\r\n- 1 taza de leche\r\n- 3 cucharadas de aceite\r\n- 2 cucharadas de pan rallado\r\n- 1 cucharadita de aji picante\r\n- 1/2 cucharadita oregano molido\r\n- sal\r\n- pimienta\r\n- 4 huevos', 'Fria la cebolla en el aceite, agregue la carne y siga friendo ambas coas juntas, condimente con perejil, oregano, sal, pimienta.\r\nRetire la preparacion del fuego para que se enfrie un poco antes de unirla a loa huevos.\r\nDerrita la mantequilla, añada la harina, mezcle bien e incorpore la leche, condimente bien y sin dejar de revolver, mantenga la preparacion en el fuego hasta que hierva y espere.\r\nIncorpore esta preparacion a la carne.\r\nBata los huevo y unalos a la carne.\r\nVacie en un molde enmantequillado y cubierto con pan rallado.\r\nTape la flanera y pongala sobre la rejilla de la olla a presion con dos tazas de agua caliente, cierre la olla y cuando esta alcance su maxima presion cuente 17 minutos.', 'Vacuno', 'Tortillas', 'libronegro', ''),
(51, 'Torta de Chocolate', '- 5 huevos\r\n- 4 tazas de harina\r\n- 1/4 kg de mantequilla\r\n- 4 cucharaditas de polvos de hornear\r\n- 2 tazas de azucar flor\r\n- 1 taza de leche\r\n- 100 gr chocolate amargo en polvo\r\n- 1 kg de manjar', 'Bata la mantequilla hasta que este bien espumosa, agregue de apoco el azucar flor.\r\nAñada los huevos uno a uno incorporandolos bien.\r\nLuego agregue la harina con los polvos de hornear, el chocolate y la leche alternando y batiendo bien.\r\nEnmantequille las latas y cubralas con la mezcla.\r\nPongalas al horno por 5 min app y forme la torta alternando entre capas con el manjar.\r\nCubrala con el chocolate de su gusto', 'Tortas', 'Dulces', 'libronegro', ''),
(52, 'Torta de Hojas', '- 1 kg harina\r\n- 1/2 kg mantequilla\r\n- 8 yemas\r\n- 2 huevos\r\n- 1/2 cucharadita de sal\r\n- 1 1/2 taza de leche  \r\n- 2 kg de manjar  \r\n   \r\nLa sal se agrega a la leche y los polvos se ciernen con la harina, la leche se agrega tibia. \r\n   ', 'Se junta todo en frio, y se amasa hasta obtener una masa homogenea, la mantequilla debe estar blanda.\r\nSe uslerea hasta que queden hojas bien finas(1 mm app) y se cortan discos de 40 cm de diametro app y se ponen en las latas del horno.\r\nCada hoja se demora de 5 a 10 min en el horno fuerte.\r\nUna vez que estan todas cocidas se arma la torata, al final se cubre completa con manjar.\r\nTriture la ultima hoja con las manos y cubra la torta.', 'Tortas', 'Dulces', 'libronegro', ''),
(53, 'Magdalenas', '- 100 grs de mantequilla\r\n- 100 grs de azucar\r\n- 100 grs de harina\r\n- 2 huevos\r\n- 1 cucharadita de polvos de hornear\r\n- 1/2 cucharadita de vainilla\r\n- 1 cascara de limon rallada', 'Batir bien la mantequilla, luego agregar el azucar y la cascara de limon.\r\nIncorporar de a uno los huevos sin dejar de batir.\r\nEn otro bol junte el harina y los polvos de hornear, luego incorporelos cernidos y de apoco a la masa hasta formar una mecla homogenea.\r\nEnmantequille moldes pequeños o bien un solo molde grande y poga la mezcla en el.\r\nPonga a fuego moderado app 30 minutos.', 'Queques', 'Dulces', 'dolo', ''),
(54, 'Sopaipillas', '- 1 kg de harina\r\n- 6 cucharaditas de royal\r\n- 9 cuharadas de manteca derretida\r\n- 3 cuharadita de vinagre\r\n- 1 cucharadita de sal\r\n- 1 tasa de agua cocida del zapallo\r\n- 1/2 kg de zapallo cocido \r\n- 1/2 lt de aceite para freir\r\n', 'Cocer el zapallo hasta que es bien blando.\r\nPoner el harina en un bol grande, agregar la levadura y la sal.\r\nUna vez que el zapallo este bien cocido pasar por cedazo y agregar a la mezcla.\r\nDerrita la manteca a fuego lento y cuando este bien disuelta agregue a al harina, seguido del vinagre.\r\nRevuelva bien y agregue el agua, de faltar liquido agregue mas agua de la cocion del zapallo.\r\nAmase hasta obtener una masa homogenea, suve y de un color amarillo palido.\r\nEstire con un uslero a gusto y corte en redondelas.\r\nPinche o perfore las sopaipillas y luego frialas.', 'Frituras', 'Masas', 'dolo', ''),
(55, 'Masa de Horno(Ana)', '- 1 kg harina\r\n- 1/4 kg manteca\r\n- 1/2 tasa de vino blanco\r\n- 1 cucharadita de sal\r\n- 1 1/2 tasa de agua hirviendo', 'Mescle en un bol el harina, la sal.\r\nAgregue la mateca derretida, el vino y el agua\r\nAmase asta obtener una masa sube y homogenea\r\nCorte la masa a gusto.', 'Empanadas', 'Masas', 'dolo', ''),
(56, 'Pino(Ana)', '- 3 cebollas\r\n- 1/2 kg de carne(posta)\r\n- 1 cucharada de azucar\r\n- sal\r\n- aji de color\r\n- comino\r\n- aceite', 'Pique la cebola en cudros finos y pongala a fuego fuerte hasta que transparente\r\nAgregue la carne y revuelva hasta que este cocida\r\nCondimente con el aji el comino y agrue la sal\r\nFinalmente agregue el azucar\r\nDeje enfriar antes de rellenar las empanadas', 'Empanadas', 'Vacuno', 'dolo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--
-- Creación: 09-09-2008 a las 10:54:15
-- Última actualización: 09-09-2008 a las 10:54:15
--

DROP TABLE IF EXISTS `tipos`;
CREATE TABLE IF NOT EXISTS `tipos` (
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY  (`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`tipo`) VALUES
('Arrozes'),
('Chancho'),
('Cremas'),
('Dulces'),
('Empanadas'),
('Frituras'),
('Licores'),
('Mariscos'),
('Masas'),
('Pastas'),
('Pescados'),
('Postres'),
('Queques'),
('Salsas'),
('Tortas'),
('Tortillas'),
('Vacuno');

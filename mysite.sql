-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 02 2017 г., 17:52
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mysite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `myuser`
--

CREATE TABLE `myuser` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `myuser`
--

INSERT INTO `myuser` (`id`, `name`, `email`, `password`) VALUES
(5, 'Tolik', 'dt150685@mail.ru', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `teams` text NOT NULL,
  `years` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `img`, `description`, `text`, `teams`, `years`) VALUES
(1, '@web/images/bayern01.jpg', 'Лига чемпионов УЕФА 2000/01 — 9-й розыгрыш Лиги чемпионов УЕФА и 46-й розыгрыш Кубка европейских чемпионов.\r\nФинал прошёл 23 мая 2001 года на стадионе Сан-Сиро в Милане.', '<b>23. 05. 2001. Милан. Стадион \"Сан-Сиро\". 80 000 зрителей.</b>\r\n\r\nЛига чемпионов УЕФА 2000/01 — 9-й розыгрыш Лиги чемпионов УЕФА и 46-й розыгрыш Кубка европейских чемпионов.\r\nФинал прошёл 23 мая 2001 года на стадионе Сан-Сиро в Милане. \r\nПобедителем стала «Бавария», обыгравшая в финале «Валенсию» в серии послематчевых пенальти со счётом 5:4 \r\n(игровое время матча завершилось со счётом 1:1).\r\n\r\nГолы: Мендьета (39-п) - Эффенберг (51 -п).\r\n\r\nПенальти забили: Салихамиджич, Циклер, Эффенберг, Лизаразю,\r\nЛинке - Мендьета, Кэрью, Бараха, Кили Гонсалес.\r\nНе забили: Пауло Сержио, Андерссон - Захович, Карбони, Пеллегрино.', '\"Бавария\" Мюнхен, Германия:\r\nКан, Саньоль (Янкер-46), Лизаразю,\r\nКуффур, Андерссон, Линке,\r\nХаргривз, Элбер (Циклер-100) , \r\nЭффенберг, Салихамиджич,\r\nШолль (Паулу Сержиу-108).\r\nТренер:Оттмар Хитцфельд.\r\n\r\n\"Валенсия\" Испания:\r\nКанисарес, Пеллегрино, Англома,\r\nАйяла (Джукич-90), Карбони,\r\nБараха, Гонсалес, Мендьета,\r\nАймар (Албейда-46), Карью,\r\nХуан Санчес (Захович-66). \r\nТренер: Эктор Купер.', '2000/2001'),
(2, '@web/images/real02.jpg', 'Лига чемпионов УЕФА 2001/02 — 10-й розыгрыш Лиги чемпионов УЕФА и 47-й розыгрыш Кубка европейских чемпионов. \r\nФинал прошёл 15 мая 2002 года на стадионе Хэмпден Парк в Глазго.', '15. 05. 2002. Глазго. Стадион \"Хемпден Парк\". 76 000 зрителей\r\n\r\nЛига чемпионов УЕФА 2001/02 — 10-й розыгрыш Лиги чемпионов УЕФА и 47-й розыгрыш Кубка европейских чемпионов. \r\nФинал прошёл 15 мая 2002 года на стадионе Хэмпден Парк в Глазго. \r\nПобедителем стал «Реал», обыгравший в финале «Байер» со счётом 2:1. \r\nИгра началась с минуты молчания в память о выдающемся игроке и тренере Валерии Васильевиче Лобановском.\r\n\r\nГолы: Рауль (9), Зидан (45) - Лусиу (14).\r\n\r\n', '\"Реал Мадрид\" Испания:\r\nСесар (Касильяс, 68), Йерро,\r\nСальгадо, Роберто Карлос, Эльгера,\r\nЗидан, Фигу (Макманаман, 61),\r\nМакелеле (Консейсау, 73), Солари,\r\nМорьентес, Рауль.\r\nТренер: Висенте Дель Боске.\r\n\r\n\"Байер\" Леверкузен, Германия:\r\nБутт, Живкович, Лусиу (Бабич, 90), \r\nПласенте, Бастюрк, Баллак,\r\nШнайдер, Шебечкен (Кирстен, 65), \r\nРамелов, Брдарич (Бербатов, 39), \r\nНойвилль.\r\nТренер: Клаус Топпмеллер.', '2001/2002'),
(3, '@web/images/milan03.jpg', 'Финал Лиги чемпионов УЕФА 2003 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2002/03, \r\n48-го сезона в истории Кубка европейских чемпионов и 11-го сезона в истории Лиги чемпионов УЕФА.', '28.05.2003. Манчестер. Стадион \"Олд Траффорд\". 63 215 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2003 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2002/03, \r\n48-го сезона в истории Кубка европейских чемпионов и 11-го сезона в истории Лиги чемпионов УЕФА. \r\nЭтот футбольный матч состоялся 28 мая 2003 года, на стадионе «Олд Траффорд» в Манчестере. \r\nВ матче встретились итальянские клубы «Ювентус» и «Милан». Основное и дополнительное время матча закончилось со счётом 0:0,\r\n в серии послематчевых пенальти удачливее оказались футболисты «россонери» — 3:2. \r\nЭто был второй финал, где встречались команды из одной страны. \r\nТри года назад в финале были клубы из Испании «Реал Мадрид» и «Валенсия».\r\n\r\nВыигранный титул для «Милана» стал шестым в истории, «Ювентус» проиграл в финале в пятый раз. \r\nСтоит заметить что вратарь Милана Дида во время третьего пенальти пересёк линию нарушения правил.\r\n\r\nПенальти забили: Сержиньо, Неста, Шевченко - Биринделли, Дель Пьеро.\r\nНе забили: Зеедорф, Каладзе - Трезеге, Салайета, Монтеро.\r\n\r\n', '\"Милан\" Италия:\r\nДида, Костакурта(Роке Жуниор-66),\r\nНеста, Мальдини, Каладзе,\r\nГаттузо, Пирло (Сержиньо-71), \r\nЗеедорф, Шевченко, Ф. Индзаги,\r\nРуй Кошта (Амброзини-87).\r\nТренер: Карло Анчелотти.\r\n\r\n\"Ювентус\" Турин, Италия:\r\nБуффон, Тюрам, Феррара,\r\nТудор (Биринделли-42), Монтеро,\r\nКаморанези (Конте-46), Трезеге,\r\nДавидс (Салайета-66), Дель Пьеро, \r\nТаккинарди, Дзамбротта.\r\nТренер: Марчелло Липпи.', '2002/2003'),
(4, '@web/images/portu-04.jpg\r\n', 'Финал Лиги чемпионов УЕФА 2004 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2003/04, \r\n49-го сезона в истории Кубка европейских чемпионов и 12-го сезона в истории Лиги чемпионов УЕФА.', '26.05.2004. Гельзенкхирхен. Стадион \"АуфШальке Арена\" 52 000 зрителей.\r\n\r\nФинал Лиги чемпионов УЕФА 2004 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2003/04, \r\n49-го сезона в истории Кубка европейских чемпионов и 12-го сезона в истории Лиги чемпионов УЕФА. \r\nЭтот футбольный матч состоялся 26 мая 2004 года, на стадионе «Арена Ауфшальке» в Гельзенкирхене. \r\nВ матче встретились французский «Монако» и португальский «Порту». \r\nДля «Монако» это был лишь второй финал еврокубков в истории: \r\nв 1992 году клуб проиграл в финале Кубка обладателей кубков «Вердеру».\r\n\r\n\r\nГолы: Карлос Альберто (39), Деку (71), Аленичев (75).\r\n\r\n', '\"Порту\" Португалия:\r\nБайя, Ж. Кошта, Карвалью,\r\nКоштинья, Деку (Эмануэл-86),\r\nДерлей (Маккарти-77), Манише,\r\nКарлос Альберто (Аленичев-60),\r\nВаленте, Феррейра, Мендес.\r\nТренер: Жозе Моуринью.\r\n\r\n\"Монако\" Франция:\r\nРома, Эвра, Ибарра, Родригес,\r\nЖиве (Скиллачи-71), Бернарди,\r\nЖюли (Пршо-25), Ротен, Зикос,\r\nМорьентес, Сиссе (Нонда-64).\r\nТренер: Дидье Дешам.', '2003/2004'),
(5, '@web/images/liv05-1.jpg', 'Финал Лиги чемпионов УЕФА 2005 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2004/05, \r\n50-го сезона в истории Кубка европейских чемпионов и 13-го сезона в истории Лиги чемпионов УЕФА.', '25.05.2005. Стамбул. Стадион \"Ататюрк Олимпият\" 65 000 зрителей.\r\n\r\nФинал Лиги чемпионов УЕФА 2005 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2004/05, \r\n50-го сезона в истории Кубка европейских чемпионов и 13-го сезона в истории Лиги чемпионов УЕФА. \r\nЭтот футбольный матч состоялся 25 мая 2005 года, на стадионе «Олимпийский» в Стамбуле. \r\nВ матче встретились английский «Ливерпуль» и итальянский «Милан». \r\nЕго часто называют одним из самых великих матчей в истории футбола. \r\n«Ливерпуль» победил в серии пенальти, хотя и проигрывал после первого тайма со счётом 0:3. \r\nТем не менее, команда нашла в себе силы победить, забив во втором тайме 3 гола за 6 минут. \r\nОсновное время завершилось со счётом 3:3, дополнительные 30 минут также прошли без забитых голов, \r\nи «Ливерпуль» победил в серии пенальти: 3:2. Это был пятый трофей клуба в этом соревновании, \r\nчто дало возможность сохранить кубок у себя навсегда.\r\n\r\n\r\nГолы: Мальдини (1), Креспо (39, 44) - \r\nДжеррард (54), Шмицер (56), Хави Алонсо (61).\r\n\r\nПенальти забили: Томассон, Кака - Хаманн, Сиссе, Шмицер.\r\nНе забили: Сержиньо, Пирло, Шевченко - Риисе.\r\n\r\n', '\"Милан\" Италия:\r\nДида, Кафу, Неста, Мальдини,\r\nСтам, Гаттузо (Руи Кошта-112),\r\nПирло, Зеедорф (Сержиньо-86),\r\nКака, Шевченко,\r\nКреспо (Томассон-85).\r\nТренер: Карло Анчелотти.\r\n\r\n\"Ливерпуль\" Италия:\r\nДудек, Финнэн (Хаманн-46),\r\nКаррагер, Хююпяя, Траоре,\r\nХави Алонсо, Луис Гарсиа,\r\nДжерард, Кьюэлл (Шмицер-23),\r\nРиисе, Барош (Сиисе-85).\r\nТренер: Рафаэль Бенитес.', '2004/2005'),
(6, '@web/images/barsa06.jpg', 'Финал Лиги чемпионов УЕФА 2006 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2005/06, \r\n51-го сезона в истории Кубка европейских чемпионов и 14-го сезона в истории Лиги чемпионов УЕФА.', '17. 05. 2006. Париж. Стадион \"Стад де Франс\". 79 500 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2006 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2005/06, \r\n51-го сезона в истории Кубка европейских чемпионов и 14-го сезона в истории Лиги чемпионов УЕФА. \r\nЭтот футбольный матч состоялся 17 мая 2006 года, на стадионе «Стад де Франс» в Париже. \r\nВ матче встретились испанская «Барселона» и английский «Арсенал». \r\nМатч закончился со счётом 2:1 в пользу испанской команды. \r\nИнтересно, что в этом матче была показана первая красная карточка в истории финалов Лиги чемпионов, \r\nкоторую получил вратарь «Арсенала» Йенс Леманн за нарушение против Самюэля Это’о.\r\n\r\n\r\nГолы: Это\'О (76), Беллетти (81) - Кэмпбелл (37).\r\n\r\n', '\"Барселона\" Испания:\r\nВальдес, Маркес, Пуйоль,\r\nЖюли, Роналдиньо, Ван Бронкхорст,\r\nЭто\'О, Эдмилсон (Иньеста-46),\r\nДеку, Ван Боммель (Ларссон-61),\r\nОлегер (Беллетти-71).\r\nТренер: Франк Рейкард.\r\n\r\n\"Арсенал\" Лондон, Англия:\r\nЛеманн, Коул, Кэмпбелл,\r\nЖилберто, Пирес (Альмуния-18),\r\nЛюнгберг, Глеб (Рейес-85),\r\nАнри, Фабрегас (Фламини-74),\r\nЭбуе, Коло Туре.\r\nТренер: Арсен Венгер.', '2005/2006'),
(7, '@web/images/milan07.jpg', 'Финал Лиги чемпионов УЕФА 2007 года (англ. 2007 UEFA Champions League Final) — футбольный матч между итальянской командой «Милан»\r\n и английским клубом «Ливерпуль», прошедший 23 мая 2007 года на Олимпийском стадионе в Афинах (Греция). \r\nЭтот матч был решающим в розыгрыше Лиги чемпионов УЕФА 2006/07, 52-го сезона в истории Кубка европейских чемпионов и 15-го \r\nсезона в истории Лиги чемпионов УЕФА. Стоит отметить, что эти же команды играли в финале за 2 года до этого.', '23. 05. 2007. Афины. Стадион \"Спирос Луис\". 74 000 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2007 года (англ. 2007 UEFA Champions League Final) — футбольный матч между итальянской командой «Милан»\r\n и английским клубом «Ливерпуль», прошедший 23 мая 2007 года на Олимпийском стадионе в Афинах (Греция). \r\nЭтот матч был решающим в розыгрыше Лиги чемпионов УЕФА 2006/07, 52-го сезона в истории Кубка европейских чемпионов и 15-го \r\nсезона в истории Лиги чемпионов УЕФА. Стоит отметить, что эти же команды играли в финале за 2 года до этого.\r\n\r\nПеред тем как попасть в финал, команды прошли пять раундов. Оба коллектива начали свой путь с третьего квалификационного раунда, \r\nпрошли его и выиграли первые места в своих группах, прежде чем попасть в стадию плей-офф. \r\nВ 1⁄8 финала «Милан» обыграл шотландский «Селтик», забив решающий гол в овертайме второго матча. \r\n«Ливерпуль» же на этой же стадии победил защищавшую титул испанскую «Барселону» по правилу гола, забитого на чужом поле. \r\nВ 1⁄4 финала «Милан» победил немецкую «Баварию», в то время как «Ливерпуль» обыграл голландский «ПСВ». \r\nВ полуфинале обеим командам противостояли английские команды: «Милан» играл против «Манчестер Юнайтед», а \r\n«Ливерпуль» — против лондонского «Челси». \r\nПо сумме двух матчей «Милан» победил «Юнайтед» 5:3, а «Ливерпуль» выиграл у «Челси» 4:1 в серии пенальти \r\n(игровое время завершилось со счётом 1:1).\r\n\r\nПеред матчем появились проблемы с билетами, поскольку количество болельщиков, желавших посетить этот матч, \r\nпревышало количество доступных мест на стадионе. После матча УЕФА назвал фанатов «Ливерпуля» «самыми худшими в Европе». \r\nНа матче присутствовало 74 тысячи зрителей. «Милан» открыл счёт на 45-й минуте усилиями Филиппо Индзаги, \r\nзабившего с подачи со штрафного удара от Андреа Пирло. Во втором тайме «Милан» удвоил преимущество благодаря \r\nвторому голу Индзаги на 82-й минуте. «Ливерпуль» отыграл один гол благодаря точному удару Дирка Кёйта на 89-й минуте, \r\nно этого не хватило, чтобы перевести игру в овертайм. «Милан» выиграл матч со счётом \r\n2:1 и завоевал седьмой за свою историю Кубок европейских чемпионов.\r\n\r\n\r\nГолы: Индзаги (45, 82) - Кюйт (89).\r\n\r\n', '\"Милан\" Италия:\r\nДида, Оддо, Мальдини,\r\nНеста, Янкуловски (Каладзе-79),\r\nГаттузо, Пирло, Амброзини,\r\nЗеедорф (Фавалли-90), Кака,\r\nИндзаги (Джилардино-88).\r\nТренер: Карло Анчелотти.\r\n\r\n\"Ливерпуль\" Англия:\r\nРейна, Финнэн (Арбелоа-88),\r\nКаррагер, Аггер, Пеннант,\r\nХави Алонсо, Риисе, Джеррард,\r\nМаскерано (Крауч-78), Кюйт,\r\nЗенден (Кьюэлл-59).\r\nТренер: Рафаэль Бенитес.', '2006/2007'),
(8, '@web/images/mu08.jpg', 'Финал Лиги чемпионов УЕФА 2008 (англ. 2008 UEFA Champions League Final) — футбольный матч, прошедший 21 мая 2008 года на \r\nстадионе «Лужники» (Москва, Россия), чтобы определить победителя Лиги чемпионов УЕФА сезона 2007/08. \r\nВ матче встретились «Манчестер Юнайтед» и «Челси», благодаря чему он стал первым английским финалом в истории турнира и третьим \r\n(после финалов 2000 и 2003 года), в котором участвовали две команды из одной и той же страны. \r\nИз-за разницы в часовых зонах между Москвой и европейскими странами матч начался в 22:45 по московскому времени (UTC+4). \r\nТаким образом, данный финальный матч Лиги Чемпионов стал первым, который начался в один день и закончился в другой.', '21. 05. 2008. Москва. Стадион \"Лужники\". 69 500 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2008 (англ. 2008 UEFA Champions League Final) — футбольный матч, прошедший 21 мая 2008 года на \r\nстадионе «Лужники» (Москва, Россия), чтобы определить победителя Лиги чемпионов УЕФА сезона 2007/08. \r\nВ матче встретились «Манчестер Юнайтед» и «Челси», благодаря чему он стал первым английским финалом в истории турнира и третьим \r\n(после финалов 2000 и 2003 года), в котором участвовали две команды из одной и той же страны. \r\nИз-за разницы в часовых зонах между Москвой и европейскими странами матч начался в 22:45 по московскому времени (UTC+4). \r\nТаким образом, данный финальный матч Лиги Чемпионов стал первым, который начался в один день и закончился в другой.\r\n\r\nЭто был первый финальный матч Лиги чемпионов, проведённый в России. \r\nКроме того, этот финал стал самым восточным в истории турнира. Для проведения этого матча правительство Российской \r\nФедерации пошло на беспрецедентные меры: английским болельщикам команд-финалистов в течение трёх дней до и после матча \r\nбыл разрешён въезд в Россию без визы, только по предъявлении паспорта и оригинала билета на матч. \r\nНа матче присутствовало более 69 тысяч человек.\r\n\r\nОсновное и дополнительное время матча завершилось вничью — 1:1. \r\nКриштиану Роналду открыл счёт ударом головой на 26-й минуте после передачи Уэса Брауна, но незадолго до перерыва \r\n«Челси» сравнял счёт усилиями Фрэнка Лэмпарда. Победу в игре в серии послематчевых пенальти со счётом 6:5 одержал \r\n«Манчестер Юнайтед», завоевавший свой третий Кубок Лиги чемпионов. Для проигравшего «Челси» матч стал \r\nпервым финалом Лиги чемпионов в истории клуба.\r\n\r\n\r\nГолы: Роналду (26) - Лэмпард (45).\r\nПенальти забили;Тевес, Кэррик, Харгривз, Нани, Андерсон, Гиггз - Баллак,\r\nБелетти, Лэмпард, Эшли Коул, Калу. Не забили: Роналду - Терри, Анелька', '\"Манчестер Юнайтед\":\r\nВан дер Сар, Эвра, Видич,\r\nКэррик, Браун (Андерсон-120+5),\r\nФердинанд, Руни (Нани-101),\r\nКэррик, Скоулз (Гиггз-88),\r\nРоналду, Харгривз.\r\nТренер: Алекс Фергюссон.\r\n\r\n\"Челси\" Лондон:\r\nЧех, Эшли Коул, Карвальо,\r\nМакелеле (Белетти-120+3),\r\nЭссьен, Джо Коул (Анелька-98),\r\nТерри, Лэмпард, Баллак,\r\nДрогба, Малуда (Калу-93).\r\nТренер: Авраам Грант.', '2007/2008'),
(9, '@web/images/barca09.jpg', 'Финал Лиги чемпионов УЕФА 2009 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2008/09, 54-го сезона в истории \r\nКубка европейских чемпионов и 17-го сезона в истории Лиги чемпионов УЕФА.', '27. 05. 2009. Рим. \"Стадио Олимпико\". 72 700 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2009 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2008/09, 54-го сезона в истории \r\nКубка европейских чемпионов и 17-го сезона в истории Лиги чемпионов УЕФА. Этот футбольный матч состоялся 27 мая 2009 года, \r\nна стадионе «Олимпийский» в Риме. В матче встретились испанская «Барселона» и английский «Манчестер Юнайтед».\r\n\r\n\r\nГолы: Самуэль Это\'О (10), Лионель Месси (70).', '\"Барселона\"\r\nВалдес, Силвиньо, Пике,\r\nПуйоль, Хави, Яя Туре,\r\nИньеста (Педрито-90), Бускетс,\r\nАнри (Сейду Кейта-72),\r\nМесси, Это\'О.\r\nТренер: Хосеп Гвардиола.\r\n\r\n\"Манчестер Юнайтед\"\r\nВан дер Сар, Эвра, Видич,\r\nФердинанд, О\'Ши, Роналду,\r\nГиггз (Скоулз-75), Кэррик,\r\nАндерсон (Тевес-46), Руни,\r\nПак Чжи-Сун (Бербатов-66).\r\nТренер: Алекс Фергюссон.', '2008/2009'),
(10, '@web/images/inter10.jpg', 'Финал Лиги чемпионов УЕФА 2010 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2009/10, 55-го сезона в истории \r\nКубка европейских чемпионов и 18-го сезона в истории Лиги чемпионов УЕФА. \r\nМатч прошёл на «Сантьяго Бернабеу», домашнем стадионе мадридского «Реала».', '22. 05. 2010. Мадрид. \"Сантьяго Бернабеу\". 81 100 зрителей\r\n\r\nФинал Лиги чемпионов УЕФА 2010 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2009/10, 55-го сезона в истории \r\nКубка европейских чемпионов и 18-го сезона в истории Лиги чемпионов УЕФА. \r\nМатч прошёл на «Сантьяго Бернабеу», домашнем стадионе мадридского «Реала». \r\nВ нём встретились немецкая «Бавария» и итальянский «Интернационале». \r\n«Интер» благодаря двум мячам Диего Милито одержал победу со счетом 2:0. Встречу обслуживал английский арбитр Говард Уэбб.\r\n\r\nВ ноябре 2007 года было принято решение о том, что финал Лиги чемпионов 2010 года станет первым финалом этого турнира, \r\nкоторый будет проведён не в среду, а в субботу.\r\n\r\n\r\nГолы: Диего Милито (35, 70).', '\"Бавария\" Мюнхен\r\nБутт, Ван Бюйтен, Демикелис,\r\nЛам, Бадштубер, Ван Боммель,\r\nАлтынтоп (Клозе-63), Роббен,\r\nШвайнштайгер, Мюллер,\r\nОлич (Гомес-74).\r\nТренер: Луи Ван Гал.\r\n\r\n\"Интер\" Милан\r\nЖулио Сезар, Дзанетти, Лусио,\r\nМайкон, Киву (Станкович-68),\r\nСамуэль, Камбьяссо, Это\'О,\r\nСнейдер, Пандев (Мунтари-79),\r\nДиего Милито (Матерацци-90).\r\nТренер: Жозе Моуриньо.', '2009/2010'),
(11, '@web/images/barca11.jpg', 'Финал Лиги чемпионов УЕФА 2011 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2010/11, 56-го сезона в истории \r\nКубка европейских чемпионов и 19-го сезона в истории Лиги чемпионов УЕФА. ', '28. 05. 2011    Лондон (Англия), стадион \"Уэмбли\"   87 695 зрителей.\r\n\r\nФинал Лиги чемпионов УЕФА 2011 года — финальный матч розыгрыша Лиги чемпионов УЕФА 2010/11, 56-го сезона в истории \r\nКубка европейских чемпионов и 19-го сезона в истории Лиги чемпионов УЕФА. \r\nЭтот футбольный матч состоялся в субботу, 28 мая 2011 года, на стадионе «Уэмбли» в Лондоне, который принял рекордный — \r\nшестой финал Кубка европейских чемпионов (после финалов 1963, 1968, 1971, 1978 и 1992 годов). \r\nВ матче встретились испанская «Барселона» и английский «Манчестер Юнайтед» (два этих клуба до этого уже однажды \r\nвстречались в финале Лиги Чемпионов).\r\n\r\nКубок завоевала «Барселона», выиграв этот финальный матч со счётом 3:1. Она сыграет с португальским «Порту», \r\nкоторый выиграл финал Лиги Европы 2011 года, в матче на Суперкубок УЕФА в августе 2011 года на стадионе «Луи II» в Монако, \r\nа также примет участие в Клубном чемпионате мира.\r\n\r\nЭтот матч стал последним официальным в карьере нидерландского вратаря «Юнайтед» Эдвина ван дер Сара.\r\n\r\n\r\nГолы: Педро Родригес (17), Лионель Месси (54), Давид Вилья (69) - Уэйн Руни (34).', '\"Барселона\"\r\nВалдес, Силвиньо, Пике,\r\nПуйоль, Хави, Яя Туре,\r\nИньеста (Педрито-90), Бускетс,\r\nАнри (Сейду Кейта-72),\r\nМесси, Это\'О.\r\nТренер: Хосеп Гвардиола.\r\n\r\n\"Манчестер Юнайтед\"\r\nВан дер Сар, Эвра, Видич,\r\nФердинанд, О\'Ши, Роналду,\r\nГиггз (Скоулз-75), Кэррик,\r\nАндерсон (Тевес-46), Руни,\r\nПак Чжи-Сун (Бербатов-66).\r\nТренер: Алекс Фергюссон.', '2010/2011');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `myuser`
--
ALTER TABLE `myuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `myuser`
--
ALTER TABLE `myuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

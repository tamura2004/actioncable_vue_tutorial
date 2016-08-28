--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO abilities VALUES (0, '筋力', '2016-08-11 13:42:31.572171', '2016-08-11 13:42:31.572171');
INSERT INTO abilities VALUES (1, '敏捷', '2016-08-11 13:42:31.585846', '2016-08-11 13:42:31.585846');
INSERT INTO abilities VALUES (2, '耐久', '2016-08-11 13:42:31.616637', '2016-08-11 13:42:31.616637');


--
-- Name: abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('abilities_id_seq', 3, false);


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO jobs VALUES (0, '戦士', 'fighter', '2016-08-11 13:42:31.823588', '2016-08-11 13:42:31.823588');
INSERT INTO jobs VALUES (1, '僧侶', 'cleric', '2016-08-11 13:42:31.8797', '2016-08-11 13:42:31.8797');
INSERT INTO jobs VALUES (2, '魔法使い', 'thief', '2016-08-11 13:42:31.919801', '2016-08-26 23:53:37.098246');


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('jobs_id_seq', 3, false);


--
-- Data for Name: jobs_initial_abilities; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO jobs_initial_abilities VALUES (1, 0, 0, '5D+5', '2016-08-11 13:42:31.850587', '2016-08-11 13:42:31.850587');
INSERT INTO jobs_initial_abilities VALUES (2, 0, 1, '2D+8', '2016-08-11 13:42:31.862743', '2016-08-11 13:42:31.862743');
INSERT INTO jobs_initial_abilities VALUES (3, 0, 2, '2D+8', '2016-08-11 13:42:31.871467', '2016-08-11 13:42:31.871467');
INSERT INTO jobs_initial_abilities VALUES (4, 1, 0, '3D+7', '2016-08-11 13:42:31.888002', '2016-08-11 13:42:31.888002');
INSERT INTO jobs_initial_abilities VALUES (5, 1, 1, '3D+7', '2016-08-11 13:42:31.8976', '2016-08-11 13:42:31.8976');
INSERT INTO jobs_initial_abilities VALUES (6, 1, 2, '3D+7', '2016-08-11 13:42:31.907139', '2016-08-11 13:42:31.907139');
INSERT INTO jobs_initial_abilities VALUES (7, 2, 0, '2D+8', '2016-08-11 13:42:31.933747', '2016-08-11 13:42:31.933747');
INSERT INTO jobs_initial_abilities VALUES (8, 2, 1, '5D+5', '2016-08-11 13:42:31.942853', '2016-08-11 13:42:31.942853');
INSERT INTO jobs_initial_abilities VALUES (9, 2, 2, '2D+8', '2016-08-11 13:42:31.952417', '2016-08-11 13:42:31.952417');


--
-- Name: jobs_initial_abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('jobs_initial_abilities_id_seq', 10, false);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: tamura
--



--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('messages_id_seq', 1, false);


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO pages VALUES (1, '隙間の洞', '祭壇', '祭壇', 'place', '魔女の家', '滝つぼ', '裂け目', NULL, '思い出す', NULL, '走る', NULL, NULL, NULL, NULL, NULL, '2016-08-24 14:25:39.775779', '2016-08-24 14:25:39.775779');
INSERT INTO pages VALUES (2, '隙間の洞', '裂け目', '裂け目', 'place', '魔女の家', '滝つぼ', '祭壇', NULL, '飛び降りる', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-24 14:25:39.786394', '2016-08-24 14:25:39.786394');
INSERT INTO pages VALUES (3, '隙間の洞', '裂け目', '飛び降りる', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'どこまでも落ちていく', 'そして、あなたは死んだ', NULL, NULL, '2016-08-24 14:25:39.798556', '2016-08-24 14:25:39.798556');
INSERT INTO pages VALUES (4, '隙間の洞', '隙間の洞', '滝つぼ', 'place', '魔女の家', '裂け目', '祭壇', NULL, '飛び込む', NULL, '調べる', NULL, NULL, NULL, NULL, NULL, '2016-08-24 14:25:39.817135', '2016-08-24 14:25:39.817135');
INSERT INTO pages VALUES (6, '隙間の洞', '祭壇', '思い出す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '何も思い出せない', NULL, NULL, NULL, '2016-08-24 14:25:39.849531', '2016-08-24 14:25:39.849531');
INSERT INTO pages VALUES (7, '隙間の洞', '祭壇', '走る', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '周囲は崖だった！', '暗闇に投げ出されてあなたは死んだ！', NULL, NULL, '2016-08-24 14:25:39.866595', '2016-08-24 14:25:39.866595');
INSERT INTO pages VALUES (8, '隙間の洞', '滝つぼ', '飛び込む', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ものすごい急流だ', '息が苦しい', '溺れてあなたは死んだ', NULL, '2016-08-24 14:25:39.883736', '2016-08-24 14:25:39.883736');
INSERT INTO pages VALUES (10, '隙間の洞', '魔女の家', '長女と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'まだあきらめられないのかい', NULL, NULL, NULL, '2016-08-24 14:25:39.924629', '2016-08-24 14:25:39.924629');
INSERT INTO pages VALUES (11, '隙間の洞', '魔女の家', '次女と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '・・・', NULL, NULL, NULL, '2016-08-24 14:25:39.945256', '2016-08-24 14:25:39.945256');
INSERT INTO pages VALUES (14, '隙間の洞', '魔女の家', '裏口を出る', 'place', '魔女の家', NULL, NULL, NULL, '最初の篝火', '光る裂け目', NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-24 14:25:39.978615', '2016-08-26 23:42:23.867578');
INSERT INTO pages VALUES (16, '隙間の洞', '光る裂け目', '光る裂け目', 'place', '最初の村', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '暗闇を抜け、裂け目の向こうに村が見える。', NULL, NULL, NULL, '2016-08-26 23:42:38.649668', '2016-08-26 23:43:23.358059');
INSERT INTO pages VALUES (13, '隙間の洞', '魔女の家', '二階を探す', 'battle', '魔女の家', 'ジャイアントスパイダー', '30', '14', '10', '150', NULL, NULL, 'スパイダーが現れた！', NULL, '', NULL, '2016-08-24 14:25:39.97136', '2016-08-26 23:50:16.097911');
INSERT INTO pages VALUES (15, '最初の村', '最初の村', '最初の村', 'battle', '村の入り口', 'ヒュージオーガ', '1000', '50', '10', '3000', NULL, NULL, '何か大きなものがのっそりと動き出した。', 'ヒュージオーガが現れた。強敵だ！', '', NULL, '2016-08-24 14:25:39.988377', '2016-08-26 23:50:16.920248');
INSERT INTO pages VALUES (9, '隙間の洞', '魔女の家', '魔女の家', 'place', '長女と話す', '次女と話す', '三女と話す', NULL, NULL, '二階を探す', '裏口を出る', NULL, '古びた家の中に三人の老婆が座っている', NULL, NULL, NULL, '2016-08-24 14:25:39.899412', '2016-08-27 23:40:05.40969');
INSERT INTO pages VALUES (26, '隙間の洞', '魔女の家', '床下に入る', 'place', '階段を下りる', NULL, NULL, NULL, '魔女の家', NULL, NULL, NULL, 'パキリと白い骨が砕ける', '降り積もった小石に見えたのは', '白骨だった', NULL, '2016-08-28 00:04:09.359878', '2016-08-28 00:08:37.257019');
INSERT INTO pages VALUES (22, '隙間の洞', '魔女の家', '裂け目のこと', 'place', '毒薬を受け取る', '受け取らない', NULL, NULL, NULL, NULL, NULL, NULL, 'ヒュージオーガがいるよ', '強敵さね', '楽をしたかったら毒を使うんだね', NULL, '2016-08-27 23:58:03.150051', '2016-08-28 00:01:28.431444');
INSERT INTO pages VALUES (27, '隙間の洞', '魔女の家', '階段を下りる', 'place', '階段をさらに降りる', '階段を上る', NULL, NULL, NULL, NULL, NULL, NULL, 'ギシリと階段がきしむ', '暗闇に目が慣れると、無数の木の櫓が見える', 'お前は櫓を取り囲むらせん階段を下りていく', NULL, '2016-08-28 00:04:43.222423', '2016-08-28 00:08:37.293725');
INSERT INTO pages VALUES (28, '隙間の洞', '魔女の家', '階段を上る', 'place', NULL, NULL, NULL, NULL, '魔女の家', NULL, NULL, NULL, 'ギシギシと音を立てる階段をゆっくりと上り', 'お前は魔女の家に戻る', NULL, NULL, '2016-08-28 00:05:24.260497', '2016-08-28 00:08:37.340036');
INSERT INTO pages VALUES (29, '地下墓地', '骨塚', '階段をさらに降りる', 'place', '壁を上る', '大声で叫ぶ', '北の暗闇へ', '南の暗闇へ', NULL, NULL, NULL, NULL, '突如階段が崩れる', '死を覚悟して落下したお前は', 'うずたかく積もった白骨の山に落下', '命を拾った', '2016-08-28 00:05:45.960724', '2016-08-28 00:12:41.414794');
INSERT INTO pages VALUES (33, '地下墓地', '骨塚', '指に嵌める', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '焼けつくような痛み！', '肉を残して骨が急激に成長する！', '肉体を突き破ってお前は骨巨人になった。', NULL, '2016-08-28 00:21:05.728306', '2016-08-28 00:22:19.337003');
INSERT INTO pages VALUES (35, '地下墓地', '骨塚', 'かざして覗き込む', 'place', '隠し扉を開ける', '隠し扉を調べる', NULL, NULL, '骨塚に戻る', NULL, NULL, NULL, '闇が緑色の光に浮かび上がる', '隠し扉を見つけた', NULL, NULL, '2016-08-28 00:21:05.730859', '2016-08-28 00:33:14.251276');
INSERT INTO pages VALUES (20, '隙間の洞', '魔女の家', '神様のこと', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '二階で死んでるよ', NULL, NULL, NULL, '2016-08-27 23:58:01.709478', '2016-08-27 23:59:08.872511');
INSERT INTO pages VALUES (21, '隙間の洞', '魔女の家', '世界のこと', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '神様が作ってる途中で死んだからねえ', 'この世界は未完成なのさ', NULL, NULL, '2016-08-27 23:58:02.454681', '2016-08-27 23:59:36.733154');
INSERT INTO pages VALUES (12, '隙間の洞', '魔女の家', '三女と話す', 'place', '話しかける', '', NULL, NULL, NULL, NULL, NULL, NULL, '・・・', NULL, NULL, NULL, '2016-08-24 14:25:39.964765', '2016-08-27 23:42:26.321687');
INSERT INTO pages VALUES (18, '隙間の洞', '魔女の家', '話しかける', 'place', 'あきらめず話す', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '・・・', NULL, NULL, NULL, '2016-08-27 23:41:27.670126', '2016-08-27 23:42:39.36489');
INSERT INTO pages VALUES (5, '隙間の洞', '滝つぼ', '調べる', 'item', 'ダガー', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ダガーを見つけた', NULL, NULL, NULL, '2016-08-24 14:25:39.830604', '2016-08-28 00:00:42.048854');
INSERT INTO pages VALUES (30, '地下墓地', '骨塚', '大声で叫ぶ', 'battle', '光の指輪', '骨巨人', '300', '30', '20', NULL, NULL, NULL, 'お前の声が闇に木霊して消える。', '声を聞きつけた捕食者が来た！', '骨巨人が現れた', NULL, '2016-08-28 00:12:00.401536', '2016-08-28 00:19:34.762645');
INSERT INTO pages VALUES (31, '地下墓地', '骨塚', '壁を上る', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '無理だった・・・', NULL, NULL, NULL, '2016-08-28 00:12:00.439663', '2016-08-28 00:13:53.825747');
INSERT INTO pages VALUES (32, '地下墓地', '骨塚', '光の指輪', 'place', '指に嵌める', 'かざして覗き込む', '指輪を捨てる', NULL, NULL, NULL, NULL, NULL, '骨巨人が崩れ去ると', 'そこには指輪が残された。', 'お前は指輪を拾った。', NULL, '2016-08-28 00:12:00.457081', '2016-08-28 00:20:58.693829');
INSERT INTO pages VALUES (23, '隙間の洞', '魔女の家', '床下のこと', 'place', '床下に入る', NULL, NULL, NULL, '魔女の家', NULL, NULL, NULL, '老婆が敷物をめくりあげると', '地下に続く階段が現れた', '乾いた腐臭がただよう', NULL, '2016-08-27 23:58:05.376829', '2016-08-28 00:03:58.688587');
INSERT INTO pages VALUES (19, '隙間の洞', '魔女の家', 'あきらめず話す', 'place', '神様のこと', '世界のこと', '裂け目のこと', '床下のこと', NULL, NULL, NULL, NULL, 'なにが知りたいんだい', NULL, NULL, NULL, '2016-08-27 23:42:46.118044', '2016-08-27 23:57:29.46315');
INSERT INTO pages VALUES (24, '隙間の洞', '魔女の家', '毒薬を受け取る', 'item', '毒薬', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '自分に使うんじゃないよ', NULL, NULL, NULL, '2016-08-28 00:01:20.569471', '2016-08-28 00:08:37.116261');
INSERT INTO pages VALUES (25, '隙間の洞', '魔女の家', '受け取らない', 'place', '', NULL, NULL, NULL, '魔女の家', NULL, NULL, NULL, 'そうかいそうかい', NULL, NULL, NULL, '2016-08-28 00:01:21.42311', '2016-08-28 00:08:37.213303');
INSERT INTO pages VALUES (37, '地下墓地', '骨塚', '赤いボタンを押す', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '炎の爆発！', '黒焦げになってお前は死んだ。', NULL, NULL, '2016-08-28 00:23:48.695314', '2016-08-28 00:26:05.823075');
INSERT INTO pages VALUES (36, '地下墓地', '骨塚', '隠し扉を開ける', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '扉の向こうから汚水が殺到する', 'すごい量だ', 'たちまち溺れてお前は死んだ', NULL, '2016-08-28 00:23:48.661426', '2016-08-28 00:24:34.742686');
INSERT INTO pages VALUES (34, '地下墓地', '骨塚', '指輪を捨てる', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '捨てられない！', '捨ててはいけない！', NULL, NULL, '2016-08-28 00:21:05.729667', '2016-08-28 00:21:31.797563');
INSERT INTO pages VALUES (40, '地下墓地', '骨塚', '緑のボタンを押す', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '頭上からスライム！', 'ゆっくりと消化されてお前は死んだ', NULL, NULL, '2016-08-28 00:25:27.026396', '2016-08-28 00:29:10.530021');
INSERT INTO pages VALUES (38, '地下墓地', '骨塚', '隠し扉を調べる', 'place', '赤いボタンを押す', '青いボタンを押す', '緑のボタンを押す', '黄色いボタンを押す', '骨塚に戻る', NULL, NULL, NULL, '扉の向こうは大量の液体があるようだ', '操作ボタンを見つけた', 'どれが排水ボタンなのか・・・', NULL, '2016-08-28 00:23:48.696928', '2016-08-28 00:33:15.483358');
INSERT INTO pages VALUES (41, '地下墓地', '骨塚', '黄色いボタンを押す', 'death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '黄色いガス！', '多幸感でゲラゲラ笑いながらお前は死んだ', NULL, NULL, '2016-08-28 00:25:30.692017', '2016-08-28 00:29:10.535706');
INSERT INTO pages VALUES (17, '最初の村', '最初の村', '村の入り口', 'place', '魔女の家', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '村に向かう吊り橋が焼け落ちている', '大きな裂け目があり渡れない。', '引き返そう。あの三女が何かを知っているに違いない。', NULL, '2016-08-26 23:47:24.424802', '2016-08-28 00:32:02.870556');
INSERT INTO pages VALUES (46, '最初の村', '村の広場', '飛び降りて村へ', 'place', '鍛冶屋と話す', '黒ローブの女と話す', '猫と話す', '老婆と話す', '亡骸に祈る', NULL, NULL, NULL, 'さびれた村だ。剣と盾を持った亡骸が骨になって打ち捨てされている。', '海に向かった崖に、黒いローブの女が佇んでいる。', '伝説の火防女なのか・・・？', NULL, '2016-08-28 00:34:46.378709', '2016-08-28 00:42:28.538396');
INSERT INTO pages VALUES (47, '最初の村', '村の広場', '鍛冶屋と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '俺の仕事場のカギを持ってこい。', 'まったく。', NULL, NULL, '2016-08-28 00:36:51.77535', '2016-08-28 00:43:49.470472');
INSERT INTO pages VALUES (48, '最初の村', '村の広場', '黒ローブの女と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '私の中の闇に触れて下さい。', NULL, NULL, NULL, '2016-08-28 00:36:55.444311', '2016-08-28 00:44:13.091667');
INSERT INTO pages VALUES (49, '最初の村', '村の広場', '猫と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'あなたいい匂いがするわ。うふふ。', NULL, NULL, NULL, '2016-08-28 00:36:58.460672', '2016-08-28 00:44:25.249496');
INSERT INTO pages VALUES (43, '地下墓地', '骨塚', '骨塚に戻る', 'place', '壁を上る', '大声で叫ぶ', '北の暗闇へ', '南の暗闇へ', NULL, NULL, NULL, NULL, 'お前は骨塚に戻った', NULL, NULL, NULL, '2016-08-28 00:33:04.625831', '2016-08-28 00:33:47.97173');
INSERT INTO pages VALUES (50, '最初の村', '村の広場', '老婆と話す', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '買っておくれよ。何か買っておくれよ。', NULL, NULL, NULL, '2016-08-28 00:37:01.69564', '2016-08-28 00:44:34.778614');
INSERT INTO pages VALUES (51, '最初の村', '村の広場', '亡骸に祈る', 'complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '優しき人間よ。おまえはチュートリアルをクリアした。', 'この剣と盾を持っていけ。', NULL, NULL, '2016-08-28 00:42:39.444586', '2016-08-28 00:44:43.035359');
INSERT INTO pages VALUES (44, '地下墓地', '骨塚', '北の暗闇へ', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '行き止まりだ・・・', NULL, NULL, NULL, '2016-08-28 00:34:15.034869', '2016-08-28 00:34:33.582918');
INSERT INTO pages VALUES (45, '地下墓地', '骨塚', '南の暗闇へ', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '行き止まりだ・・・', NULL, NULL, NULL, '2016-08-28 00:34:18.134591', '2016-08-28 00:34:36.088358');
INSERT INTO pages VALUES (42, '地下墓地', '骨塚', '隠し扉に入る', 'place', '飛び降りて村へ', NULL, NULL, NULL, '骨塚に戻る', NULL, NULL, NULL, '目の前に大きな裂け目がある。液体は裂け目に流れていった。', '裂け目の向こうに村が見える。飛び降りていけそうだが、戻ることはできまい。', NULL, NULL, '2016-08-28 00:30:31.128873', '2016-08-28 00:39:17.834496');
INSERT INTO pages VALUES (39, '地下墓地', '骨塚', '青いボタンを押す', 'place', '隠し扉に入る', NULL, NULL, NULL, '骨塚に戻る', NULL, NULL, NULL, '排水ボタンだ！', '扉の向こうで水が流れていく音がする', NULL, NULL, '2016-08-28 00:25:23.849592', '2016-08-28 02:55:44.388932');


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('pages_id_seq', 51, true);


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO races VALUES (0, '人間', 'human', '2016-08-11 13:42:31.641943', '2016-08-11 13:42:31.641943');
INSERT INTO races VALUES (1, 'エルフ', 'elf', '2016-08-11 13:42:31.711762', '2016-08-11 13:42:31.711762');
INSERT INTO races VALUES (2, 'ドワーフ', 'dwarf', '2016-08-11 13:42:31.761951', '2016-08-11 13:42:31.761951');


--
-- Name: races_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('races_id_seq', 3, false);


--
-- Data for Name: races_initial_abilities; Type: TABLE DATA; Schema: public; Owner: tamura
--

INSERT INTO races_initial_abilities VALUES (1, 0, 0, '3', '2016-08-11 13:42:31.674716', '2016-08-13 14:12:16.941922');
INSERT INTO races_initial_abilities VALUES (2, 0, 1, '3', '2016-08-11 13:42:31.6873', '2016-08-13 14:12:17.563964');
INSERT INTO races_initial_abilities VALUES (3, 0, 2, '3', '2016-08-11 13:42:31.697966', '2016-08-13 14:12:18.748071');
INSERT INTO races_initial_abilities VALUES (4, 1, 0, '2', '2016-08-11 13:42:31.723829', '2016-08-13 14:12:24.762259');
INSERT INTO races_initial_abilities VALUES (5, 1, 1, '5', '2016-08-11 13:42:31.735262', '2016-08-13 14:12:25.124722');
INSERT INTO races_initial_abilities VALUES (6, 1, 2, '2', '2016-08-11 13:42:31.748048', '2016-08-13 14:12:25.605574');
INSERT INTO races_initial_abilities VALUES (7, 2, 0, '2', '2016-08-11 13:42:31.773448', '2016-08-13 14:12:27.770684');
INSERT INTO races_initial_abilities VALUES (8, 2, 1, '2', '2016-08-11 13:42:31.784379', '2016-08-13 14:12:28.188283');
INSERT INTO races_initial_abilities VALUES (9, 2, 2, '5', '2016-08-11 13:42:31.797398', '2016-08-13 14:12:30.602109');


--
-- Name: races_initial_abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tamura
--

SELECT pg_catalog.setval('races_initial_abilities_id_seq', 10, false);

--
-- PostgreSQL database dump complete
--


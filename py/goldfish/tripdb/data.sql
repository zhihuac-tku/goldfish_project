--
-- PostgreSQL database dump
--

\restrict xOhBz0chFoasf5scDC7ArmmfQ699drdQePaHgJeltENpNmbD3dxgynlRgDaTyEW

-- Dumped from database version 15.15 (Debian 15.15-1.pgdg13+1)
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.items (place_code, item_name_zh, item_name_en, item_name_ja, type, location) FROM stdin;
P-1	蘭陽博物館	Lanyang Museum	宜蘭県立蘭陽博物館	place	宜蘭縣頭城鎮
P-2	外澳海灘	Wai’ao Beach	外澳ビーチ	place	宜蘭縣頭城鎮
P-3	烏石漁港	Wushi Fishing Harbor	烏石漁港	place	宜蘭縣頭城鎮
P-4	頭城老街	Toucheng Old Street	頭城老街	place	宜蘭縣頭城鎮
P-5	龜山島賞鯨	Guishan Island Whale Watching	亀山島ホエールウォッチング	place	宜蘭縣頭城鎮
P-6	北關海潮一線天	Beiguan Tidal Gorge	北関海潮一線天	place	宜蘭縣頭城鎮
P-7	金車伯朗咖啡城堡	Mr. Brown Café Castle	ミスターブラウン・コーヒーキャッスル	place	宜蘭縣頭城鎮
P-8	慶元宮	Qingyuan Temple	慶元宮	place	宜蘭縣頭城鎮
P-9	頭城濱海森林公園	Toucheng Coastal Forest Park	頭城浜海森林公園	place	新北市貢寮區 / 宜蘭縣頭城鎮
P-10	草嶺古道	Caoling Historic Trail	草嶺古道	place	宜蘭縣頭城鎮
P-11	九號咖啡石城館	No.9 Café (Shicheng)	9号カフェ（石城館）	place	宜蘭縣頭城鎮
P-12	蟾蜍山觀景台	Toad Mountain Observation Deck	蟾蜍山展望台	place	宜蘭縣頭城鎮
P-13	大里天公廟	Dali Tiangong Temple	大里天公廟	place	宜蘭縣頭城鎮
P-14	大溪漁港	Daxi Fishing Harbor	大溪漁港	place	宜蘭縣頭城鎮
E-1	頭城老街小吃	Toucheng Old Street Snacks	老街屋台グルメ	eat	宜蘭縣頭城鎮
E-2	品誼古早味小吃	Pinyi traditional cuisine	品誼 伝統的なスナック	eat	宜蘭縣頭城鎮
E-3	龍記牛肉麵	Long Ji Beef Noodles	龍記牛肉麺	eat	宜蘭縣頭城鎮
E-4	吉祥鮮肉小籠包	Jixiang Steamed Pork Dumplings	吉祥小籠包	eat	宜蘭縣頭城鎮
E-5	阿宗芋冰城	A-Zong Taro Ice City	阿宗タロイモアイス	eat	宜蘭縣頭城鎮
E-6	老張早餐吧	Lao Zhang Breakfast Bar	老張朝食店	eat	宜蘭縣頭城鎮
E-7	Hito石花凍	Hito Grass Jelly	Hito 石の花ゼリー	eat	宜蘭縣頭城鎮
E-8	頭城車站阿伯蔥油餅	Toucheng Station Scallion Pancakes	頭城駅おじさんのネギ餅	eat	宜蘭縣頭城鎮
E-9	屋台拉麵	Street Ramen Stall	屋台ラーメン	eat	宜蘭縣頭城鎮
E-10	頂埔阿嬤蔥油餅	Dingpu Grandma’s Scallion Pancakes	頂埔おばあちゃんのネギ餅	eat	宜蘭縣頭城鎮
E-11	春捲伯	Uncle's Spring Rolls	春巻きおじさん	eat	宜蘭縣頭城鎮
E-12	烏石漁港	Wushi Fishing Harbor	烏石漁港	eat	宜蘭縣頭城鎮
E-13	金車伯朗咖啡城堡	Mr. Brown Café Castle	ミスターブラウン・コーヒーキャッスル	eat	宜蘭縣頭城鎮
E-14	九號咖啡石城館	No.9 Café (Shicheng)	9号カフェ（石城館）	eat	宜蘭縣頭城鎮
E-15	大溪漁港	Daxi Fishing Harbor	大溪漁港	eat	宜蘭縣頭城鎮
E-16	奶油麵包烘焙坊	Bread & Butter Bakery	ブレッド＆バター	eat	宜蘭縣頭城鎮
G-1	奕順軒	Yishunxuan	奕順軒	gift	宜蘭縣頭城鎮
G-2	橘之鄉	Orange Village	橘之郷	gift	宜蘭縣頭城鎮
G-3	三合餅舖	Sanhe Bakery	三合餅舗	gift	宜蘭縣頭城鎮
G-4	新協珍餅店	Sin Hsieh Chen Bakery	新協珍ベーカリー	gift	宜蘭縣頭城鎮
G-5	大溪漁港新鮮漁貨	Daxi Fishing Harbor Fresh Seafood	大溪漁港・新鮮魚介	gift	宜蘭縣頭城鎮
G-6	頭圍農驛品牌館	Touwei Farmer’s Market	頭囲農駅（地元農産物直売所）	gift	宜蘭縣礁溪鄉
G-7	諾貝爾奶凍捲	Nobel Milk Roll Cake	ノーベルミルクロール	gift	宜蘭縣頭城鎮
G-8	奶油麵包烘焙坊	Bread & Butter Bakery	ブレッド＆バター	gift	宜蘭縣頭城鎮
G-9	奶酥人	Naishu Ren (Milk Spread Toast)	奶酥人（ミルクカスタードトースト）	gift	宜蘭縣頭城鎮
P-15	頭城農場	Toucheng Leisure Farm	頭城レジャーファーム	place	宜蘭縣頭城鎮
E-17	奶酥人	Naishu Ren (Milk Spread Toast)	奶酥人（ミルクカスタードトースト）	eat	宜蘭縣礁溪鄉
G-10	極品四季香肉鬆	Premium Four-Season Pork Floss	極上四季香肉松	gift	
\.


--
-- Data for Name: keywords; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.keywords (keyword_id, value, dimension, description, value_en, value_ja) FROM stdin;
1	古道	place_type	傳統山徑，多為不平整地形	Old Trail	古道（こどう）
2	步道	place_type	規劃完善、適合步行的道路	Walking Trail	歩道（ほどう）
3	健行	activity	以步行方式進行的戶外活動	Hiking	ハイキング
4	登山	activity	需要體力與步行的戶外活動	Mountain Climbing	登山（とざん）
5	森林	environment	樹木密集的自然環境	Forest	森林（しんりん）
6	山	environment	地勢高起的自然地形	Mountain	山（やま）
7	登高	activity	前往高處以眺望或挑戰高度的行為	Ascend / Summit	登高（とうこう）
8	觀景台	place_type	供遊客欣賞景色的固定設施	Observation Deck	展望台（てんぼうだい）
9	地質	view	具地質特色的自然景觀或區域	Geology	地質（ちしつ）
10	岩	view	裸露岩石或岩層景觀	Rock / Boulder	岩（いわ）
11	海	view	大面積海水自然景觀	Sea / Ocean	海（うみ）
12	海景	view	以海洋景觀為主的觀賞地點	Sea View	海の景色（うみのけしき）
13	沙灘	place_type	由沙粒構成的海岸地形	Beach	砂浜（すなはま）
14	衝浪	activity	利用浪板在海浪上滑行的活動	Surfing	サーフィン
15	海岸	place_type	海洋與陸地交界的地帶	Coast / Shore	海岸（かいがん）
16	船	activity	搭乘或使用船隻進行的活動	Boat	船（ふね）
17	賞鯨	activity	觀賞鯨豚等海洋生物的活動	Whale Watching	鯨ウォッチング
18	潮	view	與潮汐變化相關的自然景觀	Tide	潮（しお）
19	海灘	place_type	供遊憩活動的沙質海岸	Beach	砂浜（すなはま）
20	漁港	place_type	漁業與船隻停泊的港口	Fishing Harbor	漁港（ぎょこう）
21	公園	place_type	提供休憩與活動的公共空間	Park	公園（こうえん）
22	咖啡廳	place_type	以咖啡飲品與休憩為主的場所	Café	カフェ
23	城堡	place_type	具歷史或觀光價值的建築	Castle	城（しろ）
24	觀景	activity	以欣賞景色為目的的行為	Sightseeing / View	観光（かんこう）
25	拍照	activity	進行攝影記錄的行為	Photography / Photo Spot	写真撮影（しゃしんさつえい）
26	老街	place_type	保留傳統風貌的街道聚落	Old Street	古い街並み（ふるいまちなみ）
27	博物館	place_type	展示文化、歷史或科學的空間	Museum	博物館（はくぶつかん）
28	文創	place_type	以文化創意為主題的場域或聚落	Cultural & Creative	文化創意（ぶんかそうい）
29	散步	activity	以輕鬆、低強度步行為主的休閒活動	Strolling / Walk	散歩（さんぽ）
30	探索	activity	以發掘環境特色為目的的行為	Exploration	探索（たんさく）
31	打卡熱點	theme	因視覺特色、場景氛圍或話題性而受到歡迎的拍照地點，適合社群分享與紀錄旅遊體驗	Popular Check-in Spot	インスタ映えスポット
32	日出	view	太陽升起時的自然景象	Sunrise	日の出（ひので）
33	特色建築	theme	具有獨特外觀、設計風格或文化意涵，成為地點辨識或觀賞重點的建築	Unique Architecture	特徴的な建築（とくちょうてきなけんちく）
34	歷史文化	theme	與歷史發展、文化背景與地方記憶相關的內容	Historical Culture	歴史文化（れきしぶんか）
35	漁貨市場	place_type	集中販售當日漁獲的市場空間	Fish Market	魚市場（うおいちば）
36	古蹟建築	place_type	具有歷史價值並受保存的建築物	Historic Building	史跡建築（しせきけんちく）
37	在地小吃	food	反映地方飲食文化的傳統或特色小吃	Local Snacks	地元グルメ（じもとぐるめ）
38	文化探索	activity	透過參觀與體驗深入了解地方文化的行為	Cultural Exploration	文化探索（ぶんかたんさく）
39	媽祖廟	place_type	供奉媽祖的宗教場所，常為地方信仰中心	Mazu Temple	媽祖廟（まそびょう）
40	宗教文化	theme	與宗教信仰、儀式與精神價值相關的文化內涵	Religious Culture	宗教文化（しゅうきょうぶんか）
41	傳統建築	theme	依循傳統工法與樣式建造的建築形式	Traditional Architecture	伝統建築（でんとうけんちく）
42	攝影	activity	使用影像方式記錄人物、景觀或事件的行為	Photography	写真撮影（しゃしんさつえい）
43	廟宇	place_type	宗教建築	Temple	寺院（じいん）
44	信仰中心	theme	承載地方信仰與精神寄託的重要場所或象徵	Religious Center	信仰の中心（しんこうのちゅうしん）
45	新鮮漁貨	food	當日捕撈、保存度高的海鮮食材	Fresh Seafood	新鮮な魚介（しんせんなぎょかい）
46	漁市小吃	food	於漁市場周邊販售的特色熟食	Fish Market Snacks	魚市場グルメ（うおいちばグルメ）
47	農業體驗	activity	實際參與農作或農村生活的體驗活動	Agricultural Experience	農業体験（のうぎょうたいけん）
48	自然生態	environment	動植物與自然環境構成的生態系統	Natural Ecology	自然生態（しぜんせいたい）
49	親子活動	activity	適合家長與孩童共同參與的活動形式	Family / Kids Activities	親子アクティビティ
50	老街美食	food	位於老街聚落中的特色飲食	Old Street Food	古い街並みグルメ（ふるいまちなみグルメ）
51	傳統小吃	food	長期流傳、具地方特色的街頭小吃	Traditional Snacks	伝統的なスナック（でんとうてきなスナック）
52	古早味	theme	帶有懷舊、傳統風格的口味或製作方式	Traditional Taste	昔ながらの味（むかしながらのあじ）
53	小吃	food	份量較小、價格親民的日常飲食	Snack / Street Food	スナック / 屋台料理
54	在地風味	theme	反映地方食材與飲食習慣的特色口味	Local Flavor	地元の味（じもとのあじ）
55	牛肉麵	food	以牛肉與湯頭為主的台灣代表性麵食	Beef Noodles	牛肉麺（ぎゅうにくめん）
56	湯頭濃郁	theme	湯品風味厚實、口感層次豐富	Rich Soup	濃厚スープ（のうこうスープ）
57	在地美食	food	具地方代表性的飲食選擇	Local Cuisine	地元料理（じもとりょうり）
58	小籠包	food	以薄皮包裹肉餡並含湯汁的蒸製點心	Soup Dumplings	小籠包（ショウロンポウ）
59	現蒸美味	theme	現場蒸製、強調新鮮口感的特色	Freshly Steamed	蒸したて（むしたて）
60	早餐	food	一日開始時食用的餐點	Breakfast	朝食（ちょうしょく）
61	蔥油餅	food	以麵皮與蔥製作的煎製傳統小吃	Scallion Pancake	葱油餅（ツォンヨウビン）
62	排隊名店	theme	因知名度高而常需排隊等候的店家	Popular / Famous Store	行列の名店（ぎょうれつのめいてん）
63	手工現做	theme	強調現場手工製作的飲食特色	Handmade / Freshly Made	手作り（てづくり）
64	日式拉麵	food	源自日本、以湯頭與麵條為重點的麵食	Japanese Ramen	日本式ラーメン（にほんしきラーメン）
65	現炸美味	theme	現場油炸、口感酥脆的新鮮料理特色	Freshly Fried	揚げたて（あげたて）
66	春捲	food	以蔬菜或肉餡包裹後油炸的傳統小吃	Spring Roll	春巻き（はるまき）
67	石花凍	food	由海藻製成的清涼甜品或飲品	Jelly Dessert	石花ゼリー（せきかゼリー）
68	涼爽甜品	theme	口感清涼、適合消暑的甜點類型	Cool Dessert	ひんやりデザート
69	海藻飲品	food	以海藻為原料製成的飲品	Seaweed Drink	海藻ドリンク
70	芋頭冰	food	以芋頭為主要原料製作的冰品	Taro Ice	タロイモアイス
71	古早味冰品	food	採用傳統製法的懷舊冰品	Traditional Ice Dessert	昔ながらのアイス（むかしながらのアイス）
72	在地名店	theme	於當地具高知名度與口碑的店家	Local Famous Store	地元名店（じもとめいてん）
73	西點	food	以歐式手法製作的甜點或烘焙產品，如蛋糕、泡芙等	Western Pastry	洋菓子（ようがし）
74	在地烘焙	food	由當地烘焙坊製作，反映地方風味與特色	Local Bakery	地元ベーカリー
75	蔥燒餅	food	以蔥與麵粉製作的傳統中式烘焙點心	Scallion Bun	葱焼きパン
76	傳統烘焙	theme	採用傳統手法或食譜製作的烘焙品	Traditional Bakery	伝統的なベーカリー
77	奶酥吐司	food	以奶酥為內餡或塗抹的烘焙麵包	Butter Toast	バタートースト
78	人氣美食	theme	受到大眾歡迎，常被推薦的特色食物	Popular Cuisine	人気グルメ（にんきぐるめ）
79	創始店	theme	具有歷史或品牌起源意義的店家	Original Store	創業店（そうぎょうてん）
80	金棗	food	小型柑橘類水果，常用於甜品或加工製品	Kumquat	キンカン
81	伴手禮	theme	適合帶回贈送的特色商品	Souvenir	お土産（おみやげ）
82	在地特產	theme	當地生產或具有地方特色的產品	Local Specialty	地元特産（じもととくさん）
83	農特產品	food	由農業生產的特色產品，如水果、乾貨等	Agricultural Products	農産物（のうさんぶつ）
84	在地品牌	theme	當地知名品牌或生產者，具有特色或口碑	Local Brand	地元ブランド
85	肉鬆	food	將肉類加工製作成鬆軟可口的食品，常用於搭配飯或麵包	Pork Floss	肉そぼろ（にくそぼろ）
86	手工製作	theme	強調人工製作過程，保留手工特性與品質	Handmade	手作り（てづくり）
87	甜點	food	以糖、麵粉、乳製品或水果製作的餐後點心或休閒食品	Dessert	デザート
88	下午茶	activity	介於正餐之間的輕食或甜點用餐時段，多搭配咖啡、茶飲、西點或甜品，適合朋友聚會、放鬆休憩與拍照打卡	Afternoon Tea	アフタヌーンティー
89	輕食	food	份量較小、口味清爽的餐點或點心	Light Meal	軽食（けいしょく）
90	飲品	food	可飲用的冷熱飲料，包含咖啡、茶飲、果汁、冰飲與特色飲品	Drink	飲み物（のみもの）
91	簡餐	food	以主食搭配配菜組成的定食或套餐型餐點，份量適中、出餐快速	Set Meal / Light Meal	簡単食事（かんたんしょくじ）
\.


--
-- Data for Name: llm_keywords_map; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.llm_keywords_map (place_code, keyword_id) FROM stdin;
P-1	12
P-1	33
P-1	34
P-2	13
P-2	14
P-2	12
P-3	16
P-3	35
P-3	24
P-3	25
P-4	26
P-4	36
P-4	38
P-5	17
P-5	48
P-5	16
P-6	11
P-6	9
P-6	10
P-6	12
P-7	12
P-7	22
P-7	23
P-7	24
P-7	25
P-7	31
P-7	42
P-8	39
P-8	40
P-8	41
P-9	5
P-9	2
P-9	15
P-9	29
P-10	1
P-10	3
P-10	6
P-10	34
P-11	12
P-11	22
P-11	24
P-11	25
P-11	15
P-11	31
P-11	42
P-12	12
P-12	7
P-12	8
P-12	42
P-13	43
P-13	34
P-13	44
P-14	12
P-14	16
P-14	25
P-14	20
P-14	24
P-15	47
P-15	48
P-15	49
E-1	50
E-1	51
E-1	53
E-2	52
E-2	53
E-2	54
E-3	55
E-3	56
E-3	57
E-4	58
E-4	37
E-4	59
E-5	70
E-5	71
E-5	72
E-6	50
E-6	60
E-6	57
E-7	67
E-7	68
E-7	69
E-8	61
E-8	62
E-8	57
E-9	64
E-9	56
E-9	57
E-10	61
E-10	63
E-10	54
E-11	66
E-11	37
E-11	65
E-12	45
E-12	46
E-12	65
E-13	87
E-13	88
E-13	89
E-13	90
E-13	91
E-14	87
E-14	88
E-14	89
E-14	90
E-15	45
E-15	46
E-15	65
E-16	78
E-16	87
E-16	88
E-17	77
E-17	78
E-17	87
E-17	88
G-1	73
G-1	74
G-2	80
G-2	81
G-2	82
G-3	75
G-3	76
G-3	54
G-4	73
G-4	74
G-5	35
G-5	81
G-5	82
G-6	83
G-6	84
G-6	81
G-7	73
G-7	74
G-7	81
G-8	31
G-8	73
G-8	74
G-8	79
G-8	81
G-9	31
G-9	77
G-9	73
G-9	81
G-10	85
G-10	86
G-10	72
\.


--
-- Data for Name: shoe_language; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.shoe_language (shoe_name_en, shoe_name_zh, shoe_name_ja) FROM stdin;
sport_shoe	運動鞋	スニーカー
sandals	涼鞋	サンダル
boots	靴子/皮鞋	ブーツ／革靴
high_heels	高跟鞋	ハイヒール
slippers	拖鞋	スリッパ
\.


--
-- Data for Name: preference_rules; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.preference_rules (shoe_code, keyword_id, score) FROM stdin;
sport_shoe	1	5
sport_shoe	2	5
sport_shoe	3	5
sport_shoe	4	4
sport_shoe	5	4
sport_shoe	6	3
sport_shoe	29	3
sport_shoe	21	2
sport_shoe	11	1
sport_shoe	13	-2
sport_shoe	19	-2
sandals	13	5
sandals	19	5
sandals	11	4
sandals	12	4
sandals	29	3
sandals	21	3
sandals	26	2
sandals	1	-4
sandals	4	-5
boots	26	3
boots	27	3
boots	34	3
boots	36	3
boots	33	2
boots	29	2
boots	1	-3
boots	3	-2
high_heels	22	4
high_heels	31	4
high_heels	33	4
high_heels	25	3
high_heels	26	2
high_heels	1	-5
high_heels	3	-4
high_heels	4	-5
slippers	13	4
slippers	19	4
slippers	11	3
slippers	21	2
slippers	29	2
slippers	20	2
slippers	1	-5
slippers	4	-5
\.


--
-- Data for Name: shoe_feedback; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.shoe_feedback (user_id, "timestamp", predicted_attr, pred_conf, topk, shoe_code, shoe_name_zh, was_correct, image_path, location, keyword_id) FROM stdin;
20250916_225635	2025/9/16 22:56	sport_shoe	0.285876	運動鞋:0.2859|涼鞋:0.2368|靴子:0.2155	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250916_225635.jpg		\N
20250916_230248	2025/9/16 23:02	sandals	0.269348	涼鞋:0.2693|運動鞋:0.2686|高跟鞋:0.2471	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_230248.jpg		\N
20250916_230624	2025/9/16 23:06	boots	0.407859	靴子:0.4079|運動鞋:0.2327|高跟鞋:0.1684	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_230624.jpg		\N
20250916_230718	2025/9/16 23:07	boots	0.432028	靴子:0.4320|運動鞋:0.2641|涼鞋:0.1476	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_230718.jpg		\N
20250916_230813	2025/9/16 23:08	boots	0.4395	靴子:0.4395|運動鞋:0.2392|涼鞋:0.1559	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_230813.jpg		\N
20250916_230917	2025/9/16 23:09	boots	0.468274	靴子:0.4683|運動鞋:0.2472|涼鞋:0.1338	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_230917.jpg		\N
20250916_231532	2025/9/16 23:15	boots	0.44614	靴子:0.4461|運動鞋:0.2342|涼鞋:0.1524	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_231532.jpg		\N
20250916_231741	2025/9/16 23:17	boots	0.472265	靴子:0.4723|運動鞋:0.2404|涼鞋:0.1334	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250916_231741.jpg		\N
20250917_204335	2025/9/17 20:43	boots	0.375407	靴子:0.3754|高跟鞋:0.2937|運動鞋:0.1317	slippers	拖鞋	f	../output/user_imagesshoe_20250917_204335.jpg		\N
20250917_204654	2025/9/17 20:46	sandals	0.400376	涼鞋:0.4004|運動鞋:0.3874|高跟鞋:0.1744	sandals	涼鞋	t	../output/user_imagesshoe_20250917_204654.jpg		\N
20250918_074012	2025/9/18 7:40	sport_shoe	0.347461	運動鞋:0.3475|涼鞋:0.2689|高跟鞋:0.2360	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250918_074012.jpg		\N
20250918_075217	2025/9/18 7:52	sandals	0.369456	涼鞋:0.3695|高跟鞋:0.2082|運動鞋:0.1865	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250918_075217.jpg		\N
20250918_092424	2025/9/18 9:24	sandals	0.52388	涼鞋:0.5239|高跟鞋:0.3311|運動鞋:0.1195	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250918_092424.jpg		\N
20250920_192232	2025/9/20 19:22	high_heels	0.620432	高跟鞋:0.6204|涼鞋:0.2230|運動鞋:0.1355	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_192232.jpg		\N
20250920_192546	2025/9/20 19:25	high_heels	0.590169	高跟鞋:0.5902|涼鞋:0.2389|運動鞋:0.1371	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_192546.jpg		\N
20250920_200956	2025/9/20 20:09	high_heels	0.702341	高跟鞋:0.7023|涼鞋:0.2593|運動鞋:0.0341	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_200956.jpg		\N
20250920_210407	2025/9/20 21:04	high_heels	0.711011	高跟鞋:0.7110|涼鞋:0.2511|運動鞋:0.0343	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_210407.jpg		\N
20250920_210854	2025/9/20 21:08	high_heels	0.63698	高跟鞋:0.6370|涼鞋:0.2872|運動鞋:0.0699	high_heels	高跟鞋	t	../output/user_imagesshoe_20250920_210854.jpg		\N
20250920_220611	2025/9/20 22:06	high_heels	0.520351	高跟鞋:0.5204|涼鞋:0.2465|運動鞋:0.2086	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_220611.jpg		\N
20250920_231337	2025/9/20 23:13	high_heels	0.583272	高跟鞋:0.5833|涼鞋:0.2559|運動鞋:0.1358	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_231337.jpg		\N
20250920_231533	2025/9/20 23:15	high_heels	0.609556	高跟鞋:0.6096|涼鞋:0.2313|運動鞋:0.1401	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250920_231533.jpg		\N
20250921_113525	2025/9/21 11:35	sport_shoe	0.384245	運動鞋:0.3842|高跟鞋:0.2882|涼鞋:0.2637	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250921_113525.jpg		\N
20250921_113821	2025/9/21 11:37	sport_shoe	0.430841	運動鞋:0.4308|靴子:0.2018|高跟鞋:0.1450	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250921_113702.jpg	C:UsersUserOneDrive桌面my-shoes-datasetimagessport_shoe015.jpg	\N
20250921_114049	2025/9/21 11:39	boots	0.428385	靴子:0.4284|拖鞋:0.2442|高跟鞋:0.1751	boots	靴子	t	../output/user_imagesshoe_20250921_113943.jpg		\N
20250921_114530	2025/9/21 11:45	sport_shoe	0.374649	運動鞋:0.3746|高跟鞋:0.2363|涼鞋:0.1944	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250921_114505.jpg		\N
20250921_114722	2025/9/21 11:47	boots	0.446363	靴子:0.4464|運動鞋:0.2082|高跟鞋:0.1904	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_114722.jpg		\N
20250921_115147	2025/9/21 11:51	high_heels	0.48023	高跟鞋:0.4802|涼鞋:0.2207|靴子:0.1223	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_115122.jpg		\N
20250921_120010	2025/9/21 11:58	boots	0.415469	靴子:0.4155|拖鞋:0.2676|運動鞋:0.1451	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_115849.jpg		\N
20250921_120158	2025/9/21 12:01	boots	0.476162	靴子:0.4762|拖鞋:0.2714|高跟鞋:0.0962	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_120118.jpg		\N
20250921_120347	2025/9/21 12:03	boots	0.505194	靴子:0.5052|運動鞋:0.2207|高跟鞋:0.1248	slippers	拖鞋	f	../output/user_imagesshoe_20250921_120318.jpg		\N
20250921_120604	2025/9/21 12:05	boots	0.442752	靴子:0.4428|拖鞋:0.3208|運動鞋:0.1431	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_120527.jpg		\N
20250921_120847	2025/9/21 12:08	slippers	0.489757	拖鞋:0.4898|靴子:0.4036|運動鞋:0.0514	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_120818.jpg		\N
20250921_120931	2025/9/21 12:09	boots	0.4953	靴子:0.4953|拖鞋:0.3828|運動鞋:0.0558	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250921_120910.jpg		\N
20250922_110415	2025/9/22 11:03	sport_shoe	0.488655	運動鞋:0.4887|靴子:0.2278|高跟鞋:0.1764	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250922_110334.jpg		\N
20250922_110517	2025/9/22 11:04	high_heels	0.416182	高跟鞋:0.4162|涼鞋:0.2794|運動鞋:0.2747	slippers	拖鞋	f	../output/user_imagesshoe_20250922_110452.jpg		\N
20250922_110827	2025/9/22 11:07	sport_shoe	0.668902	運動鞋:0.6689|涼鞋:0.1526|高跟鞋:0.1164	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250922_110756.jpg		\N
20250922_111032	2025/9/22 11:09	sport_shoe	0.447268	運動鞋:0.4473|高跟鞋:0.2461|靴子:0.1936	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250922_110959.jpg		\N
20250922_111325	2025/9/22 11:12	sport_shoe	0.654102	運動鞋:0.6541|靴子:0.1714|高跟鞋:0.0857	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250922_111249.jpg		\N
20250922_111425	2025/9/22 11:14	sport_shoe	0.425635	運動鞋:0.4256|高跟鞋:0.2762|靴子:0.1729	slippers	拖鞋	f	../output/user_imagesshoe_20250922_111404.jpg		\N
20250922_111538	2025/9/22 11:15	sport_shoe	0.570399	運動鞋:0.5704|靴子:0.1632|涼鞋:0.1304	slippers	拖鞋	f	../output/user_imagesshoe_20250922_111518.jpg		\N
20250922_111648	2025/9/22 11:16	boots	0.464232	靴子:0.4642|運動鞋:0.3380|高跟鞋:0.0939	slippers	拖鞋	f	../output/user_imagesshoe_20250922_111629.jpg		\N
20250922_111840	2025/9/22 11:18	sport_shoe	0.500268	運動鞋:0.5003|靴子:0.3396|涼鞋:0.0847	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250922_111827.jpg		\N
20250925_161529	2025/9/25 16:13	boots	0.452169	靴子:0.4522|運動鞋:0.3199|高跟鞋:0.1491	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250925_161356.jpg		\N
20250925_161704	2025/9/25 16:16	high_heels	0.327357	高跟鞋:0.3274|靴子:0.2946|運動鞋:0.2813	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250925_161629.jpg		\N
20250927_134114	2025/9/27 13:39	boots	0.508131	靴子:0.5081|運動鞋:0.4142|涼鞋:0.0400	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_133948.jpg		\N
20250927_134413	2025/9/27 13:43	sport_shoe	0.682678	運動鞋:0.6827|靴子:0.2747|涼鞋:0.0257	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_134332.jpg		\N
20250927_134627	2025/9/27 13:45	boots	0.333448	靴子:0.3334|運動鞋:0.2219|高跟鞋:0.1841	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_134553.jpg		\N
20250927_134902	2025/9/27 13:48	sport_shoe	0.627965	運動鞋:0.6280|靴子:0.1847|高跟鞋:0.0878	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_134802.jpg		\N
20250927_135057	2025/9/27 13:50	sport_shoe	0.459447	運動鞋:0.4594|靴子:0.2326|高跟鞋:0.1669	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_135024.jpg		\N
20250927_135229	2025/9/27 13:51	sport_shoe	0.376241	運動鞋:0.3762|高跟鞋:0.2740|靴子:0.2381	sandals	涼鞋	f	../output/user_imagesshoe_20250927_135155.jpg		\N
20250927_135736	2025/9/27 13:54	boots	0.471091	靴子:0.4711|運動鞋:0.4360|高跟鞋:0.0488	boots	靴子	t	../output/user_imagesshoe_20250927_135411.jpg		\N
20250927_135902	2025/9/27 13:58	sport_shoe	0.658277	運動鞋:0.6583|高跟鞋:0.1376|靴子:0.1120	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_135840.jpg		\N
20250927_140014	2025/9/27 13:59	boots	0.539251	靴子:0.5393|運動鞋:0.2114|高跟鞋:0.1271	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_135950.jpg		\N
20250927_140200	2025/9/27 14:01	sport_shoe	0.682813	運動鞋:0.6828|靴子:0.1470|高跟鞋:0.0828	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_140135.jpg		\N
20250927_140339	2025/9/27 14:02	sport_shoe	0.810156	運動鞋:0.8102|靴子:0.1027|高跟鞋:0.0647	sport_shoe	運動鞋	t	../output/user_imagesshoe_20250927_140252.jpg		\N
20250927_140523	2025/9/27 14:05	sport_shoe	0.418827	運動鞋:0.4188|高跟鞋:0.3401|靴子:0.1502	sandals	涼鞋	f	../output/user_imagesshoe_20250927_140500.jpg		\N
20250927_145506	2025/9/27 14:55	boots	0.283886	靴子:0.2839|運動鞋:0.2578|涼鞋:0.2053	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_145506.jpg		\N
20250927_145608	2025/9/27 14:55	high_heels	0.418131	高跟鞋:0.4181|靴子:0.2773|涼鞋:0.2216	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_145549.jpg		\N
20250927_150851	2025/9/27 15:07	high_heels	0.458269	高跟鞋:0.4583|運動鞋:0.2500|涼鞋:0.1510	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_150755.jpg		\N
20250927_151114	2025/9/27 15:09	high_heels	0.279388	高跟鞋:0.2794|運動鞋:0.2600|涼鞋:0.2531	sport_shoe	運動鞋	f	../output/user_imagesshoe_20250927_150947.jpg		\N
20251002_125432	2025/10/2 12:54	sport_shoe	0.657502	運動鞋:0.6575|靴子:0.1686|涼鞋:0.1031	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251002_125406.jpg		\N
20251002_130225	2025/10/2 13:02	sport_shoe	0.663801	運動鞋:0.6638|高跟鞋:0.1691|涼鞋:0.1111	boots	靴子	f	../output/user_imagesshoe_20251002_130202.jpg		\N
20251008_091742	2025/10/8 9:17	sport_shoe	0.382893	運動鞋:0.3829|涼鞋:0.3064|高跟鞋:0.1625	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251008_091725.jpg		\N
20251008_100021	2025/10/8 9:59	high_heels	0.557803	高跟鞋:0.5578|運動鞋:0.1815|涼鞋:0.1671	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251008_095938.jpg		\N
20251008_103941	2025/10/8 10:38	sport_shoe	0.476118	運動鞋:0.4761|靴子:0.2332|高跟鞋:0.1269	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251008_103850.jpg		\N
20251008_172507	2025/10/8 17:24	boots	0.32558	靴子:0.3256|運動鞋:0.2908|涼鞋:0.2555	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251008_172421.jpg		\N
20251013_093306	2025/10/13 9:32	sport_shoe	0.622805	運動鞋:0.6228|靴子:0.1897|高跟鞋:0.1658	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251013_093248.jpg		\N
20251013_093429	2025/10/13 9:34	boots	0.480554	靴子:0.4806|運動鞋:0.4146|高跟鞋:0.0841	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251013_093415.jpg		\N
20251013_093519	2025/10/13 9:35	sport_shoe	0.790872	運動鞋:0.7909|靴子:0.1492|高跟鞋:0.0371	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251013_093504.jpg		\N
20251013_095021	2025/10/13 9:50	high_heels	0.466915	高跟鞋:0.4669|運動鞋:0.4139|涼鞋:0.1119	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251013_095004.jpg		\N
20251013_095349	2025/10/13 9:53	boots	0.418032	靴子:0.4180|運動鞋:0.3940|高跟鞋:0.1264	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251013_095349.jpg		\N
20251013_095455	2025/10/13 9:54	sport_shoe	0.495828	運動鞋:0.4958|高跟鞋:0.1925|涼鞋:0.1755	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251013_095425.jpg		\N
20251013_100304	2025/10/13 10:03	sport_shoe	0.840418	運動鞋:0.8404|高跟鞋:0.0829|靴子:0.0525	boots	靴子	f	../output/user_imagesshoe_20251013_100304.jpg		\N
20251013_102225	2025/10/13 10:21	sandals	0.323833	涼鞋:0.3238|高跟鞋:0.3120|運動鞋:0.2738	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251013_102133.jpg		\N
20251013_103346	2025/10/13 10:33	boots	0.317988	靴子:0.3180|運動鞋:0.2795|高跟鞋:0.1960	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251013_103332.jpg		\N
20251013_124439	2025/10/13 12:43	high_heels	0.506526	高跟鞋:0.5065|涼鞋:0.4066|運動鞋:0.0818	sandals	涼鞋	f	../output/user_imagesshoe_20251013_124353.jpg		\N
20251017_141846	2025/10/17 14:18	high_heels	0.456662	高跟鞋:0.4567|涼鞋:0.3352|運動鞋:0.1108	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251017_141810.jpg		\N
20251017_160206	2025/10/17 16:01	sport_shoe	0.548529	運動鞋:0.5485|靴子:0.2268|高跟鞋:0.1291	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251017_160100.jpg		\N
20251018_100045	2025/10/18 10:00	sport_shoe	0.387409	運動鞋:0.3874|靴子:0.3312|拖鞋:0.1745	slippers	拖鞋	f	../output/user_imagesshoe_20251018_100003.jpg		\N
20251018_100309	2025/10/18 10:03	sport_shoe	0.628995	運動鞋:0.6290|高跟鞋:0.1682|涼鞋:0.1424	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_100309.jpg		\N
20251018_101338	2025/10/18 10:13	boots	0.36645	靴子:0.3664|運動鞋:0.3566|高跟鞋:0.1386	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_101338.jpg		\N
20251018_103429	2025/10/18 10:34	sport_shoe	0.663153	運動鞋:0.6632|高跟鞋:0.1493|涼鞋:0.1211	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_103429.jpg		\N
20251018_110014	2025/10/18 11:00	sport_shoe	0.686938	運動鞋:0.6869|涼鞋:0.1297|高跟鞋:0.1046	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_110014.jpg		\N
20251018_110218	2025/10/18 11:02	sport_shoe	0.549289	運動鞋:0.5493|涼鞋:0.2072|高跟鞋:0.1656	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_110218.jpg		\N
20251018_110440	2025/10/18 11:04	sport_shoe	0.680627	運動鞋:0.6806|靴子:0.1538|涼鞋:0.0856	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_110440.jpg		\N
20251018_110633	2025/10/18 11:06	sport_shoe	0.611343	運動鞋:0.6113|高跟鞋:0.1499|涼鞋:0.1230	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_110633.jpg		\N
20251018_110859	2025/10/18 11:08	sport_shoe	0.647948	運動鞋:0.6479|靴子:0.1135|涼鞋:0.1125	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_110859.jpg		\N
20251018_111226	2025/10/18 11:11	sport_shoe	0.607319	運動鞋:0.6073|靴子:0.2355|高跟鞋:0.0908	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_111134.jpg		\N
20251018_111344	2025/10/18 11:13	sport_shoe	0.522927	運動鞋:0.5229|靴子:0.3937|高跟鞋:0.0603	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_111313.jpg		\N
20251018_111610	2025/10/18 11:14	sport_shoe	0.583463	運動鞋:0.5835|高跟鞋:0.2067|涼鞋:0.1573	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_111447.jpg		\N
20251018_111848	2025/10/18 11:17	sport_shoe	0.746073	運動鞋:0.7461|靴子:0.0897|高跟鞋:0.0782	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_111731.jpg		\N
20251018_112443	2025/10/18 11:23	sport_shoe	0.722454	運動鞋:0.7225|靴子:0.1333|高跟鞋:0.0961	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_112354.jpg		\N
20251018_112913	2025/10/18 11:28	sport_shoe	0.564981	運動鞋:0.5650|靴子:0.2938|涼鞋:0.0689	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_112821.jpg		\N
20251018_113101	2025/10/18 11:30	sport_shoe	0.677372	運動鞋:0.6774|高跟鞋:0.1948|靴子:0.0771	sandals	涼鞋	f	../output/user_imagesshoe_20251018_113029.jpg		\N
20251018_113736	2025/10/18 11:36	sport_shoe	0.681674	運動鞋:0.6817|靴子:0.1950|高跟鞋:0.0831	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_113624.jpg		\N
20251018_114828	2025/10/18 11:47	sport_shoe	0.554322	運動鞋:0.5543|靴子:0.1896|高跟鞋:0.1650	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_114749.jpg		\N
20251018_115033	2025/10/18 11:49	sport_shoe	0.600584	運動鞋:0.6006|靴子:0.2073|高跟鞋:0.1162	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_114953.jpg		\N
20251018_115545	2025/10/18 11:54	high_heels	0.423064	高跟鞋:0.4231|運動鞋:0.3570|涼鞋:0.1767	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_115455.jpg		\N
20251018_120611	2025/10/18 12:05	sport_shoe	0.470843	運動鞋:0.4708|高跟鞋:0.3329|涼鞋:0.1066	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_120503.jpg		\N
20251018_121539	2025/10/18 12:14	high_heels	0.522132	高跟鞋:0.5221|運動鞋:0.3554|靴子:0.0705	boots	靴子	f	../output/user_imagesshoe_20251018_121409.jpg		\N
20251018_122012	2025/10/18 12:19	high_heels	0.427267	高跟鞋:0.4273|運動鞋:0.4078|涼鞋:0.1198	slippers	拖鞋	f	../output/user_imagesshoe_20251018_121910.jpg		\N
20251018_122241	2025/10/18 12:21	high_heels	0.501369	高跟鞋:0.5014|運動鞋:0.3588|涼鞋:0.1254	sandals	涼鞋	f	../output/user_imagesshoe_20251018_122144.jpg		\N
20251018_122756	2025/10/18 12:26	sport_shoe	0.726833	運動鞋:0.7268|高跟鞋:0.1370|靴子:0.0761	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_122636.jpg		\N
20251018_124600	2025/10/18 12:45	high_heels	0.4491	高跟鞋:0.4491|運動鞋:0.3109|涼鞋:0.1560	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_124515.jpg		\N
20251018_125722	2025/10/18 12:56	sport_shoe	0.516247	運動鞋:0.5162|高跟鞋:0.3164|涼鞋:0.0820	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_125640.jpg		\N
20251018_125945	2025/10/18 12:59	sport_shoe	0.626934	運動鞋:0.6269|靴子:0.2348|高跟鞋:0.0724	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_125901.jpg		\N
20251018_130435	2025/10/18 13:03	sport_shoe	0.602067	運動鞋:0.6021|高跟鞋:0.1804|涼鞋:0.1076	boots	靴子	f	../output/user_imagesshoe_20251018_130348.jpg		\N
20251018_130605	2025/10/18 13:05	high_heels	0.380495	高跟鞋:0.3805|運動鞋:0.2735|靴子:0.2024	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_130533.jpg		\N
20251018_131223	2025/10/18 13:11	sport_shoe	0.728388	運動鞋:0.7284|高跟鞋:0.1075|靴子:0.0779	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_131115.jpg		\N
20251018_131428	2025/10/18 13:13	sport_shoe	0.69348	運動鞋:0.6935|靴子:0.1938|涼鞋:0.0499	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_131340.jpg		\N
20251018_131641	2025/10/18 13:16	high_heels	0.548633	高跟鞋:0.5486|運動鞋:0.2891|涼鞋:0.1172	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_131641.jpg		\N
20251018_131816	2025/10/18 13:17	sport_shoe	0.550502	運動鞋:0.5505|高跟鞋:0.2803|靴子:0.0837	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_131735.jpg		\N
20251018_133240	2025/10/18 13:31	sport_shoe	0.631237	運動鞋:0.6312|高跟鞋:0.2755|涼鞋:0.0588	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_133102.jpg		\N
20251018_133729	2025/10/18 13:36	high_heels	0.598539	高跟鞋:0.5985|運動鞋:0.1867|涼鞋:0.1833	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_133644.jpg		\N
20251018_135053	2025/10/18 13:49	high_heels	0.552555	高跟鞋:0.5526|運動鞋:0.2599|涼鞋:0.1800	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_134955.jpg		\N
20251018_140301	2025/10/18 14:02	sport_shoe	0.445652	運動鞋:0.4457|高跟鞋:0.3237|涼鞋:0.1930	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_140207.jpg		\N
20251018_140641	2025/10/18 14:05	sport_shoe	0.419988	運動鞋:0.4200|靴子:0.3450|高跟鞋:0.1347	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_140526.jpg		\N
20251018_140919	2025/10/18 14:08	high_heels	0.434565	高跟鞋:0.4346|運動鞋:0.2828|涼鞋:0.2612	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_140837.jpg		\N
20251018_141208	2025/10/18 14:11	sport_shoe	0.417292	運動鞋:0.4173|高跟鞋:0.3431|涼鞋:0.2307	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_141117.jpg		\N
20251018_141726	2025/10/18 14:16	sport_shoe	0.593642	運動鞋:0.5936|高跟鞋:0.2799|涼鞋:0.0769	boots	靴子	f	../output/user_imagesshoe_20251018_141621.jpg		\N
20251018_141919	2025/10/18 14:18	sport_shoe	0.497142	運動鞋:0.4971|高跟鞋:0.2383|涼鞋:0.2372	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_141849.jpg		\N
20251018_142104	2025/10/18 14:20	high_heels	0.504455	高跟鞋:0.5045|運動鞋:0.3461|涼鞋:0.1182	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_142026.jpg		\N
20251018_143338	2025/10/18 14:33	sport_shoe	0.500418	運動鞋:0.5004|高跟鞋:0.3882|涼鞋:0.0709	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_143338.jpg		\N
20251018_143717	2025/10/18 14:37	sport_shoe	0.506929	運動鞋:0.5069|高跟鞋:0.3233|靴子:0.1101	slippers	拖鞋	f	../output/user_imagesshoe_20251018_143717.jpg		\N
20251018_144052	2025/10/18 14:40	sport_shoe	0.556538	運動鞋:0.5565|高跟鞋:0.2380|涼鞋:0.0994	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_144052.jpg		\N
20260205_145332	2026-02-05 14:54:48	sandals	0.510057	sandals:0.5101|high_heels:0.2315|sport_shoe:0.1487	sandals	涼鞋	t			\N
20251018_144513	2025/10/18 14:45	sport_shoe	0.45896	運動鞋:0.4590|高跟鞋:0.2361|靴子:0.1809	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_144513.jpg		\N
20251018_144756	2025/10/18 14:47	sport_shoe	0.61438	運動鞋:0.6144|高跟鞋:0.2847|涼鞋:0.0786	slippers	拖鞋	f	../output/user_imagesshoe_20251018_144756.jpg		\N
20251018_145001	2025/10/18 14:50	sport_shoe	0.512252	運動鞋:0.5123|高跟鞋:0.3066|涼鞋:0.1298	slippers	拖鞋	f	../output/user_imagesshoe_20251018_145001.jpg		\N
20251018_150253	2025/10/18 15:02	sport_shoe	0.64015	運動鞋:0.6402|靴子:0.1637|高跟鞋:0.1183	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_150202.jpg		\N
20251018_150545	2025/10/18 15:05	sport_shoe	0.586115	運動鞋:0.5861|高跟鞋:0.2997|涼鞋:0.0754	sandals	涼鞋	f	../output/user_imagesshoe_20251018_150504.jpg		\N
20251018_150849	2025/10/18 15:07	sport_shoe	0.621247	運動鞋:0.6212|高跟鞋:0.2842|涼鞋:0.0678	slippers	拖鞋	f	../output/user_imagesshoe_20251018_150751.jpg		\N
20251018_151449	2025/10/18 15:13	high_heels	0.420007	高跟鞋:0.4200|運動鞋:0.2944|涼鞋:0.1993	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_151353.jpg		\N
20251018_151640	2025/10/18 15:15	high_heels	0.420032	高跟鞋:0.4200|運動鞋:0.2514|涼鞋:0.2206	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_151551.jpg		\N
20251018_152848	2025/10/18 15:28	high_heels	0.393933	高跟鞋:0.3939|運動鞋:0.3658|涼鞋:0.1306	slippers	拖鞋	f	../output/user_imagesshoe_20251018_152810.jpg		\N
20251018_153214	2025/10/18 15:30	high_heels	0.683639	高跟鞋:0.6836|涼鞋:0.1621|運動鞋:0.1473	sandals	涼鞋	f	../output/user_imagesshoe_20251018_153058.jpg		\N
20251018_153651	2025/10/18 15:35	high_heels	0.409566	高跟鞋:0.4096|運動鞋:0.3503|涼鞋:0.1453	sandals	涼鞋	f	../output/user_imagesshoe_20251018_153547.jpg		\N
20251018_153947	2025/10/18 15:39	sport_shoe	0.529509	運動鞋:0.5295|涼鞋:0.2156|高跟鞋:0.1910	sandals	涼鞋	f	../output/user_imagesshoe_20251018_153904.jpg		\N
20251018_154340	2025/10/18 15:42	high_heels	0.386465	高跟鞋:0.3865|運動鞋:0.3476|涼鞋:0.1551	sandals	涼鞋	f	../output/user_imagesshoe_20251018_154227.jpg		\N
20251018_154705	2025/10/18 15:46	sport_shoe	0.633359	運動鞋:0.6334|高跟鞋:0.2153|涼鞋:0.0789	slippers	拖鞋	f	../output/user_imagesshoe_20251018_154623.jpg		\N
20251018_155310	2025/10/18 15:52	high_heels	0.362211	高跟鞋:0.3622|運動鞋:0.3595|涼鞋:0.1970	boots	靴子	f	../output/user_imagesshoe_20251018_155216.jpg		\N
20251018_155845	2025/10/18 15:58	high_heels	0.428917	高跟鞋:0.4289|運動鞋:0.3408|涼鞋:0.1888	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_155802.jpg		\N
20251018_160116	2025/10/18 16:00	sport_shoe	0.802478	運動鞋:0.8025|高跟鞋:0.1162|靴子:0.0386	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_160032.jpg		\N
20251018_161056	2025/10/18 16:10	sport_shoe	0.406824	運動鞋:0.4068|高跟鞋:0.2991|靴子:0.2000	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_161018.jpg		\N
20251018_161314	2025/10/18 16:12	sport_shoe	0.638115	運動鞋:0.6381|靴子:0.1789|高跟鞋:0.0952	slippers	拖鞋	f	../output/user_imagesshoe_20251018_161220.jpg		\N
20251018_161550	2025/10/18 16:14	high_heels	0.509122	高跟鞋:0.5091|涼鞋:0.2635|運動鞋:0.1379	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_161449.jpg		\N
20251018_162057	2025/10/18 16:19	high_heels	0.423354	高跟鞋:0.4234|運動鞋:0.4046|涼鞋:0.1063	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_161955.jpg		\N
20251018_162318	2025/10/18 16:22	sport_shoe	0.404589	運動鞋:0.4046|靴子:0.2995|高跟鞋:0.1528	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_162221.jpg		\N
20251018_162636	2025/10/18 16:25	sport_shoe	0.665275	運動鞋:0.6653|高跟鞋:0.1381|涼鞋:0.1100	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_162535.jpg		\N
20251018_163106	2025/10/18 16:30	sport_shoe	0.571209	運動鞋:0.5712|涼鞋:0.2132|高跟鞋:0.1648	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_163009.jpg		\N
20251018_163827	2025/10/18 16:37	high_heels	0.446135	高跟鞋:0.4461|運動鞋:0.3154|靴子:0.1636	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251018_163735.jpg		\N
20251018_164041	2025/10/18 16:40	sport_shoe	0.505462	運動鞋:0.5055|靴子:0.2220|高跟鞋:0.1777	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_164003.jpg		\N
20251018_164434	2025/10/18 16:43	sport_shoe	0.478135	運動鞋:0.4781|高跟鞋:0.3556|涼鞋:0.1151	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_164322.jpg		\N
20251018_164728	2025/10/18 16:46	sport_shoe	0.53876	運動鞋:0.5388|靴子:0.2423|高跟鞋:0.1716	slippers	拖鞋	f	../output/user_imagesshoe_20251018_164623.jpg		\N
20251018_164918	2025/10/18 16:48	high_heels	0.530789	高跟鞋:0.5308|運動鞋:0.3685|涼鞋:0.0814	slippers	拖鞋	f	../output/user_imagesshoe_20251018_164845.jpg		\N
20251018_165433	2025/10/18 16:53	sport_shoe	0.512164	運動鞋:0.5122|靴子:0.3059|高跟鞋:0.1241	boots	靴子	f	../output/user_imagesshoe_20251018_165319.jpg		\N
20251018_170555	2025/10/18 17:05	sport_shoe	0.409142	運動鞋:0.4091|高跟鞋:0.2755|靴子:0.2114	sandals	涼鞋	f	../output/user_imagesshoe_20251018_170519.jpg		\N
20251018_170856	2025/10/18 17:08	sport_shoe	0.590443	運動鞋:0.5904|高跟鞋:0.2806|涼鞋:0.0682	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_170805.jpg		\N
20251018_171450	2025/10/18 17:13	high_heels	0.390493	高跟鞋:0.3905|運動鞋:0.3023|靴子:0.1487	sandals	涼鞋	f	../output/user_imagesshoe_20251018_171355.jpg		\N
20251018_171649	2025/10/18 17:16	sport_shoe	0.648592	運動鞋:0.6486|高跟鞋:0.2198|涼鞋:0.0632	slippers	拖鞋	f	../output/user_imagesshoe_20251018_171605.jpg		\N
20251018_171811	2025/10/18 17:17	sport_shoe	0.403476	運動鞋:0.4035|高跟鞋:0.3119|涼鞋:0.1898	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_171736.jpg		\N
20251018_172100	2025/10/18 17:19	sport_shoe	0.749974	運動鞋:0.7500|高跟鞋:0.1451|涼鞋:0.0523	slippers	拖鞋	f	../output/user_imagesshoe_20251018_171953.jpg		\N
20251018_172457	2025/10/18 17:24	sport_shoe	0.49674	運動鞋:0.4967|高跟鞋:0.2012|涼鞋:0.1614	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_172400.jpg		\N
20251018_175606	2025/10/18 17:55	sport_shoe	0.515225	運動鞋:0.5152|高跟鞋:0.1801|靴子:0.1566	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_175516.jpg		\N
20251019_093629	2025/10/19 9:36	sport_shoe	0.451647	運動鞋:0.4516|高跟鞋:0.2919|靴子:0.1604	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_093605.jpg		\N
20251019_100031	2025/10/19 10:00	sport_shoe	0.516381	運動鞋:0.5164|靴子/皮鞋:0.2245|高跟鞋:0.1977	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_100009.jpg		\N
20251019_104057	2025/10/19 10:40	sport_shoe	0.41325	運動鞋:0.4133|靴子/皮鞋:0.3410|拖鞋:0.1432	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_104001.jpg		\N
20251019_104706	2025/10/19 10:45	sport_shoe	0.565573	運動鞋:0.5656|靴子/皮鞋:0.2277|高跟鞋:0.0826	sandals	涼鞋	f	../output/user_imagesshoe_20251019_104538.jpg		\N
20251019_105114	2025/10/19 10:50	sport_shoe	0.609299	運動鞋:0.6093|高跟鞋:0.1420|涼鞋:0.1224	slippers	拖鞋	f	../output/user_imagesshoe_20251019_105023.jpg		\N
20251019_105359	2025/10/19 10:52	sport_shoe	0.52885	運動鞋:0.5288|靴子/皮鞋:0.2647|高跟鞋:0.1373	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251019_105258.jpg		\N
20251019_111937	2025/10/19 11:18	sport_shoe	0.55554	運動鞋:0.5555|靴子/皮鞋:0.3658|涼鞋:0.0284	sandals	涼鞋	f	../output/user_imagesshoe_20251019_111830.jpg		\N
20251019_115154	2025/10/19 11:51	sport_shoe	0.440723	運動鞋:0.4407|高跟鞋:0.2764|靴子/皮鞋:0.1973	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_115101.jpg		\N
20251019_115958	2025/10/19 11:59	boots	0.520057	靴子/皮鞋:0.5201|運動鞋:0.3713|高跟鞋:0.0559	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251019_115912.jpg		\N
20251019_120120	2025/10/19 12:00	high_heels	0.425501	高跟鞋:0.4255|運動鞋:0.2216|靴子/皮鞋:0.1799	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251019_120027.jpg		\N
20251019_120429	2025/10/19 12:03	high_heels	0.466588	高跟鞋:0.4666|涼鞋:0.2265|運動鞋:0.1772	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251019_120320.jpg		\N
20251019_120921	2025/10/19 12:08	sport_shoe	0.497927	運動鞋:0.4979|靴子/皮鞋:0.2158|高跟鞋:0.1406	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_120805.jpg		\N
20251019_125454	2025/10/19 12:53	boots	0.336086	靴子/皮鞋:0.3361|運動鞋:0.3292|涼鞋:0.1642	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251019_125342.jpg		\N
20251019_130316	2025/10/19 13:00	high_heels	0.632666	高跟鞋:0.6327|涼鞋:0.2034|靴子/皮鞋:0.1274	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251019_130044.jpg		\N
20251019_131931	2025/10/19 13:19	sport_shoe	0.46068	運動鞋:0.4607|高跟鞋:0.2330|靴子/皮鞋:0.1683	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_131900.jpg		\N
20251019_134317	2025/10/19 13:42	boots	0.462621	靴子/皮鞋:0.4626|運動鞋:0.3697|高跟鞋:0.1000	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251019_134208.jpg		\N
20251019_134533	2025/10/19 13:45	sport_shoe	0.617964	運動鞋:0.6180|靴子/皮鞋:0.1601|高跟鞋:0.1412	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_134508.jpg		\N
20251019_141857	2025/10/19 14:16	sport_shoe	0.679292	運動鞋:0.6793|高跟鞋:0.1361|涼鞋:0.1175	sandals	涼鞋	f	../output/user_imagesshoe_20251019_141601.jpg		\N
20251019_143259	2025/10/19 14:32	sport_shoe	0.336812	運動鞋:0.3368|高跟鞋:0.3155|靴子/皮鞋:0.2605	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_143231.jpg		\N
20251019_143636	2025/10/19 14:35	sport_shoe	0.497298	運動鞋:0.4973|靴子/皮鞋:0.4266|拖鞋:0.0532	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_143544.jpg		\N
20251019_144147	2025/10/19 14:40	high_heels	0.468096	高跟鞋:0.4681|運動鞋:0.3161|靴子/皮鞋:0.1304	slippers	拖鞋	f	../output/user_imagesshoe_20251019_144058.jpg		\N
20251019_144425	2025/10/19 14:43	sport_shoe	0.535168	運動鞋:0.5352|靴子/皮鞋:0.2975|高跟鞋:0.1320	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_144300.jpg		\N
20251019_145102	2025/10/19 14:49	sport_shoe	0.605901	運動鞋:0.6059|靴子/皮鞋:0.3035|高跟鞋:0.0392	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_144921.jpg		\N
20251019_145322	2025/10/19 14:52	sport_shoe	0.676851	運動鞋:0.6769|高跟鞋:0.1262|靴子/皮鞋:0.0919	sandals	涼鞋	f	../output/user_imagesshoe_20251019_145244.jpg		\N
20251019_151634	2025/10/19 15:15	sport_shoe	0.793669	運動鞋:0.7937|高跟鞋:0.1134|涼鞋:0.0614	slippers	拖鞋	f	../output/user_imagesshoe_20251019_151510.jpg		\N
20251019_155425	2025/10/19 15:53	sport_shoe	0.675713	運動鞋:0.6757|靴子/皮鞋:0.2594|高跟鞋:0.0253	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_155345.jpg		\N
20251019_160013	2025/10/19 15:59	sport_shoe	0.600492	運動鞋:0.6005|高跟鞋:0.1730|靴子/皮鞋:0.1161	sandals	涼鞋	f	../output/user_imagesshoe_20251019_155924.jpg		\N
20251019_160215	2025/10/19 16:01	sport_shoe	0.797161	運動鞋:0.7972|高跟鞋:0.0957|涼鞋:0.0668	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_160137.jpg		\N
20251019_160419	2025/10/19 16:03	sport_shoe	0.660392	運動鞋:0.6604|靴子/皮鞋:0.2298|高跟鞋:0.0518	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251019_160332.jpg		\N
20251019_164020	2025/10/19 16:39	sport_shoe	0.688252	運動鞋:0.6883|靴子/皮鞋:0.1898|高跟鞋:0.0632	sandals	涼鞋	f	../output/user_imagesshoe_20251019_163940.jpg		\N
20251019_164300	2025/10/19 16:41	high_heels	0.480089	高跟鞋:0.4801|運動鞋:0.4111|涼鞋:0.0681	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251019_164156.jpg		\N
20251022_101746	2025/10/22 10:17	boots	0.38177	靴子/皮鞋:0.3818|運動鞋:0.3119|高跟鞋:0.2124	slippers	拖鞋	f	../output/user_imagesshoe_20251022_101728.jpg		\N
20251022_101913	2025/10/22 10:19	sport_shoe	0.358684	運動鞋:0.3587|高跟鞋:0.3097|靴子/皮鞋:0.1539	slippers	拖鞋	f	../output/user_imagesshoe_20251022_101903.jpg		\N
20251022_104204	2025/10/22 10:39	sport_shoe	0.549659	運動鞋:0.5497|涼鞋:0.1667|靴子/皮鞋:0.1428	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251022_103949.jpg		\N
20251022_104531	2025/10/22 10:44	sport_shoe	0.634921	運動鞋:0.6349|靴子/皮鞋:0.2533|涼鞋:0.0425	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251022_104421.jpg		\N
20251022_112455	2025/10/22 11:24	sport_shoe	0.62681	運動鞋:0.6268|高跟鞋:0.1409|涼鞋:0.1320	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251022_112422.jpg		\N
20251022_124658	2025/10/22 12:46	sport_shoe	0.451168	運動鞋:0.4512|靴子/皮鞋:0.3367|高跟鞋:0.1053	slippers	拖鞋	f	../output/user_imagesshoe_20251022_124606.jpg		\N
20251023_140930	2025/10/23 14:08	boots	0.342321	靴子/皮鞋:0.3423|運動鞋:0.3295|高跟鞋:0.1505	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251023_140856.jpg		\N
20251023_145931	2025/10/23 14:58	sport_shoe	0.643884	運動鞋:0.6439|靴子/皮鞋:0.2296|拖鞋:0.0467	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251023_145841.jpg		\N
20251023_150226	2025/10/23 15:02	high_heels	0.397409	高跟鞋:0.3974|運動鞋:0.3057|涼鞋:0.1926	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251023_150200.jpg		\N
20251023_173849	2025/10/23 17:38	sport_shoe	0.578592	運動鞋:0.5786|涼鞋:0.1873|高跟鞋:0.1666	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251023_173834.jpg		\N
20251024_102609	2025/10/24 10:25	sport_shoe	0.58439	運動鞋:0.5844|高跟鞋:0.2531|靴子/皮鞋:0.0689	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251024_102547.jpg		\N
20251024_162604	2025/10/24 16:25	sport_shoe	0.516324	運動鞋:0.5163|涼鞋:0.1975|高跟鞋:0.1895	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251024_162539.jpg		\N
20251025_091756	2025/10/25 9:17	sport_shoe	0.593683	運動鞋:0.5937|靴子/皮鞋:0.1917|涼鞋:0.1045	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251025_091731.jpg		\N
20251025_093309	2025/10/25 9:32	boots	0.457402	靴子/皮鞋:0.4574|運動鞋:0.4248|涼鞋:0.0530	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251025_093211.jpg		\N
20251025_094859	2025/10/25 9:47	sport_shoe	0.510612	運動鞋:0.5106|高跟鞋:0.3609|涼鞋:0.1088	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251025_094717.jpg		\N
20251025_102117	2025/10/25 10:20	sport_shoe	0.652324	運動鞋:0.6523|靴子/皮鞋:0.1399|涼鞋:0.1262	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251025_102031.jpg		\N
20251025_104511	2025/10/25 10:44	sport_shoe	0.447536	運動鞋:0.4475|高跟鞋:0.2458|靴子/皮鞋:0.1506	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251025_104445.jpg		\N
20251025_111610	2025/10/25 11:14	sport_shoe	0.666107	運動鞋:0.6661|涼鞋:0.1578|高跟鞋:0.1489	sandals	涼鞋	f	../output/user_imagesshoe_20251025_111441.jpg		\N
20251025_111926	2025/10/25 11:18	sport_shoe	0.476195	運動鞋:0.4762|高跟鞋:0.2254|涼鞋:0.2177	sandals	涼鞋	f	../output/user_imagesshoe_20251025_111810.jpg		\N
20251025_121610	2025/10/25 12:15	sport_shoe	0.431795	運動鞋:0.4318|靴子/皮鞋:0.2137|高跟鞋:0.1897	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251025_121532.jpg		\N
20251025_134026	2025/10/25 13:38	boots	0.460423	靴子/皮鞋:0.4604|運動鞋:0.4194|涼鞋:0.0590	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251025_133810.jpg		\N
20251025_141353	2025/10/25 14:13	boots	0.570284	靴子/皮鞋:0.5703|運動鞋:0.3632|高跟鞋:0.0306	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251025_141339.jpg		\N
20251025_141529	2025/10/25 14:15	sport_shoe	0.472565	運動鞋:0.4726|高跟鞋:0.2587|涼鞋:0.1587	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251025_141517.jpg		\N
20251025_141621	2025/10/25 14:16	sport_shoe	0.539927	運動鞋:0.5399|靴子/皮鞋:0.2379|涼鞋:0.1074	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251025_141607.jpg		\N
20251025_144038	2025/10/25 14:39	high_heels	0.471122	高跟鞋:0.4711|涼鞋:0.2873|運動鞋:0.1802	sandals	涼鞋	f	../output/user_imagesshoe_20251025_143947.jpg		\N
20251025_144310	2025/10/25 14:42	sport_shoe	0.440587	運動鞋:0.4406|涼鞋:0.2505|高跟鞋:0.2194	sandals	涼鞋	f	../output/user_imagesshoe_20251025_144223.jpg		\N
20251025_145425	2025/10/25 14:53	sport_shoe	0.457635	運動鞋:0.4576|高跟鞋:0.2945|涼鞋:0.2370	sandals	涼鞋	f	../output/user_imagesshoe_20251025_145326.jpg		\N
20251025_162536	2025/10/25 16:25	high_heels	0.419383	高跟鞋:0.4194|涼鞋:0.3628|運動鞋:0.1674	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251025_162502.jpg		\N
20251101_092527	2025/11/1 9:25	sport_shoe	0.387859	運動鞋:0.3879|高跟鞋:0.2146|靴子/皮鞋:0.1760	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251101_092503.jpg		\N
20251101_100842	2025/11/1 10:08	boots	0.241423	靴子/皮鞋:0.2414|運動鞋:0.2310|高跟鞋:0.2178	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_100800.jpg		\N
20251101_101335	2025/11/1 10:12	boots	0.365699	靴子/皮鞋:0.3657|運動鞋:0.2676|拖鞋:0.1553	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_101239.jpg		\N
20251101_101823	2025/11/1 10:17	high_heels	0.518585	高跟鞋:0.5186|涼鞋:0.1692|運動鞋:0.1465	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_101736.jpg		\N
20251101_102149	2025/11/1 10:20	high_heels	0.402033	高跟鞋:0.4020|涼鞋:0.2619|運動鞋:0.1585	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_102052.jpg		\N
20251101_103434	2025/11/1 10:33	boots	0.268531	靴子/皮鞋:0.2685|運動鞋:0.2581|涼鞋:0.2153	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_103347.jpg		\N
20251101_103638	2025/11/1 10:36	sport_shoe	0.377034	運動鞋:0.3770|涼鞋:0.2271|高跟鞋:0.2000	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251101_103621.jpg		\N
20251101_104355	2025/11/1 10:43	sport_shoe	0.489715	運動鞋:0.4897|靴子/皮鞋:0.2848|涼鞋:0.1055	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251101_104355.jpg		\N
20251101_104626	2025/11/1 10:47	boots	0.318723	靴子/皮鞋:0.3187|高跟鞋:0.2379|運動鞋:0.2082	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_104756.jpg		\N
20251101_104930	2025/11/1 10:49	boots	0.307364	靴子/皮鞋:0.3074|高跟鞋:0.2382|運動鞋:0.2279	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_104902.jpg		\N
20251101_105502	2025/11/1 10:53	boots	0.504697	靴子/皮鞋:0.5047|拖鞋:0.1918|運動鞋:0.1911	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_105347.jpg		\N
20251101_105704	2025/11/1 10:56	boots	0.461838	靴子/皮鞋:0.4618|高跟鞋:0.1816|運動鞋:0.1676	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_105608.jpg		\N
20251101_124313	2025/11/1 12:42	sport_shoe	0.456112	運動鞋:0.4561|靴子/皮鞋:0.2966|高跟鞋:0.1363	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251101_124232.jpg		\N
20251101_124401	2025/11/1 12:43	high_heels	0.374303	高跟鞋:0.3743|運動鞋:0.3162|涼鞋:0.2384	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_124343.jpg		\N
20251101_130428	2025/11/1 13:03	boots	0.749269	靴子/皮鞋:0.7493|運動鞋:0.1331|拖鞋:0.0544	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_130342.jpg		\N
20251101_131754	2025/11/1 13:16	sport_shoe	0.397481	運動鞋:0.3975|靴子/皮鞋:0.3435|涼鞋:0.1035	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251101_131659.jpg		\N
20251101_132045	2025/11/1 13:20	boots	0.383645	靴子/皮鞋:0.3836|運動鞋:0.2542|高跟鞋:0.1602	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251101_132011.jpg		\N
20251101_140301	2025/11/1 14:02	boots	0.633403	靴子/皮鞋:0.6334|運動鞋:0.1409|拖鞋:0.0853	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_140251.jpg		\N
20251101_141822	2025/11/1 14:17	boots	0.538788	靴子/皮鞋:0.5388|運動鞋:0.3442|高跟鞋:0.0453	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251101_141724.jpg		\N
20251101_152925	2025/11/1 15:28	sport_shoe	0.469025	運動鞋:0.4690|高跟鞋:0.2301|靴子/皮鞋:0.1390	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251101_152825.jpg		\N
20251101_160339	2025/11/1 16:03	sport_shoe	0.504174	運動鞋:0.5042|靴子/皮鞋:0.3075|涼鞋:0.1050	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251101_160301.jpg		\N
20251105_152742	2025/11/5 15:27	sport_shoe	0.506551	運動鞋:0.5066|涼鞋:0.2317|高跟鞋:0.1502	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251105_152706.jpg		\N
20251107_150057	2025/11/7 15:00	sport_shoe	0.468491	運動鞋:0.4685|涼鞋:0.2563|高跟鞋:0.2132	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251107_150038.jpg		\N
20251107_150553	2025/11/7 15:05	sandals	0.375381	涼鞋:0.3754|運動鞋:0.2745|高跟鞋:0.1802	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251107_150527.jpg		\N
20251108_163326	2025/11/8 16:32	sport_shoe	0.656614	運動鞋:0.6566|涼鞋:0.1907|高跟鞋:0.1074	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251108_163210.jpg		\N
20251108_164327	2025/11/8 16:43	sport_shoe	0.607313	運動鞋:0.6073|靴子/皮鞋:0.1737|涼鞋:0.1335	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251108_164327.jpg		\N
20251120_185940	2025/11/20 18:59	sport_shoe	0.526145	運動鞋:0.5261|靴子/皮鞋:0.2209|高跟鞋:0.1344	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251120_185911.jpg		\N
20251120_193937	2025/11/20 19:38	sport_shoe	0.367275	運動鞋:0.3673|涼鞋:0.2583|靴子/皮鞋:0.1715	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251120_193847.jpg		\N
20251120_194305	2025/11/20 19:42	sport_shoe	0.40866	運動鞋:0.4087|涼鞋:0.2672|高跟鞋:0.1632	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251120_194202.jpg		\N
20251120_194807	2025/11/20 19:47	sport_shoe	0.571287	運動鞋:0.5713|涼鞋:0.1480|高跟鞋:0.1447	boots	靴子/皮鞋	f	../output/user_imagesshoe_20251120_194714.jpg		\N
20251120_195014	2025/11/20 19:49	sport_shoe	0.593407	運動鞋:0.5934|涼鞋:0.1507|高跟鞋:0.1480	slippers	拖鞋	f	../output/user_imagesshoe_20251120_194932.jpg		\N
20251120_195200	2025/11/20 19:51	high_heels	0.328651	高跟鞋:0.3287|涼鞋:0.2932|運動鞋:0.2482	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251120_195138.jpg		\N
20251121_192144	2025/11/21 19:21	boots	0.342253	靴子/皮鞋:0.3423|運動鞋:0.2914|高跟鞋:0.1545	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251121_192119.jpg		\N
20251121_193557	2025/11/21 19:34	boots	0.615336	靴子/皮鞋:0.6153|拖鞋:0.1574|運動鞋:0.1480	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251121_193448.jpg		\N
20251121_201217	2025/11/21 20:11	boots	0.641966	靴子/皮鞋:0.6420|運動鞋:0.2559|拖鞋:0.0513	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251121_201129.jpg		\N
20251121_201436	2025/11/21 20:13	boots	0.59072	靴子/皮鞋:0.5907|運動鞋:0.1295|高跟鞋:0.1063	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251121_201358.jpg		\N
20251121_201920	2025/11/21 20:18	boots	0.450312	靴子/皮鞋:0.4503|運動鞋:0.3710|拖鞋:0.0730	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251121_201819.jpg		\N
20251121_211323	2025/11/21 21:13	sport_shoe	0.621334	運動鞋:0.6213|高跟鞋:0.1401|靴子/皮鞋:0.1137	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251121_211323.jpg		\N
20251121_211435	2025/11/21 21:13	boots	0.491946	靴子/皮鞋:0.4919|運動鞋:0.2779|拖鞋:0.1415	sport_shoe	運動鞋	f	../output/user_imagesshoe_20251121_211356.jpg		\N
20251121_220533	2025/11/21 22:04	boots	0.556732	靴子/皮鞋:0.5567|運動鞋:0.2105|高跟鞋:0.1344	boots	靴子/皮鞋	t	../output/user_imagesshoe_20251121_220454.jpg		\N
20251018_154851	2025/10/18 15:48	sport_shoe	0.599201	運動鞋:0.5992|靴子:0.2517|高跟鞋:0.0677	sport_shoe	運動鞋	t	../output/user_imagesshoe_20251018_154815.jpg		\N
20260113_163309	2026-01-13 16:33:28	high_heels	0.377301	高跟鞋:0.3773|拖鞋:0.2948|涼鞋:0.2103	high_heels	高跟鞋	t	../output/user_images\\shoe_20260113_163309.jpg		\N
20260113_181933	2026-01-13 18:21:01	sandals	0.534065	涼鞋:0.5341|拖鞋:0.2709|運動鞋:0.0954	sandals	涼鞋	t	../output/user_images\\shoe_20260113_181933.jpg		\N
20260113_182321	2026-01-13 18:23:35	sandals	0.752142	涼鞋:0.7521|高跟鞋:0.1165|運動鞋:0.0647	sandals	涼鞋	t	../output/user_images\\shoe_20260113_182321.jpg		\N
20260113_182528	2026-01-13 18:25:42	sandals	0.756685	涼鞋:0.7567|拖鞋:0.1245|高跟鞋:0.0618	sandals	涼鞋	t	../output/user_images\\shoe_20260113_182528.jpg		\N
20260113_182910	2026-01-13 18:29:24	sandals	0.741713	涼鞋:0.7417|高跟鞋:0.1620|運動鞋:0.0532	sandals	涼鞋	t	../output/user_images\\shoe_20260113_182910.jpg		\N
20260113_183302	2026-01-13 18:33:17	sandals	0.477994	涼鞋:0.4780|高跟鞋:0.3385|運動鞋:0.1048	sandals	涼鞋	t	../output/user_images\\shoe_20260113_183302.jpg		\N
20260113_184300	2026-01-13 18:43:13	sport_shoe	0.409695	運動鞋:0.4097|涼鞋:0.2361|高跟鞋:0.2346	sport_shoe	運動鞋	t	../output/user_images\\shoe_20260113_184300.jpg		\N
20260113_184748	2026-01-13 18:48:01	sandals	0.68576	涼鞋:0.6858|運動鞋:0.1121|高跟鞋:0.1076	sandals	涼鞋	t	../output/user_images\\shoe_20260113_184748.jpg		\N
20260113_185131	2026-01-13 18:51:46	sandals	0.693455	涼鞋:0.6935|拖鞋:0.1661|高跟鞋:0.0891	sandals	涼鞋	t	../output/user_images\\shoe_20260113_185131.jpg		\N
20260113_185744	2026-01-13 18:58:00	high_heels	0.421359	高跟鞋:0.4214|涼鞋:0.3426|運動鞋:0.1352	high_heels	高跟鞋	t	../output/user_images\\shoe_20260113_185744.jpg		\N
20260120_141335	2026-01-20 14:13:53	sandals	0.393146	涼鞋:0.3931|高跟鞋:0.3415|拖鞋:0.1528	sandals	涼鞋	t	../output/user_images\\shoe_20260120_141335.jpg		\N
20260120_141847	2026-01-20 14:19:04	sandals	0.574112	涼鞋:0.5741|高跟鞋:0.3680|拖鞋:0.0202	sandals	涼鞋	t	../output/user_images\\shoe_20260120_141847.jpg		\N
20260120_142243	2026-01-20 14:23:31	slippers	0.457674	拖鞋:0.4577|涼鞋:0.3375|高跟鞋:0.1283	slippers	拖鞋	t	../output/user_images\\shoe_20260120_142243.jpg		\N
20260120_142811	2026-01-20 14:29:11	sandals	0.541639	涼鞋:0.5416|高跟鞋:0.2358|拖鞋:0.1715	sandals	涼鞋	t	../output/user_images\\shoe_20260120_142811.jpg		\N
20260120_143140	2026-01-20 14:32:01	sandals	0.57094	涼鞋:0.5709|拖鞋:0.2236|高跟鞋:0.1433	sandals	涼鞋	t	../output/user_images\\shoe_20260120_143140.jpg		\N
20260120_143539	2026-01-20 14:35:56	sandals	0.450268	涼鞋:0.4503|高跟鞋:0.3200|拖鞋:0.1235	sandals	涼鞋	t	../output/user_images\\shoe_20260120_143539.jpg		\N
20260120_143927	2026-01-20 14:39:46	sandals	0.383233	涼鞋:0.3832|拖鞋:0.3384|高跟鞋:0.1635	sandals	涼鞋	t	../output/user_images\\shoe_20260120_143927.jpg		\N
20260120_144227	2026-01-20 14:42:47	sandals	0.400731	涼鞋:0.4007|拖鞋:0.2262|高跟鞋:0.1855	sandals	涼鞋	t	../output/user_images\\shoe_20260120_144227.jpg		\N
20260120_144610	2026-01-20 14:47:05	slippers	0.601249	拖鞋:0.6012|涼鞋:0.1980|運動鞋:0.0932	slippers	拖鞋	t	../output/user_images\\shoe_20260120_144610.jpg		\N
20260120_150009	2026-01-20 15:00:24	slippers	0.302329	拖鞋:0.3023|靴子/皮鞋:0.2896|涼鞋:0.1504	slippers	拖鞋	t	../output/user_images\\shoe_20260120_150009.jpg		\N
20260120_152309	2026-01-20 15:23:34	slippers	0.540188	拖鞋:0.5402|涼鞋:0.2222|運動鞋:0.1427	slippers	拖鞋	t	../output/user_images\\shoe_20260120_152309.jpg		\N
20260120_152928	2026-01-20 15:29:42	sandals	0.53105	涼鞋:0.5311|拖鞋:0.2741|運動鞋:0.1322	sandals	涼鞋	t	../output/user_images\\shoe_20260120_152928.jpg		\N
20260120_153200	2026-01-20 15:32:15	sandals	0.636781	涼鞋:0.6368|拖鞋:0.1652|運動鞋:0.1014	sandals	涼鞋	t	../output/user_images\\shoe_20260120_153200.jpg		\N
20260120_153610	2026-01-20 15:36:40	slippers	0.48073	拖鞋:0.4807|涼鞋:0.3748|運動鞋:0.0837	slippers	拖鞋	t	../output/user_images\\shoe_20260120_153610.jpg		\N
20260120_153904	2026-01-20 15:39:29	sandals	0.557469	涼鞋:0.5575|拖鞋:0.2753|高跟鞋:0.0743	sandals	涼鞋	t	../output/user_images\\shoe_20260120_153904.jpg		\N
20260120_155308	2026-01-20 15:53:24	slippers	0.450643	拖鞋:0.4506|涼鞋:0.3133|運動鞋:0.1417	slippers	拖鞋	t	../output/user_images\\shoe_20260120_155308.jpg		\N
20260120_160110	2026-01-20 16:01:58	sandals	0.524817	涼鞋:0.5248|拖鞋:0.2890|高跟鞋:0.0816	sandals	涼鞋	t	../output/user_images\\shoe_20260120_160110.jpg		\N
20260120_160556	2026-01-20 16:06:10	sandals	0.47827	涼鞋:0.4783|拖鞋:0.4323|運動鞋:0.0433	sandals	涼鞋	t	../output/user_images\\shoe_20260120_160556.jpg		\N
20260120_160643	2026-01-20 16:07:33	sandals	0.48553	涼鞋:0.4855|拖鞋:0.3320|運動鞋:0.0958	sandals	涼鞋	t	../output/user_images\\shoe_20260120_160643.jpg		\N
20260120_161458	2026-01-20 16:15:23	sandals	0.67203	涼鞋:0.6720|運動鞋:0.1087|拖鞋:0.1076	sandals	涼鞋	t	../output/user_images\\shoe_20260120_161458.jpg		\N
20260120_185031	2026-01-20 18:51:00	sport_shoe	0.506083	運動鞋:0.5061|涼鞋:0.3217|高跟鞋:0.1601	sport_shoe	運動鞋	t	../output/user_images\\shoe_20260120_185031.jpg		\N
20260120_185550	2026-01-20 18:56:06	sandals	0.482654	涼鞋:0.4827|高跟鞋:0.3083|運動鞋:0.2049	sandals	涼鞋	t	../output/user_images\\shoe_20260120_185550.jpg		\N
20260127_150405	2026-01-27 15:04:26	sandals	0.396151	涼鞋:0.3962|高跟鞋:0.2547|靴子/皮鞋:0.1405	sandals	涼鞋	t	../output/user_images\\shoe_20260127_150405.jpg		\N
20260127_161310	2026-01-27 16:13:29	sandals	0.572159	涼鞋:0.5722|高跟鞋:0.2319|運動鞋:0.1102	sandals	涼鞋	t	../output/user_images\\shoe_20260127_161310.jpg		\N
20260127_161404	2026-01-27 16:14:12	sandals	0.738324	涼鞋:0.7383|高跟鞋:0.2090|運動鞋:0.0358	sandals	涼鞋	t	../output/user_images\\shoe_20260127_161404.jpg		\N
20260127_161455	2026-01-27 16:15:03	sandals	0.671642	涼鞋:0.6716|高跟鞋:0.2795|運動鞋:0.0292	sandals	涼鞋	t	../output/user_images\\shoe_20260127_161455.jpg		\N
20260127_161533	2026-01-27 16:15:40	sandals	0.598277	涼鞋:0.5983|高跟鞋:0.2782|運動鞋:0.0602	sandals	涼鞋	t	../output/user_images\\shoe_20260127_161533.jpg		\N
20260127_164130	2026-01-27 16:42:47	sandals	0.538314	涼鞋:0.5383|高跟鞋:0.2891|運動鞋:0.0792	sandals	涼鞋	t	../output/user_images\\shoe_20260127_164130.jpg		\N
20260127_164424	2026-01-27 16:44:54	sandals	0.448534	涼鞋:0.4485|高跟鞋:0.4144|運動鞋:0.0658	sandals	涼鞋	t	../output/user_images\\shoe_20260127_164424.jpg		\N
20260127_170743	2026-01-27 17:08:03	sandals	0.443845	涼鞋:0.4438|高跟鞋:0.3695|拖鞋:0.0852	sandals	涼鞋	t	../output/user_images\\shoe_20260127_170743.jpg		\N
20260127_171515	2026-01-27 17:15:30	sandals	0.458283	涼鞋:0.4583|高跟鞋:0.4427|運動鞋:0.0847	sandals	涼鞋	t	../output/user_images\\shoe_20260127_171515.jpg		\N
20260127_171815	2026-01-27 17:18:37	sandals	0.643309	涼鞋:0.6433|高跟鞋:0.1930|運動鞋:0.0676	sandals	涼鞋	t	../output/user_images\\shoe_20260127_171815.jpg		\N
20260127_172333	2026-01-27 17:23:57	sandals	0.473632	涼鞋:0.4736|高跟鞋:0.2467|運動鞋:0.1907	sandals	涼鞋	t	../output/user_images\\shoe_20260127_172333.jpg		\N
20260127_173458	2026-01-27 17:35:31	high_heels	0.436596	高跟鞋:0.4366|涼鞋:0.3907|拖鞋:0.0685	high_heels	高跟鞋	t	../output/user_images\\shoe_20260127_173458.jpg		\N
20260127_173810	2026-01-27 17:38:27	sandals	0.428395	涼鞋:0.4284|高跟鞋:0.3277|運動鞋:0.0938	sandals	涼鞋	t	../output/user_images\\shoe_20260127_173810.jpg		\N
20260127_174335	2026-01-27 17:44:00	sport_shoe	0.319963	運動鞋:0.3200|涼鞋:0.3193|靴子/皮鞋:0.2087	sport_shoe	運動鞋	t	../output/user_images\\shoe_20260127_174335.jpg		\N
20260127_174539	2026-01-27 17:45:53	sandals	0.621042	涼鞋:0.6210|高跟鞋:0.2982|靴子/皮鞋:0.0341	sandals	涼鞋	t	../output/user_images\\shoe_20260127_174539.jpg		\N
20260127_174852	2026-01-27 17:49:06	sandals	0.672288	涼鞋:0.6723|高跟鞋:0.2037|拖鞋:0.0626	sandals	涼鞋	t	../output/user_images\\shoe_20260127_174852.jpg		\N
20260127_175619	2026-01-27 17:57:15	sandals	0.653171	涼鞋:0.6532|高跟鞋:0.2399|拖鞋:0.0667	sandals	涼鞋	t	../output/user_images\\shoe_20260127_175619.jpg		\N
20260127_180317	2026-01-27 18:04:13	sandals	0.636722	涼鞋:0.6367|高跟鞋:0.3006|拖鞋:0.0231	sandals	涼鞋	t	../output/user_images\\shoe_20260127_180317.jpg		\N
20260127_180738	2026-01-27 18:07:53	sandals	0.599961	涼鞋:0.6000|高跟鞋:0.2410|拖鞋:0.0759	sandals	涼鞋	t	../output/user_images\\shoe_20260127_180738.jpg		\N
20260127_181031	2026-01-27 18:13:02	slippers	0.47469	拖鞋:0.4747|高跟鞋:0.2704|靴子/皮鞋:0.1947	slippers	拖鞋	t	../output/user_images\\shoe_20260127_181031.jpg		\N
20260128_192813	2026-01-28 19:28:35	sandals	0.594977	涼鞋:0.5950|運動鞋:0.1740|高跟鞋:0.1651	sandals	涼鞋	t	../output/user_images\\shoe_20260128_192813.jpg		\N
20260128_193331	2026-01-28 19:33:46	sandals	0.738541	涼鞋:0.7385|運動鞋:0.1115|高跟鞋:0.0782	sandals	涼鞋	t	../output/user_images\\shoe_20260128_193331.jpg		\N
20260128_193710	2026-01-28 19:37:36	sandals	0.706086	涼鞋:0.7061|高跟鞋:0.1360|運動鞋:0.0824	sandals	涼鞋	t	../output/user_images\\shoe_20260128_193710.jpg		\N
20260128_193923	2026-01-28 19:39:33	sandals	0.649428	涼鞋:0.6494|運動鞋:0.1543|高跟鞋:0.1070	sandals	涼鞋	t	../output/user_images\\shoe_20260128_193923.jpg		\N
20260128_194131	2026-01-28 19:42:04	sandals	0.767179	涼鞋:0.7672|運動鞋:0.1061|高跟鞋:0.0676	sandals	涼鞋	t	../output/user_images\\shoe_20260128_194131.jpg		\N
20260128_194820	2026-01-28 19:48:39	sandals	0.756723	涼鞋:0.7567|運動鞋:0.1247|高跟鞋:0.0657	sandals	涼鞋	t	../output/user_images\\shoe_20260128_194820.jpg		\N
20260128_195003	2026-01-28 19:50:32	sandals	0.583826	涼鞋:0.5838|運動鞋:0.1592|拖鞋:0.1306	sandals	涼鞋	t	../output/user_images\\shoe_20260128_195003.jpg		\N
20260202_190613	2026-02-02 19:08:27	sandals	0.585162	涼鞋:0.5852|高跟鞋:0.3201|運動鞋:0.0424	sandals	涼鞋	t	../output/user_images\\shoe_20260202_190613.jpg		\N
20260202_192010	2026-02-02 19:20:26	sandals	0.46709	涼鞋:0.4671|高跟鞋:0.2251|靴子/皮鞋:0.1227	sandals	涼鞋	t	../output/user_images\\shoe_20260202_192010.jpg		\N
20260202_192857	2026-02-02 19:31:34	high_heels	0.51105	高跟鞋:0.5110|涼鞋:0.4253|拖鞋:0.0265	high_heels	高跟鞋	t	../output/user_images\\shoe_20260202_192857.jpg		\N
20260202_193939	2026-02-02 19:40:00	sandals	0.482273	涼鞋:0.4823|高跟鞋:0.3543|運動鞋:0.0860	sandals	涼鞋	t	../output/user_images\\shoe_20260202_193939.jpg		\N
20260202_195121	2026-02-02 19:54:42	sandals	0.678121	涼鞋:0.6781|高跟鞋:0.2782|拖鞋:0.0223	sandals	涼鞋	t	../output/user_images\\shoe_20260202_195121.jpg		\N
20260203_112715	2026-02-03 11:27:56	high_heels	0.492942	高跟鞋:0.4929|涼鞋:0.3594|拖鞋:0.0986	high_heels	高跟鞋	t	../output/user_images\\shoe_20260203_112715.jpg		\N
20260203_112848	2026-02-03 11:35:14	sandals	0.46885	涼鞋:0.4689|高跟鞋:0.4522|拖鞋:0.0555	sandals	涼鞋	t	../output/user_images\\shoe_20260203_112848.jpg		\N
20260203_113550	2026-02-03 11:36:10	high_heels	0.498013	高跟鞋:0.4980|涼鞋:0.4364|拖鞋:0.0497	high_heels	高跟鞋	t	../output/user_images\\shoe_20260203_113550.jpg		\N
20260203_115130	2026-02-03 11:51:53	sandals	0.587937	涼鞋:0.5879|高跟鞋:0.3627|拖鞋:0.0201	sandals	涼鞋	t	../output/user_images\\shoe_20260203_115130.jpg		\N
20260203_120052	2026-02-03 12:01:31	high_heels	0.618477	高跟鞋:0.6185|涼鞋:0.2772|拖鞋:0.0594	high_heels	高跟鞋	t	../output/user_images\\shoe_20260203_120052.jpg		\N
20260203_120425	2026-02-03 12:04:40	sandals	0.456462	涼鞋:0.4565|高跟鞋:0.4200|拖鞋:0.0717	sandals	涼鞋	t	../output/user_images\\shoe_20260203_120425.jpg		\N
20260203_121205	2026-02-03 12:12:21	high_heels	0.565239	高跟鞋:0.5652|涼鞋:0.3481|拖鞋:0.0701	high_heels	高跟鞋	t	../output/user_images\\shoe_20260203_121205.jpg		\N
20260203_121840	2026-02-03 12:18:58	slippers	0.3986	拖鞋:0.3986|涼鞋:0.3257|高跟鞋:0.2445	slippers	拖鞋	t	../output/user_images\\shoe_20260203_121840.jpg		\N
20260203_125615	2026-02-03 13:12:58	high_heels	0.643863	高跟鞋:0.6439|涼鞋:0.2119|拖鞋:0.1092	high_heels	高跟鞋	t	../output/user_images\\shoe_20260203_125615.jpg		\N
20260203_181435	2026-02-03 18:15:00	high_heels	0.617597	high_heels:0.6176|sandals:0.3032|boots:0.0378	high_heels	high_heels	t	../output/user_images\\shoe_20260203_181435.jpg		\N
20260204_191057	2026-02-04 19:11:09	high_heels	0.480218	high_heels:0.4802|sandals:0.4665|boots:0.0240	high_heels	高跟鞋	t			\N
20260204_191941	2026-02-04 19:19:52	sandals	0.525971	sandals:0.5260|high_heels:0.4097|slippers:0.0351	sandals	涼鞋	t			\N
20260204_192602	2026-02-04 19:26:34	high_heels	0.464232	high_heels:0.4642|sandals:0.4400|slippers:0.0461	high_heels	高跟鞋	t			\N
20260204_193106	2026-02-04 19:31:25	high_heels	0.556742	high_heels:0.5567|sandals:0.4186|sport_shoe:0.0098	high_heels	高跟鞋	t			\N
20260204_193317	2026-02-04 19:33:32	high_heels	0.473742	high_heels:0.4737|sandals:0.1621|slippers:0.1431	high_heels	高跟鞋	t			\N
20260204_205037	2026-02-04 20:50:47	sandals	0.307437	sandals:0.3074|boots:0.2512|high_heels:0.1625	sandals	涼鞋	t			\N
20260204_205449	2026-02-04 20:55:07	sandals	0.528726	sandals:0.5287|high_heels:0.2615|boots:0.0913	sandals	涼鞋	t			\N
20260204_205653	2026-02-04 20:57:03	sandals	0.654784	sandals:0.6548|high_heels:0.1640|sport_shoe:0.1196	sandals	涼鞋	t			\N
20260204_210320	2026-02-04 21:03:51	sandals	0.350532	sandals:0.3505|high_heels:0.2529|sport_shoe:0.2029	sandals	涼鞋	t			\N
20260204_210741	2026-02-04 21:07:50	sandals	0.7307	sandals:0.7307|slippers:0.1070|sport_shoe:0.0934	sandals	涼鞋	t			\N
20260204_210902	2026-02-04 21:09:10	sandals	0.66444	sandals:0.6644|high_heels:0.1995|sport_shoe:0.0633	sandals	涼鞋	t			\N
20260204_211045	2026-02-04 21:10:56	sandals	0.487432	sandals:0.4874|high_heels:0.2091|sport_shoe:0.1575	sandals	涼鞋	t			\N
20260204_211301	2026-02-04 21:13:09	sandals	0.558611	sandals:0.5586|high_heels:0.2385|sport_shoe:0.1092	sandals	涼鞋	t			\N
20260204_211633	2026-02-04 21:17:00	sandals	0.701225	sandals:0.7012|sport_shoe:0.1672|slippers:0.0994	sandals	涼鞋	t			\N
20260204_212839	2026-02-04 21:28:47	sandals	0.640844	sandals:0.6408|sport_shoe:0.2877|slippers:0.0423	sandals	涼鞋	t			\N
20260204_212915	2026-02-04 21:29:23	sandals	0.627477	sandals:0.6275|sport_shoe:0.2102|slippers:0.1373	sandals	涼鞋	t			\N
20260204_214019	2026-02-04 21:40:28	sandals	0.447533	sandals:0.4475|slippers:0.2808|sport_shoe:0.1902	sandals	涼鞋	t			\N
20260204_214723	2026-02-04 21:47:32	sandals	0.385873	sandals:0.3859|slippers:0.3756|sport_shoe:0.1671	sandals	涼鞋	t			\N
20260204_214855	2026-02-04 21:49:05	slippers	0.468006	slippers:0.4680|sport_shoe:0.2357|sandals:0.2246	slippers	拖鞋	t			\N
20260204_215230	2026-02-04 21:52:39	sandals	0.416504	sandals:0.4165|sport_shoe:0.2879|slippers:0.1849	sandals	涼鞋	t			\N
20260204_215839	2026-02-04 21:58:48	slippers	0.398725	slippers:0.3987|sandals:0.3422|sport_shoe:0.2326	slippers	拖鞋	t			\N
20260204_220212	2026-02-04 22:02:25	slippers	0.537568	slippers:0.5376|sandals:0.2831|sport_shoe:0.1517	slippers	拖鞋	t			\N
20260205_115352	2026-02-05 11:54:19	sandals	0.447697	sandals:0.4477|slippers:0.2088|sport_shoe:0.1871	sandals	涼鞋	t			\N
20260205_120346	2026-02-05 12:04:01	high_heels	0.66845	high_heels:0.6684|sandals:0.2743|slippers:0.0242	high_heels	高跟鞋	t			\N
20260205_120727	2026-02-05 12:07:38	sandals	0.489555	sandals:0.4896|slippers:0.3638|sport_shoe:0.0577	sandals	涼鞋	t			\N
20260205_121613	2026-02-05 12:16:24	high_heels	0.578897	high_heels:0.5789|sandals:0.2719|boots:0.0622	high_heels	高跟鞋	t			\N
20260205_132251	2026-02-05 13:23:09	sandals	0.468958	sandals:0.4690|high_heels:0.2365|sport_shoe:0.1364	sandals	涼鞋	t			\N
20260205_132623	2026-02-05 13:26:40	sandals	0.510587	sandals:0.5106|high_heels:0.1838|sport_shoe:0.1424	sandals	涼鞋	t			\N
20260205_133233	2026-02-05 13:32:45	sandals	0.457451	sandals:0.4575|high_heels:0.2774|boots:0.1196	sandals	涼鞋	t			\N
20260205_133407	2026-02-05 13:34:17	sandals	0.368616	sandals:0.3686|sport_shoe:0.3046|high_heels:0.1850	sandals	涼鞋	t			\N
20260205_134004	2026-02-05 13:40:12	sandals	0.520949	sandals:0.5209|sport_shoe:0.1801|high_heels:0.1318	sandals	涼鞋	t			\N
20260205_134544	2026-02-05 13:45:52	sandals	0.465279	涼鞋:0.4653|高跟鞋:0.2269|運動鞋:0.2122	sandals	涼鞋	t			\N
20260205_135640	2026-02-05 13:56:49	high_heels	0.582465	high_heels:0.5825|sandals:0.3271|boots:0.0504	high_heels	高跟鞋	t			\N
20260205_140125	2026-02-05 14:01:38	sport_shoe	0.261257	sport_shoe:0.2613|sandals:0.2403|high_heels:0.2312	sport_shoe	運動鞋	t			\N
20260205_140533	2026-02-05 14:05:42	sport_shoe	0.35523	sport_shoe:0.3552|sandals:0.2699|high_heels:0.1924	sport_shoe	運動鞋	t			\N
20260205_140703	2026-02-05 14:07:15	high_heels	0.70215	high_heels:0.7021|sandals:0.1377|boots:0.1280	high_heels	高跟鞋	t			\N
20260205_140750	2026-02-05 14:07:58	sandals	0.447056	sandals:0.4471|high_heels:0.3256|sport_shoe:0.1294	sandals	涼鞋	t			\N
20260205_142736	2026-02-05 14:28:17	sandals	0.475106	sandals:0.4751|high_heels:0.1932|sport_shoe:0.1770	sandals	涼鞋	t			\N
20260205_143614	2026-02-05 14:36:25	sandals	0.466211	sandals:0.4662|high_heels:0.2383|sport_shoe:0.1202	sandals	涼鞋	t			\N
20260205_144038	2026-02-05 14:40:48	sandals	0.460723	sandals:0.4607|high_heels:0.2206|sport_shoe:0.1649	sandals	涼鞋	t			\N
20260205_144227	2026-02-05 14:44:12	sandals	0.700954	sandals:0.7010|slippers:0.1765|sport_shoe:0.0900	sandals	涼鞋	t			\N
20260205_145156	2026-02-05 14:52:07	sandals	0.439516	sandals:0.4395|high_heels:0.2953|sport_shoe:0.1304	sandals	涼鞋	t			\N
20260205_150345	2026-02-05 15:03:56	sandals	0.481323	sandals:0.4813|high_heels:0.3102|sport_shoe:0.1466	sandals	涼鞋	t			\N
20260205_150807	2026-02-05 15:08:17	high_heels	0.558117	high_heels:0.5581|boots:0.1969|sandals:0.1341	high_heels	高跟鞋	t			\N
20260205_151250	2026-02-05 15:13:00	sandals	0.589737	sandals:0.5897|high_heels:0.2150|slippers:0.0910	sandals	涼鞋	t			\N
20260205_151520	2026-02-05 15:15:32	sandals	0.491469	sandals:0.4915|high_heels:0.2210|slippers:0.1590	sandals	涼鞋	t			\N
20260205_151813	2026-02-05 15:18:40	sandals	0.439424	sandals:0.4394|high_heels:0.2690|slippers:0.1231	sandals	涼鞋	t			\N
20260205_152023	2026-02-05 15:20:32	sandals	0.463348	sandals:0.4633|high_heels:0.2059|slippers:0.1524	sandals	涼鞋	t			\N
20260205_152136	2026-02-05 15:21:46	sandals	0.465199	sandals:0.4652|high_heels:0.2069|slippers:0.1911	sandals	涼鞋	t			\N
20260205_152410	2026-02-05 15:24:22	sandals	0.398047	sandals:0.3980|high_heels:0.3057|slippers:0.1307	sandals	涼鞋	t			\N
20260205_152647	2026-02-05 15:27:01	sandals	0.419081	sandals:0.4191|high_heels:0.2958|slippers:0.1239	sandals	涼鞋	t			\N
20260205_152822	2026-02-05 15:28:43	high_heels	0.518943	high_heels:0.5189|sandals:0.3085|boots:0.0673	high_heels	高跟鞋	t			\N
20260205_153253	2026-02-05 15:33:04	sandals	0.359717	sandals:0.3597|high_heels:0.3094|slippers:0.1329	sandals	涼鞋	t			\N
20260205_153636	2026-02-05 15:36:54	sandals	0.543462	sandals:0.5435|high_heels:0.2291|slippers:0.1308	sandals	涼鞋	t			\N
20260205_153857	2026-02-05 15:39:13	high_heels	0.481235	high_heels:0.4812|sandals:0.2619|sport_shoe:0.1332	high_heels	高跟鞋	t			\N
20260205_155758	2026-02-05 15:58:10	sandals	0.315179	sandals:0.3152|sport_shoe:0.2292|slippers:0.2274	sandals	涼鞋	t			\N
20260205_160522	2026-02-05 16:05:36	slippers	0.34867	slippers:0.3487|sandals:0.2939|sport_shoe:0.1497	slippers	拖鞋	t			\N
20260205_161332	2026-02-05 16:13:41	slippers	0.420605	slippers:0.4206|sandals:0.2924|high_heels:0.1212	slippers	拖鞋	t			\N
20260205_161702	2026-02-05 16:17:12	sandals	0.400597	sandals:0.4006|slippers:0.2043|high_heels:0.1594	sandals	涼鞋	t			\N
20260205_161900	2026-02-05 16:19:11	sandals	0.414909	sandals:0.4149|slippers:0.3192|sport_shoe:0.1691	sandals	涼鞋	t			\N
20260205_162033	2026-02-05 16:24:43	high_heels	0.445866	high_heels:0.4459|sandals:0.2832|sport_shoe:0.2300	high_heels	高跟鞋	t			\N
20260205_202452	2026-02-05 20:26:56	sandals	0.401186	sandals:0.4012|high_heels:0.3622|sport_shoe:0.1611	sandals	涼鞋	t			\N
20260205_203447	2026-02-05 20:35:10	sandals	0.72005	sandals:0.7201|high_heels:0.1288|slippers:0.0860	sandals	涼鞋	t			\N
20260205_203758	2026-02-05 20:38:13	sandals	0.333473	sandals:0.3335|sport_shoe:0.3142|boots:0.1430	sandals	涼鞋	t			\N
20260205_222843	2026-02-05 22:31:17	high_heels	0.367534	high_heels:0.3675|sandals:0.3594|boots:0.1006	high_heels	高跟鞋	t			\N
20260205_223946	2026-02-05 22:40:21	slippers	0.50995	slippers:0.5099|sandals:0.2344|high_heels:0.1233	slippers	拖鞋	t			\N
20260205_224043	2026-02-05 22:40:52	sandals	0.378618	sandals:0.3786|high_heels:0.2817|slippers:0.2072	sandals	涼鞋	t			\N
20260205_224119	2026-02-05 22:41:30	slippers	0.399818	slippers:0.3998|sandals:0.3125|high_heels:0.1803	slippers	拖鞋	t			\N
20260205_225842	2026-02-05 22:58:54	high_heels	0.485952	high_heels:0.4860|sandals:0.3116|slippers:0.1069	high_heels	高跟鞋	t			\N
20260205_230939	2026-02-05 23:09:50	high_heels	0.442436	high_heels:0.4424|sandals:0.3922|slippers:0.0915	high_heels	高跟鞋	t			\N
20260205_231511	2026-02-05 23:15:20	high_heels	0.386163	high_heels:0.3862|sandals:0.3270|slippers:0.1414	high_heels	高跟鞋	t			\N
20260205_231808	2026-02-05 23:18:26	high_heels	0.322442	high_heels:0.3224|boots:0.2504|sandals:0.2314	high_heels	高跟鞋	t			\N
20260205_232819	2026-02-05 23:28:30	sandals	0.340783	sandals:0.3408|high_heels:0.3172|slippers:0.1246	sandals	涼鞋	t			\N
20260205_233343	2026-02-05 23:33:53	high_heels	0.281512	high_heels:0.2815|boots:0.2454|sandals:0.1715	high_heels	高跟鞋	t			\N
20260205_233541	2026-02-05 23:35:50	sandals	0.398854	sandals:0.3989|high_heels:0.2598|sport_shoe:0.1559	sandals	涼鞋	t			\N
20260205_233648	2026-02-05 23:36:57	high_heels	0.537631	high_heels:0.5376|sandals:0.3064|boots:0.1143	high_heels	高跟鞋	t			\N
20260205_233806	2026-02-05 23:38:15	sandals	0.282392	sandals:0.2824|high_heels:0.2741|slippers:0.2576	sandals	涼鞋	t			\N
20260205_234413	2026-02-05 23:47:42	high_heels	0.390528	high_heels:0.3905|sandals:0.2746|slippers:0.2540	high_heels	高跟鞋	t			\N
20260205_235112	2026-02-05 23:51:22	slippers	0.45619	slippers:0.4562|boots:0.2534|sandals:0.1316	slippers	拖鞋	t			\N
20260205_235851	2026-02-05 23:59:00	high_heels	0.45484	high_heels:0.4548|sandals:0.4198|slippers:0.0539	high_heels	高跟鞋	t			\N
20260206_000039	2026-02-06 00:01:10	slippers	0.280858	slippers:0.2809|high_heels:0.2757|sandals:0.2486	slippers	拖鞋	t			\N
20260206_003359	2026-02-06 00:34:19	sandals	0.323114	sandals:0.3231|high_heels:0.3056|slippers:0.2485	sandals	涼鞋	t			\N
20260206_004144	2026-02-06 00:41:54	high_heels	0.419672	high_heels:0.4197|boots:0.2597|sandals:0.1679	high_heels	高跟鞋	t			\N
20260206_004349	2026-02-06 00:43:59	sandals	0.38751	sandals:0.3875|slippers:0.2665|high_heels:0.2429	sandals	涼鞋	t			\N
20260206_004537	2026-02-06 00:45:45	high_heels	0.470861	high_heels:0.4709|sandals:0.2212|boots:0.1411	high_heels	高跟鞋	t			\N
20260206_005532	2026-02-06 00:55:46	high_heels	0.547365	high_heels:0.5474|sandals:0.3347|boots:0.0573	high_heels	高跟鞋	t			\N
20260206_005945	2026-02-06 01:00:01	sandals	0.494798	涼鞋:0.4948|運動鞋:0.2502|拖鞋:0.1862	sandals	涼鞋	t			\N
20260206_010243	2026-02-06 01:02:55	sandals	0.588586	sandals:0.5886|sport_shoe:0.2592|slippers:0.1054	sandals	涼鞋	t			\N
20260206_010836	2026-02-06 01:08:44	sport_shoe	0.431181	運動鞋:0.4312|涼鞋:0.3486|拖鞋:0.1187	sport_shoe	運動鞋	t			\N
20260206_011103	2026-02-06 01:11:17	sport_shoe	0.36555	sport_shoe:0.3656|boots:0.3543|high_heels:0.1769	sport_shoe	運動鞋	t			\N
20260206_011512	2026-02-06 01:15:40	sport_shoe	0.493639	sport_shoe:0.4936|sandals:0.2244|high_heels:0.1884	sport_shoe	運動鞋	t			\N
20260206_011745	2026-02-06 01:19:00	sport_shoe	0.472693	sport_shoe:0.4727|sandals:0.3592|slippers:0.0680	sport_shoe	運動鞋	t			\N
20260206_012113	2026-02-06 01:21:47	sandals	0.423983	sandals:0.4240|high_heels:0.3747|sport_shoe:0.1195	sandals	涼鞋	t			\N
20260206_012509	2026-02-06 01:25:21	sandals	0.450925	sandals:0.4509|sport_shoe:0.4024|high_heels:0.1357	sandals	涼鞋	t			\N
20260206_012829	2026-02-06 01:30:42	sandals	0.429819	sandals:0.4298|sport_shoe:0.3846|high_heels:0.1673	sandals	涼鞋	t			\N
20260206_013241	2026-02-06 01:32:52	sandals	0.457451	sandals:0.4575|high_heels:0.2517|sport_shoe:0.2201	sandals	涼鞋	t			\N
20260206_013552	2026-02-06 01:36:05	sandals	0.540131	sandals:0.5401|sport_shoe:0.2781|high_heels:0.1575	sandals	涼鞋	t			\N
20260206_013958	2026-02-06 01:40:07	sandals	0.492853	sandals:0.4929|sport_shoe:0.2771|high_heels:0.1984	sandals	涼鞋	t			\N
20260206_014933	2026-02-06 01:49:51	sport_shoe	0.438421	sport_shoe:0.4384|sandals:0.2678|high_heels:0.2659	sport_shoe	運動鞋	t			\N
20260206_015029	2026-02-06 01:50:38	sandals	0.437481	sandals:0.4375|high_heels:0.3292|sport_shoe:0.2258	sandals	涼鞋	t			\N
20260206_015658	2026-02-06 01:57:06	sandals	0.459233	sandals:0.4592|sport_shoe:0.3004|high_heels:0.1616	sandals	涼鞋	t			\N
20260206_020923	2026-02-06 02:09:35	sandals	0.35372	sandals:0.3537|high_heels:0.2762|slippers:0.1778	sandals	涼鞋	t			\N
20260206_021500	2026-02-06 02:15:12	sport_shoe	0.325946	sport_shoe:0.3259|sandals:0.2343|high_heels:0.2089	sport_shoe	運動鞋	t			\N
20260206_021721	2026-02-06 02:17:33	slippers	0.311092	slippers:0.3111|high_heels:0.2091|boots:0.1792	slippers	拖鞋	t			\N
20260206_023240	2026-02-06 02:32:59	high_heels	0.456319	high_heels:0.4563|sandals:0.3461|sport_shoe:0.1329	high_heels	高跟鞋	t			\N
20260206_113214	2026-02-06 11:33:39	sandals	0.641434	sandals:0.6414|slippers:0.1755|sport_shoe:0.1081	sandals	涼鞋	t			\N
20260206_113948	2026-02-06 11:40:01	sandals	0.638203	sandals:0.6382|slippers:0.1908|sport_shoe:0.0843	sandals	涼鞋	t			\N
20260206_115435	2026-02-06 11:54:53	high_heels	0.441733	high_heels:0.4417|sandals:0.4019|sport_shoe:0.1364	high_heels	高跟鞋	t			\N
20260206_115943	2026-02-06 12:00:13	sandals	0.401826	sandals:0.4018|sport_shoe:0.3082|high_heels:0.2171	sandals	涼鞋	t			\N
20260206_120051	2026-02-06 12:01:06	sandals	0.372872	sandals:0.3729|slippers:0.2935|sport_shoe:0.1844	sandals	涼鞋	t			\N
20260206_120630	2026-02-06 12:06:40	slippers	0.592365	slippers:0.5924|sandals:0.2017|sport_shoe:0.1156	slippers	拖鞋	t			\N
20260206_123806	2026-02-06 12:39:53	sandals	0.377434	サンダル:0.3774|ハイヒール:0.2766|スリッパ:0.1891	sandals	涼鞋	t			\N
20260206_124905	2026-02-06 12:50:25	high_heels	0.507445	ハイヒール:0.5074|サンダル:0.2795|スニーカー:0.1401	high_heels	高跟鞋	t			\N
20260206_125205	2026-02-06 12:52:18	slippers	0.506106	スリッパ:0.5061|サンダル:0.2223|スニーカー:0.1193	slippers	拖鞋	t			\N
20260207_171453	2026-02-07 17:19:47	sandals	0.317036	サンダル:0.3170|ハイヒール:0.2106|スニーカー:0.1756	サンダル	サンダル	f			\N
20260207_172059	2026-02-07 17:21:46	high_heels	0.30641	high_heels:0.3064|sport_shoe:0.2935|sandals:0.2321	not_listed	not_listed	f			\N
20260330_125317	2026-03-30 12:53:42	sandals	0.48836	サンダル:0.4884|ハイヒール:0.4636|スニーカー:0.0391	sport_shoe	運動鞋	f			\N
20260330_125425	2026-03-30 12:54:56	sandals	0.530424	涼鞋:0.5304|高跟鞋:0.4392|運動鞋:0.0224	涼鞋	涼鞋	f			\N
20260330_125524	2026-03-30 12:57:06	high_heels	0.503284	high_heels:0.5033|sandals:0.4359|sport_shoe:0.0469	high_heels	高跟鞋	t			\N
20260330_125730	2026-03-30 12:58:24	sandals	0.471048	サンダル:0.4710|ハイヒール:0.4621|スニーカー:0.0549	サンダル	サンダル	f			\N
\.


--
-- Data for Name: ui_texts; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.ui_texts (key, zh_text, en_text, ja_text) FROM stdin;
title	拾光道聚-2025頭城老街文化藝術季	Time-Light Gathering - 2025 Toucheng Old Street Cultural and Art Festival	拾光（ひかり）と道が集う - 2025年頭城老街文化芸術祭
take_photo	📸 請直接拍攝鞋子（置中、清晰、光線充足）	📸 Please take a photo of your shoes (centered, clear, and well-lit).	📸 靴を直接撮影してください（中央にあって、鮮明に、明るい場所で）。
take_photo_error	請把鞋子置中拍攝	Please center the shoes in the photo	靴を中央に置いて撮影してください
take_photo_warning	⚠️ 尚未拍攝影像	⚠️ No photo taken yet	⚠️ 画像がまだありません
declined_msg	✅ 系統已紀錄您不接受本次推薦，謝謝 🙏	✅ The system has recorded that you declined this recommendation. Thank you 🙏	✅ システムはあなたがこの推薦をキャンセルを記録しました。ありがとうございます 🙏
countdown_msg	5 秒後將自動回到首頁…	The page will return to home in 5 seconds…	5 秒後にホームに自動で戻ります…
stage0	👟 鞋款辨識 (ResNet50)	👟 Shoe Recognition (ResNet50)	👟 靴の認識 (ResNet50)
stage0_shown	系統推測：	System Prediction:	判定結果：
stage0_confidence	信心	Confidence	信頼度
other	其他 / 不是上述	Other / Not listed	その他 / 該当なし
comfirm	請確認或更改鞋款：	Please confirm or change the shoe model:	靴の種類を確認または変更してください：
stage0_next	✅ 確認鞋款並繼續	✅ Confirm shoe model and continue	✅ 靴の種類を確認して続行
stage0_skip	跳過（維持系統推測）	Skip (keep system prediction)	スキップ（システム推測を維持）
stage0_info	🗄 已寫入鞋款確認結果（PostgreSQL）	🗄 Shoe confirmation result saved (PostgreSQL)	🗄 靴の確認結果が保存されました（PostgreSQL）
gender_male	男	Male	男性
gender_female	女	Female	女性
age_option_below15	15歲（含）以下	15 years old or below	15歳以下
age_option_16-30	16-30歲	16-30 years old	16-30歳
age_option_31-45	31-45歲	31-45 years old	31-45歳
age_option_46-60	46-60歲	46-60 years old	46-60歳
age_option_above60	60歲（含）以上	60 years old or above	60歳以上
all_categories_p	景點	Attractions	観光スポット
all_categories_e	美食	Food	グルメ
all_categories_g	伴手禮	Souvenir	お土産
stage1	請選擇您的基本資料	Please select your basic information	基本情報を選択してください
gender	性別	Gender	性別
age	年齡	Age	年齢
next_btn	下一步 ➡️	Next ➡️	次へ ➡️
finish_info	👉 完成後請點我：	👉 Click me when finished:	👉 完了後にクリックしてください：
stage1_warning	請先選擇性別和年齡	Please select gender and age first	まず性別と年齢を選択してください
stage2_title	請選擇您想告訴我們「去過」或是「計畫中」的景點或美食或伴手禮（單選）	Please select the places or food or souvenirs you have visited or plan to visit (single choice)	「行ったことがある」または「計画中」の観光地・グルメ・お土産を選択してください（単一選択）
stage2_shown	👉 您選擇的是：	👉 Your selection:	👉 あなたが選んだもの：
stage3	請選擇「{selected_category}」的項目（單選）	Please select an item from "{selected_category}" (single choice)	「{selected_category}」の項目を選択してください（単一選択）
expand_list	📍 展開選項清單	📍 Expand option list	📍 選択リストを展開
stage3_shown	您選擇的 {selected_category} 是：	Your selected {selected_category} is:	あなたが選択した {selected_category} は：
stage3_info	👉 確認後請按「下一步 ➡️」	👉 After confirming, please click "Next ➡️"	👉 確認後「次へ ➡️」をクリックしてください
change_option	修改選項 ✏️	Modify selection ✏️	選択を変更 ✏️
stage4_title_place	請選擇要「推薦」給您的是頭城的美食或是伴手禮	Please select whether to recommend food or souvenirs in Toucheng	頭城のグルメまたはお土産を推薦するか選択してください
stage4_title_eat	請選擇要「推薦」給您的是頭城的景點或是伴手禮	Please select whether to recommend attractions or souvenirs in Toucheng	頭城の観光地またはお土産を推薦するか選択してください
stage4_title_gift	請選擇要「推薦」給您的是頭城的景點或是美食	Please select whether to recommend attractions or food in Toucheng	頭城の観光地またはグルメを推薦するか選択してください
stage4_info	您想要系統推薦的是：	The type you want the system to recommend:	システムに推薦してほしい種類：
stage5	📍 以下為根據您的鞋子所進行的旅行推薦	📍 The following are travel recommendations based on your shoes	📍 以下はあなたの靴に基づいたおすすめの旅プランです
stage5_title	🔹 請勾選您喜歡的推薦結果（可複選）	🔹 Please check the recommendations you like (multiple choice)	🔹 あなたが気に入ったおすすめを選択してください（複数選択可）
score	分數:	Score:	スコア：
keywords	關鍵字：	Keywords:	キーワード：
stage5_con_btn	👍 這些可以！	👍 These are fine!	👍 気に入った！
stage5_dec_btn	😅 都不是我喜歡的...	😅 None of these are to my liking...	😅 どれも気に入らない...
stage6_spinner	⏳ 使用本地 LLM 生成報告中...	⏳ Generating report using local LLM...	⏳ ローカルLLMでレポート生成中...
stage6_btn	👉 查看完報告後請點我：	👉 Click me after viewing the report:	👉 レポートを確認後にクリックしてください：
stage7_pic	📸 想要拍下生成結果作為紀念嗎？	📸 Would you like to take a photo of the generated result as a souvenir?	📸 生成結果を保存しますか？
pic_option_1	好哇！😍	Sure! 😍	はい！😍
pic_option_2	先不用，謝謝 🙏	Not now, thanks 🙏	今はいいです 🙏
input	請填入正確鞋款：	Please enter the correct shoe model:	正しい靴の種類を入力してください：
stage7_rating	💬 請給予系統一個好感度評分	💬 Please rate the system:	💬 システムに評価をお願いします：
rating_option_1	非常喜歡 😍	Love it 😍	最高！ 😍
rating_option_2	喜歡 🙂	Like it 🙂	好き 🙂
rating_option_3	普通 😐	Neutral 😐	普通 😐
rating_option_4	不喜歡 🙁	Dislike 🙁	嫌い 🙁
rating_option_5	非常不喜歡 😡	Hate it 😡	大嫌い 😡
stage7_fin_btn	🎁 立即獲取獎勵標籤	🎁 Get reward label immediately	🎁 報酬ラベルをすぐに取得
stage7_warning	請先完成『拍照記錄結果』和『好感度評分』的選擇	Please complete "Take Photo" and "Rating" first	まず「写真撮影」と「評価」を完了してください
label_random	🎲 已隨機選擇組合：{chosen_pair}	🎲 Randomly selected combination: {chosen_pair}	🎲 ランダムに選択された組み合わせ： {chosen_pair}
label_shown	🎁 顯示圖片：{image_file}	🎁 Display image:{image_file}	🎁 画像を表示：{image_file}
label_warning	⚠️ 找不到對應圖片：{image_file}	⚠️ Corresponding image not found:{image_file}	⚠️ 対応する画像が見つかりません：{image_file}
label_com	🎯 對應組合：{selected_label_key} →	🎯 Corresponding combination:{selected_label_key} → 	🎯 対応組み合わせ：{selected_label_key} → 
log_info	✅ 已更新評分到同一筆紀錄（user_id={cur_uid}）	✅ Updated rating to the same record (user_id={cur_uid})	✅ 同じレコードに評価を更新しました (user_id={cur_uid})
log_error	❌ 更新資料庫失敗：{e}	❌ Failed to update database: {e}	❌ データベースの更新に失敗しました: {e}
rerun	🔁 開始新一輪	🔁 Start a new round	🔁 新しいラウンドを開始
lbl_recommend	推薦	Recommended	おすすめ
lbl_place	景點	Attractions	観光スポット
lbl_food	美食	Food	グルメ
lbl_gift	伴手禮	Souvenirs	お土産
lbl_like_place	喜歡景點	Preferred Attractions	好きな観光スポット
lbl_like_food	喜歡美食	Preferred Food	好きなグルメ
lbl_like_gift	喜歡伴手禮	Preferred Souvenirs	好きなお土産
lbl_like_item	喜歡項目	Preferred Items	好きな項目
lbl_req_type	推薦類型	Recommendation Type	おすすめタイプ
lbl_recommend_items	推薦項目	Recommended Items	おすすめ項目
pdf_title	一日旅遊推薦報告	One-Day Travel Recommendation Report	1日旅行おすすめレポート
lbl_summary	說明	Summary	概要
lbl_profile	使用者資料	User Profile	ユーザープロフィール
lbl_pc	地點介紹	Location Overview	スポット紹介
lbl_detect	鞋款偵測	Shoe Detection	靴タイプ判定
lbl_conf	信心	Confidence	信頼度
lbl_intros	推薦項目	Recommended Items	おすすめ項目
lbl_item	喜歡項目	Preferred Items	好きな項目
lbl_req	推薦類型	Recommendation Type	おすすめタイプ
report_time	報告時間	Report Time	レポート作成時刻
confirmed_rate	確認正確率	Confirmation Accuracy	確認一致率
footer_competition	2025年 資訊應用服務創新競賽-AMD 智慧場域與開源創新組	2025 InnoServe Competition – AMD Smart Environments & Open Innovation Track	2025年 InnoServe 情報応用サービス・イノベーションコンテスト  \n― AMD スマート環境＆オープンイノベーショントラック ―
footer_team	【頭頭是道，腳下知道】專題團隊設計	Project Team: “Head Leads, Feet Know”	プロジェクトチーム：「頭は理を説き、足は先を知る」
footer_ai	由 AMD AI PC Llama3.2 生成	Generated by AMD AI PC (Llama 3.2)	AMD AI PC（Llama 3.2）によって生成
stage5_info	👉 您選擇要推薦的類型是：{rc}	👉 The type you chose to recommend is:{rc}	 👉 あなたが選択した推薦タイプ：{rc}
\.


--
-- Data for Name: user_feedback; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.user_feedback (user_id, "timestamp", language, age, gender, pc_type, selected_item, rc_type, shoe_code, shown_places, checked_places, correct_rate, declined, options_pic, options_rating, niimbot_label, recommendations, keyword_id) FROM stdin;
20250921_113821	2025/9/21 11:38	繁體中文	31-45歲	男	美食	E-11春捲伯	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-9","P-10"}	66.666664	0	1	4			\N
20250921_115147	2025/9/21 11:51	繁體中文	16-30歲	女	美食	E-9屋台拉麵	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-10"}	33.333332	0	1	5			\N
20250921_120158	2025/9/21 12:01	zh	16-30歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"G-9":0.01}	{"G-9"}	33.333332	0	\N	\N			\N
20250921_120347	2025/9/21 12:03	繁體中文	16-30歲	女	伴手禮	G-3【三合餅舖】特色宜蘭蔥燒餅	美食	slippers	{"G-8":0.45,"P-11":0.01,"E-6":0.01}	{"G-8","P-11","E-6"}	100	0	1	5			\N
20250921_120604	2025/9/21 12:06	zh	16-30歲	女	景點	P-1蘭陽博物館	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-7","G-10","G-1"}	100	0	\N	\N			\N
20250921_120847	2025/9/21 12:08	zh	16-30歲	女	美食	E-7Hito石花凍	景點	sport_shoe			0	1	\N	\N		{"P-9":1.60,"P-12":1.46,"P-10":1.33}	\N
20250921_120931	2025/9/21 12:09	繁體中文	16-30歲	女	美食	E-7Hito石花凍	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-9","P-10"}	66.666664	0	1	5			\N
20250922_110415	2025/9/22 11:04	zh	16-30歲	女	景點	P-5龜山島賞鯨	伴手禮	sport_shoe			0	1	\N	\N		{"G-7":0.98,"G-10":0.70,"G-1":0.09}	\N
20250922_110517	2025/9/22 11:05	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	伴手禮	slippers	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-10"}	33.333332	0	2	5			\N
20250922_110827	2025/9/22 11:08	zh	16-30歲	女	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-10"}	33.333332	0	\N	\N			\N
20250922_111032	2025/9/22 11:10	zh	16-30歲	女	伴手禮	G-6【頭圍農驛品牌館】當地農特產品	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-10":0.01}	{"E-10"}	33.333332	0	\N	\N			\N
20250922_111325	2025/9/22 11:13	zh	16-30歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"P-7":0.01}	{"E-1"}	33.333332	0	\N	\N			\N
20250922_111425	2025/9/22 11:14	zh	16-30歲	女	美食	E-3龍記牛肉麵	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61}	{"P-14"}	33.333332	0	\N	\N			\N
20250922_111538	2025/9/22 11:15	zh	16-30歲	女	景點	P-6北關海潮一線天	美食	slippers	{"G-8":0.45,"E-7":0.01,"E-4":0.01}	{"E-7"}	33.333332	0	\N	\N			\N
20250922_111648	2025/9/22 11:16	zh	16-30歲	女	伴手禮	G-3【三合餅舖】特色宜蘭蔥燒餅	美食	slippers	{"G-8":0.45,"E-11":0.01,"E-4":0.01}	{"E-11"}	33.333332	0	\N	\N			\N
20250922_111840	2025/9/22 11:18	zh	16-30歲	女	美食	E-3龍記牛肉麵	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-12"}	33.333332	0	\N	\N			\N
20250925_161529	2025/9/25 16:15	zh	16-30歲	女	景點	P-9頭城濱海森林公園	美食	sport_shoe	{"G-8":0.45,"E-11":0.01,"E-7":0.01}		0	0	\N	\N			\N
20250925_161704	2025/9/25 16:17	zh	16-30歲	女	美食	E-5阿宗芋冰城	伴手禮	sport_shoe			0	1	\N	\N		{"G-7":0.98,"G-10":0.70,"G-1":0.09}	\N
20250927_134114	2025/9/27 13:41	zh	15歲（含）以下	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-7":0.01,"E-8":0.01}	{"E-8"}	33.333332	0	\N	\N			\N
20250927_134413	2025/9/27 13:44	繁體中文	16-30歲	男	美食	E-9屋台拉麵	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-7"}	33.333332	0	2	5			\N
20250927_134627	2025/9/27 13:46	繁體中文	16-30歲	男	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-4":0.01,"E-11":0.01}	{"E-4"}	33.333332	0	1	5			\N
20250927_134902	2025/9/27 13:49	繁體中文	16-30歲	女	景點	P-3烏石漁港	美食	sport_shoe	{"G-8":0.45,"G-9":0.01,"E-1":0.01}	{"E-1"}	33.333332	0	2	3			\N
20250927_135057	2025/9/27 13:50	zh	16-30歲	女	景點	P-2外澳海灘	美食	sport_shoe			0	1	\N	\N		{"G-8":0.45,"P-3":0.01,"P-11":0.01}	\N
20250927_135229	2025/9/27 13:52	繁體中文	16-30歲	女	美食	E-3龍記牛肉麵	伴手禮	sandals	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-1"}	33.333332	0	2	4			\N
20250927_135736	2025/9/27 13:57	zh	31-45歲	男	美食	E-7Hito石花凍	伴手禮	boots	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-1"}	33.333332	0	\N	\N			\N
20250927_135902	2025/9/27 13:59	zh	16-30歲	男	美食	E-7Hito石花凍	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-7"}	33.333332	0	\N	\N			\N
20250927_140014	2025/9/27 14:00	繁體中文	16-30歲	男	美食	E-3龍記牛肉麵	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-12"}	33.333332	0	1	5			\N
20250927_140200	2025/9/27 14:02	繁體中文	16-30歲	女	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-10"}	33.333332	0	1	5			\N
20250927_140339	2025/9/27 14:03	繁體中文	16-30歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-11":0.01,"P-3":0.01}	{"P-3"}	33.333332	0	1	5			\N
20250927_140523	2025/9/27 14:05	zh	16-30歲	女	景點	P-1蘭陽博物館	伴手禮	sandals	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-1"}	33.333332	0	\N	\N			\N
20250927_145608	2025/9/27 14:56	繁體中文	16-30歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-5":0.01,"E-4":0.01}	{"E-5","E-4"}	66.666664	0	1	4			\N
20250927_150851	2025/9/27 15:08	zh	31-45歲	女	美食	E-5阿宗芋冰城	景點	sport_shoe			0	1	\N	\N		{"P-9":1.60,"P-12":1.46,"P-10":1.33}	\N
20250927_151114	2025/9/27 15:11	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-1"}	33.333332	0	2	3			\N
20251002_130225	2025/10/2 13:02	zh	46-60歲	男	景點	P-1蘭陽博物館	美食	boots	{"G-8":0.45,"E-10":0.01,"P-7":0.01}	{"E-10","P-7"}	66.666664	0	\N	\N			\N
20251008_091742	2025/10/8 9:17	zh	16-30歲	女	伴手禮	G-2【橘之鄉】宜蘭必買金棗	美食	sport_shoe	{"G-8":0.45,"E-5":0.01,"E-10":0.01}	{"E-10"}	33.333332	0	\N	\N			\N
20251008_100021	2025/10/8 10:00	繁體中文	46-60歲	男	美食	E-4吉祥鮮肉小籠包	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-9"}	33.333332	0	1	5			\N
20251008_103941	2025/10/8 10:39	zh	46-60歲	男	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}	{"P-10"}	33.333332	0	\N	\N			\N
20251008_172507	2025/10/8 17:25	zh	31-45歲	女	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"P-7":0.01,"P-14":0.01}	{"G-8","P-7"}	66.666664	0	\N	\N			\N
20251013_093306	2025/10/13 9:33	zh	16-30歲	女	美食	E-2品誼古早味小吃	伴手禮	sport_shoe	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-10"}	33.333332	0	\N	\N			\N
20250921_120010	2025/9/21 12:00	zh	16-30歲	女	美食	E-1老街小吃（例：現烤香腸）	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33}		0	0	\N	\N			\N
20251013_093429	2025/10/13 9:34	zh	16-30歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-11":0.01}	{"G-8"}	33.333332	0	\N	\N			\N
20251013_093519	2025/10/13 9:35	繁體中文	31-45歲	女	伴手禮	G-1【奕順軒】奶凍捲	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"E-3":0.01}	{"G-8","E-8"}	66.666664	0	1	5			\N
20251013_124439	2025/10/13 12:44	繁體中文	31-45歲	女	景點	P-2外澳海灘	美食	sandals	{"G-8":0.45,"P-11":0.01,"E-2":0.01,"E-11":0.01,"P-14":0.01}	{"P-11","E-2","E-11"}	60	0	1	3			\N
20251017_141846	2025/10/17 14:18	繁體中文	31-45歲	男	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9"}	20	0	1	5			\N
20251017_160206	2025/10/17 16:02	繁體中文	46-60歲	男	景點	P-3烏石漁港	美食	sport_shoe	{"G-8":0.45,"G-9":0.01,"E-3":0.01,"E-5":0.01,"E-1":0.01}	{"E-3"}	20	0	1	5			\N
20251018_100045	2025/10/18 10:00	繁體中文	16-30歲	男	景點	P-1蘭陽博物館	美食	slippers	{"G-8":0.45,"E-4":0.01,"E-9":0.01,"P-11":0.01,"E-1":0.01}	{"G-8"}	20	0	1	4			\N
20251018_100309	2025/10/18 10:03	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"E-7":0.01,"E-3":0.01,"E-5":0.01}	{"G-8"}	20	0	1	5			\N
20251018_101338	2025/10/18 10:13	繁體中文	15歲（含）以下	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-6":0.01,"P-4":0.01,"E-10":0.01}	{"G-8","P-3"}	40	0	1	5			\N
20251018_103429	2025/10/18 10:37	繁體中文	31-45歲	男	景點	P-15頭城農場	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-1"}	60	0	1	5			\N
20251018_110014	2025/10/18 11:00	繁體中文	46-60歲	女	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-4"}	20	0	1	5			\N
20251018_110218	2025/10/18 11:03	繁體中文	31-45歲	男	美食	E-10頂埔阿嬤蔥油餅	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-5"}	40	0	1	5			\N
20251018_110440	2025/10/18 11:05	繁體中文	31-45歲	女	美食	E-8頭城車站阿伯炸彈蔥油餅	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-14"}	20	0	1	5			\N
20251018_110633	2025/10/18 11:07	繁體中文	60歲（含）以上	女	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"P-3":0.01,"P-14":0.01,"P-11":0.01}	{"G-8","E-1","P-3","P-14","P-11"}	100	0	1	5			\N
20251018_110859	2025/10/18 11:09	繁體中文	46-60歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-6":0.01,"E-10":0.01,"E-4":0.01,"E-8":0.01}	{"G-8","E-4","E-8"}	60	0	1	5			\N
20251018_111226	2025/10/18 11:12	繁體中文	31-45歲	男	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-4"}	40	0	1	5			\N
20251018_111344	2025/10/18 11:13	繁體中文	46-60歲	女	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8"}	20	0	1	5			\N
20251018_111610	2025/10/18 11:16	zh	60歲（含）以上	女	景點	P-1蘭陽博物館	美食	sport_shoe			0	1	\N	\N		{"G-8":0.45,"E-8":0.01,"P-14":0.01,"P-3":0.01,"E-4":0.01}	\N
20251018_111848	2025/10/18 11:18	繁體中文	46-60歲	女	美食	E-8頭城車站阿伯炸彈蔥油餅	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4","G-1"}	40	0	1	4			\N
20251018_112443	2025/10/18 11:24	繁體中文	46-60歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-4":0.01,"P-7":0.01,"P-14":0.01}	{"G-8","E-8","P-4"}	60	0	1	5			\N
20251018_112913	2025/10/18 11:29	繁體中文	16-30歲	女	美食	E-5阿宗芋冰城	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4","G-1"}	40	0	1	5			\N
20251018_113101	2025/10/18 11:31	繁體中文	16-30歲	女	景點	P-8慶元宮	美食	sandals	{"G-8":0.45,"P-7":0.01,"E-8":0.01,"P-3":0.01,"E-1":0.01}	{"E-8","E-1"}	40	0	1	5			\N
20251018_113736	2025/10/18 11:37	繁體中文	60歲（含）以上	女	美食	E-6老張早餐吧	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-14"}	20	0	1	5			\N
20251018_114828	2025/10/18 11:48	繁體中文	31-45歲	女	美食	E-6老張早餐吧	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-14","P-4"}	40	0	1	5			\N
20251018_115033	2025/10/18 11:50	繁體中文	16-30歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-6":0.01,"E-3":0.01,"E-5":0.01,"P-4":0.01}	{"P-4"}	20	0	1	5			\N
20251018_115545	2025/10/18 11:55	繁體中文	60歲（含）以上	男	景點	P-3烏石漁港	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-3":0.01,"P-7":0.01,"E-5":0.01}	{"E-5"}	20	0	1	5			\N
20251018_120611	2025/10/18 12:06	繁體中文	46-60歲	女	美食	E-10頂埔阿嬤蔥油餅	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-12"}	20	0	1	4			\N
20251018_121539	2025/10/18 12:15	繁體中文	60歲（含）以上	男	景點	P-5龜山島賞鯨	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-5"}	20	0	1	5			\N
20251018_122012	2025/10/18 12:20	繁體中文	15歲（含）以下	女	景點	P-4頭城老街	美食	slippers	{"G-8":0.45,"E-5":0.01,"P-3":0.01,"G-9":0.01,"E-8":0.01}	{"P-3"}	20	0	1	3			\N
20251018_122241	2025/10/18 12:22	繁體中文	15歲（含）以下	女	景點	P-14大溪漁港	美食	sandals	{"G-8":0.45,"E-9":0.01,"E-11":0.01,"E-4":0.01,"P-3":0.01}	{"E-9"}	20	0	1	4			\N
20251018_122756	2025/10/18 12:27	繁體中文	31-45歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-4":0.01,"E-6":0.01,"G-9":0.01,"E-1":0.01}	{"P-4"}	20	0	1	5			\N
20251018_124600	2025/10/18 12:46	繁體中文	46-60歲	男	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-4":0.01,"P-7":0.01,"P-14":0.01}	{"G-8","E-8"}	40	0	1	5			\N
20251018_125722	2025/10/18 12:57	繁體中文	15歲（含）以下	女	美食	E-3龍記牛肉麵	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-14","P-4"}	60	0	1	5			\N
20251018_125945	2025/10/18 12:59	繁體中文	60歲（含）以上	女	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	1	5			\N
20251018_130435	2025/10/18 13:04	繁體中文	31-45歲	女	景點	P-8慶元宮	美食	boots	{"G-8":0.45,"E-1":0.01,"E-3":0.01,"G-9":0.01,"E-9":0.01}	{"E-1"}	20	0	1	5			\N
20251018_130605	2025/10/18 13:06	繁體中文	31-45歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-7":0.01,"P-3":0.01,"G-9":0.01}	{"G-8","E-7"}	40	0	1	4			\N
20251018_131223	2025/10/18 13:12	繁體中文	31-45歲	女	景點	P-15頭城農場	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-5"}	60	0	1	5			\N
20251018_131428	2025/10/18 13:14	繁體中文	16-30歲	男	景點	P-6北關海潮一線天	美食	sport_shoe	{"G-8":0.45,"E-9":0.01,"E-7":0.01,"P-3":0.01,"E-10":0.01}	{"E-7","P-3"}	40	0	1	5			\N
20251018_131816	2025/10/18 13:18	繁體中文	16-30歲	女	美食	E-10頂埔阿嬤蔥油餅	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-4","G-5"}	80	0	1	5			\N
20251018_133240	2025/10/18 13:32	繁體中文	15歲（含）以下	男	美食	E-5阿宗芋冰城	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-4","G-5","G-1"}	100	0	1	5			\N
20251018_133729	2025/10/18 13:37	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8"}	20	0	1	4			\N
20251018_135053	2025/10/18 13:50	繁體中文	31-45歲	男	美食	E-4吉祥鮮肉小籠包	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-4","G-5","G-1"}	100	0	1	5			\N
20251018_140301	2025/10/18 14:03	繁體中文	16-30歲	女	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"E-2":0.01,"E-4":0.01,"E-3":0.01,"E-1":0.01}	{"G-8","E-4"}	40	0	1	5			\N
20251018_140641	2025/10/18 14:06	繁體中文	16-30歲	男	景點	P-10草嶺古道	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"P-3":0.01,"P-14":0.01,"E-4":0.01}	{"G-8","P-14","E-4"}	60	0	1	5			\N
20251018_140919	2025/10/18 14:09	繁體中文	46-60歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"P-3":0.01,"E-4":0.01,"E-5":0.01}	{"P-14","P-3","E-5"}	60	0	1	5			\N
20251018_141208	2025/10/18 14:12	繁體中文	15歲（含）以下	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-3":0.01,"E-8":0.01,"E-6":0.01,"E-5":0.01}	{"E-8"}	20	0	1	5			\N
20251018_141726	2025/10/18 14:17	繁體中文	31-45歲	女	景點	P-5龜山島賞鯨	美食	boots	{"G-8":0.45,"E-2":0.01,"E-8":0.01,"P-4":0.01,"E-3":0.01}	{"E-2","E-8","P-4"}	60	0	1	5			\N
20251018_141919	2025/10/18 14:19	繁體中文	16-30歲	女	景點	P-2外澳海灘	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-1"}	60	0	1	4			\N
20251018_142104	2025/10/18 14:21	繁體中文	16-30歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-3":0.01,"E-6":0.01,"P-11":0.01}	{"P-3","P-11"}	40	0	1	5			\N
20251018_143338	2025/10/18 14:34	繁體中文	15歲（含）以下	男	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-1"}	40	0	1	5			\N
20251018_143717	2025/10/18 14:38	繁體中文	31-45歲	女	景點	P-4頭城老街	伴手禮	slippers	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	1	5			\N
20251018_144052	2025/10/18 14:42	繁體中文	16-30歲	男	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-12","P-4"}	60	0	1	5			\N
20251018_144513	2025/10/18 14:46	繁體中文	46-60歲	女	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8","G-4"}	40	0	1	5			\N
20251018_144756	2025/10/18 14:48	繁體中文	15歲（含）以下	女	美食	E-1老街小吃（例：現烤香腸）	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-2"}	20	0	1	5			\N
20251018_145001	2025/10/18 14:50	繁體中文	15歲（含）以下	女	伴手禮	G-5【大溪漁港】新鮮漁貨	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-11"}	20	0	1	5			\N
20251018_150253	2025/10/18 15:02	繁體中文	46-60歲	女	景點	P-2外澳海灘	美食	boots:False,high_heels:False,sandals:False,slippers:False,sport_shoe:True	{"G-8":0.45,"P-3":0.01,"E-1":0.01,"E-8":0.01,"P-7":0.01}	{"P-3","E-8"}	40	0	1	4			\N
20251018_150545	2025/10/18 15:05	繁體中文	15歲（含）以下	女	景點	P-2外澳海灘	美食	sandals	{"G-8":0.45,"E-6":0.01,"P-4":0.01,"P-3":0.01,"E-1":0.01}	{"G-8","E-1"}	40	0	1	4			\N
20251018_150849	2025/10/18 15:08	繁體中文	15歲（含）以下	男	伴手禮	G-4【新協珍餅店】西點烘焙、麵包	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-7","P-2"}	40	0	1	3			\N
20251018_151449	2025/10/18 15:14	繁體中文	16-30歲	女	美食	E-4吉祥鮮肉小籠包	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-10","P-14"}	40	0	1	5			\N
20251018_151640	2025/10/18 15:16	繁體中文	16-30歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-5":0.01,"P-3":0.01,"E-6":0.01,"E-2":0.01}	{"G-8"}	20	0	1	5			\N
20251018_152848	2025/10/18 15:28	繁體中文	31-45歲	男	景點	P-1蘭陽博物館	美食	slippers	{"G-8":0.45,"E-5":0.01,"E-1":0.01,"P-3":0.01,"E-2":0.01}	{"E-5","E-1"}	40	0	1	4			\N
20251018_153214	2025/10/18 15:32	繁體中文	15歲（含）以下	女	景點	P-2外澳海灘	美食	sandals	{"G-8":0.45,"E-7":0.01,"E-6":0.01,"P-14":0.01,"E-4":0.01}	{"G-8","E-7"}	40	0	1	4			\N
20251018_153651	2025/10/18 15:36	繁體中文	15歲（含）以下	男	美食	E-5阿宗芋冰城	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-2","P-14"}	40	0	1	5			\N
20251018_153947	2025/10/18 15:39	繁體中文	46-60歲	男	美食	E-8頭城車站阿伯炸彈蔥油餅	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5			\N
20251018_154340	2025/10/18 15:43	繁體中文	60歲（含）以上	女	美食	E-2品誼古早味小吃	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-4","G-1"}	60	0	1	3			\N
20251018_154705	2025/10/18 15:47	繁體中文	31-45歲	男	美食	E-5阿宗芋冰城	伴手禮	slippers	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5			\N
20251018_154851	2025/10/18 15:48	繁體中文	16-30歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-10":0.01,"E-8":0.01,"E-7":0.01,"E-2":0.01}	{"E-8"}	20	0	1	5			\N
20251018_155310	2025/10/18 15:53	繁體中文	31-45歲	女	景點	P-9頭城濱海森林公園	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	1	5			\N
20251018_155845	2025/10/18 15:58	繁體中文	31-45歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"P-7":0.01,"P-14":0.01,"E-3":0.01}	{"E-3"}	20	0	1	4			\N
20251018_160116	2025/10/18 16:01	繁體中文	31-45歲	女	景點	P-6北關海潮一線天	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8"}	20	0	1	4			\N
20251018_161056	2025/10/18 16:10	繁體中文	16-30歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"E-1":0.01,"E-8":0.01,"E-7":0.01}	{"E-1","E-8"}	40	0	1	5			\N
20251018_161314	2025/10/18 16:13	繁體中文	46-60歲	男	景點	P-1蘭陽博物館	美食	slippers	{"G-8":0.45,"P-7":0.01,"E-11":0.01,"P-11":0.01,"E-4":0.01}	{"P-11"}	20	0	1	4			\N
20251018_161550	2025/10/18 16:15	繁體中文	46-60歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-4":0.01,"E-10":0.01,"P-4":0.01}	{"G-8","P-3"}	40	0	1	4			\N
20251018_162057	2025/10/18 16:20	繁體中文	31-45歲	女	美食	E-4吉祥鮮肉小籠包	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-5"}	20	0	1	3			\N
20251018_162318	2025/10/18 16:23	繁體中文	15歲（含）以下	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-10":0.01,"E-8":0.01,"P-7":0.01,"E-2":0.01}	{"P-7"}	20	0	1	5			\N
20251018_162636	2025/10/18 16:26	繁體中文	15歲（含）以下	男	景點	P-15頭城農場	美食	sport_shoe	{"G-8":0.45,"E-11":0.01,"P-14":0.01,"E-6":0.01,"E-9":0.01}	{"E-11","E-9"}	40	0	1	5			\N
20251018_163106	2025/10/18 16:31	繁體中文	15歲（含）以下	男	美食	E-5阿宗芋冰城	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8"}	20	0	1	3			\N
20251018_163827	2025/10/18 16:38	繁體中文	16-30歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"E-3":0.01,"E-11":0.01,"P-3":0.01}	{"G-8","E-11"}	40	0	1	4			\N
20251018_164041	2025/10/18 16:40	繁體中文	16-30歲	男	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4","G-1"}	40	0	1	4			\N
20251018_164434	2025/10/18 16:44	繁體中文	46-60歲	男	景點	P-10草嶺古道	美食	sport_shoe	{"G-8":0.45,"E-7":0.01,"E-9":0.01,"E-3":0.01,"P-4":0.01}	{"E-7","P-4"}	40	0	1	5			\N
20251018_164728	2025/10/18 16:47	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	美食	slippers	{"G-8":0.45,"E-5":0.01,"E-6":0.01,"E-8":0.01,"P-11":0.01}	{"E-5","E-8"}	40	0	1	4			\N
20251018_164918	2025/10/18 16:49	繁體中文	46-60歲	男	景點	P-1蘭陽博物館	美食	slippers	{"G-8":0.45,"E-8":0.01,"E-10":0.01,"E-1":0.01,"P-3":0.01}	{"E-8"}	20	0	1	5			\N
20251018_165433	2025/10/18 16:54	繁體中文	60歲（含）以上	男	景點	P-2外澳海灘	美食	boots	{"G-8":0.45,"E-1":0.01,"G-9":0.01,"E-2":0.01,"E-11":0.01}	{"E-2"}	20	0	1	5			\N
20251018_170555	2025/10/18 17:05	繁體中文	16-30歲	男	景點	P-4頭城老街	美食	sandals	{"G-8":0.45,"E-9":0.01,"E-7":0.01,"E-8":0.01,"E-10":0.01}	{"G-8","E-9","E-7","E-8","E-10"}	100	0	1	4			\N
20251018_170856	2025/10/18 17:08	繁體中文	16-30歲	女	景點	P-6北關海潮一線天	美食	sport_shoe	{"G-8":0.45,"P-7":0.01,"E-6":0.01,"P-4":0.01,"E-7":0.01}	{"P-4"}	20	0	1	4			\N
20251018_171450	2025/10/18 17:14	繁體中文	16-30歲	女	美食	E-7Hito石花凍	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-2","P-6"}	40	0	1	5			\N
20251018_171649	2025/10/18 17:16	繁體中文	16-30歲	男	美食	E-5阿宗芋冰城	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-11","P-2"}	40	0	1	5			\N
20251018_171811	2025/10/18 17:18	繁體中文	16-30歲	男	景點	P-7金車伯朗咖啡城堡	美食	sport_shoe	{"G-8":0.45,"E-9":0.01,"P-7":0.01,"P-3":0.01,"E-2":0.01}	{"E-9","P-3","E-2"}	60	0	1	5			\N
20251018_172100	2025/10/18 17:21	繁體中文	16-30歲	女	美食	E-1老街小吃（例：現烤香腸）	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-11","P-2"}	40	0	1	5			\N
20251018_172457	2025/10/18 17:24	繁體中文	31-45歲	女	美食	E-11 春捲伯	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-12","P-10"}	40	0	1	5			\N
20251018_175606	2025/10/18 17:56	zh	31-45歲	男	景點	P-1蘭陽博物館	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-5"}	20	0	\N	\N			\N
20251019_093629	2025/10/19 9:36	zh	16-30歲	女	伴手禮	G-1【奕順軒】奶凍捲	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-4"}	20	0	\N	\N			\N
20251019_104057	2025/10/19 10:40	繁體中文	46-60歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"E-3":0.01,"E-11":0.01,"E-5":0.01}	{"E-3"}	20	0	1	4	niimbot-12.png		\N
20251019_104706	2025/10/19 10:47	繁體中文	31-45歲	女	景點	P-4頭城老街	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	2	5	niimbot-14.png		\N
20251019_105114	2025/10/19 10:51	繁體中文	15歲（含）以下	男	美食	E-4吉祥鮮肉小籠包	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-14","P-11"}	40	0	2	5	niimbot-25.png		\N
20251019_105359	2025/10/19 10:53	繁體中文	31-45歲	女	美食	E-10頂埔阿嬤蔥油餅	景點	boots	{"P-9":1.40,"P-12":1.26,"P-10":1.13,"P-6":1.10,"P-14":1.09}	{"P-9","P-14"}	40	0	1	5	niimbot-15.png		\N
20251019_111937	2025/10/19 11:19	繁體中文	46-60歲	男	景點	P-10草嶺古道	美食	sandals	{"G-8":0.45,"E-10":0.01,"P-3":0.01,"E-6":0.01,"E-9":0.01}	{"E-10","P-3"}	40	0	1	4	niimbot-11.png		\N
20251019_115154	2025/10/19 11:51	繁體中文	31-45歲	女	景點	P-4頭城老街	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-5"}	40	0	2	5	niimbot-25.png		\N
20251019_115958	2025/10/19 11:59	zh	46-60歲	女	景點	P-1蘭陽博物館	伴手禮	sport_shoe			0	1	\N	\N		{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	\N
20251019_120120	2025/10/19 12:01	繁體中文	16-30歲	女	景點	P-4頭城老街	美食	boots	{"G-8":0.45,"E-6":0.01,"P-4":0.01,"P-3":0.01,"P-7":0.01}	{"G-8","P-4","P-3"}	60	0	1	4	niimbot-21.png		\N
20251019_120429	2025/10/19 12:04	繁體中文	46-60歲	女	景點	P-4頭城老街	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4","G-5"}	40	0	1	4	niimbot-15.png		\N
20251019_120921	2025/10/19 12:09	繁體中文	46-60歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"P-4":0.01,"E-8":0.01,"E-4":0.01}	{"P-14","P-4","E-8"}	60	0	1	4	niimbot-12.png		\N
20251019_125454	2025/10/19 12:54	zh	46-60歲	女	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"G-9":0.01,"P-14":0.01,"E-8":0.01}	{"E-8"}	20	0	\N	\N			\N
20251019_130316	2025/10/19 13:03	繁體中文	16-30歲	女	景點	P-3烏石漁港	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8","G-4"}	40	0	1	5	niimbot-11.png		\N
20251019_131931	2025/10/19 13:19	繁體中文	31-45歲	男	景點	P-3烏石漁港	美食	sport_shoe	{"G-8":0.45,"E-4":0.01,"E-5":0.01,"P-3":0.01,"P-11":0.01}	{"E-5"}	20	0	1	5	niimbot-12.png		\N
20251019_134317	2025/10/19 13:43	繁體中文	16-30歲	男	景點	P-1蘭陽博物館	美食	boots	{"G-8":0.45,"E-2":0.01,"E-9":0.01,"E-7":0.01,"P-7":0.01}		0	0	1	5	niimbot-13.png		\N
20251019_134533	2025/10/19 13:45	繁體中文	16-30歲	男	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"G-9":0.01,"E-7":0.01,"E-4":0.01,"E-10":0.01}		0	0	1	5	niimbot-24.png		\N
20251019_141857	2025/10/19 14:18	繁體中文	15歲（含）以下	女	美食	E-5阿宗芋冰城	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-5"}	60	0	1	4	niimbot-13.png		\N
20251019_143259	2025/10/19 14:32	zh	16-30歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-4":0.01,"E-9":0.01,"E-2":0.01}		0	0	\N	\N			\N
20251019_143636	2025/10/19 14:36	繁體中文	31-45歲	男	美食	E-4吉祥鮮肉小籠包	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5	niimbot-15.png		\N
20251019_144147	2025/10/19 14:41	繁體中文	31-45歲	男	景點	P-2外澳海灘	美食	slippers	{"G-8":0.45,"P-7":0.01,"P-4":0.01,"E-2":0.01,"E-8":0.01}	{"P-4","E-8"}	40	0	1	5	niimbot-15.png		\N
20251019_144425	2025/10/19 14:44	繁體中文	31-45歲	男	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-6":0.01,"E-5":0.01,"E-4":0.01,"G-9":0.01}	{"E-4"}	20	0	1	4	niimbot-23.png		\N
20251019_145102	2025/10/19 14:51	繁體中文	15歲（含）以下	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-11":0.01,"E-3":0.01,"E-7":0.01,"G-9":0.01}	{"E-11","E-3"}	40	0	1	5	niimbot-13.png		\N
20251019_145322	2025/10/19 14:53	繁體中文	15歲（含）以下	男	美食	E-5阿宗芋冰城	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-6"}	20	0	1	5	niimbot-25.png		\N
20251019_151634	2025/10/19 15:16	繁體中文	60歲（含）以上	女	景點	P-8慶元宮	伴手禮	slippers	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	1	5	niimbot-22.png		\N
20251019_155425	2025/10/19 15:54	繁體中文	31-45歲	男	美食	E-8頭城車站阿伯炸彈蔥油餅	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-5"}	20	0	1	5	niimbot-23.png		\N
20251019_160013	2025/10/19 16:00	繁體中文	31-45歲	女	景點	P-4頭城老街	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8","G-4","G-5"}	60	0	1	5	niimbot-23.png		\N
20251019_160215	2025/10/19 16:02	繁體中文	46-60歲	女	景點	P-6北關海潮一線天	美食	sport_shoe	{"G-8":0.45,"E-2":0.01,"E-1":0.01,"E-7":0.01,"E-4":0.01}	{"E-2","E-1","E-4"}	60	0	1	5	niimbot-24.png		\N
20251019_160419	2025/10/19 16:04	繁體中文	16-30歲	女	美食	E-2品誼古早味小吃	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-10","P-14"}	60	0	1	5	niimbot-11.png		\N
20251019_164020	2025/10/19 16:40	繁體中文	16-30歲	男	景點	P-4頭城老街	美食	sandals	{"G-8":0.45,"E-8":0.01,"E-7":0.01,"P-3":0.01,"E-9":0.01}	{"E-8","E-7"}	40	0	2	3	niimbot-21.png		\N
20251019_164300	2025/10/19 16:43	繁體中文	31-45歲	女	景點	P-2外澳海灘	美食	boots	{"G-8":0.45,"E-2":0.01,"P-11":0.01,"P-4":0.01,"E-10":0.01}	{"E-2","P-4","E-10"}	60	0	1	5	niimbot-15.png		\N
20251022_101746	2025/10/22 10:17	繁體中文	15歲（含）以下	女	美食	E-1老街小吃（例：現烤香腸）	伴手禮	slippers	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4"}	20	0	1	5	welcome-01.png		\N
20251022_101913	2025/10/22 10:19	繁體中文	15歲（含）以下	女	景點	P-3烏石漁港	伴手禮	slippers	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5	niimbot-15.png		\N
20251022_104204	2025/10/22 10:42	zh	46-60歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-9":0.01,"E-7":0.01,"P-11":0.01}		0	0	\N	\N			\N
20251022_104531	2025/10/22 10:45	繁體中文	60歲（含）以上	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"E-3":0.01,"E-7":0.01,"E-8":0.01}		0	0	1	5	niimbot-12.png		\N
20251022_112455	2025/10/22 11:24	繁體中文	46-60歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-9":0.01,"P-14":0.01,"E-10":0.01,"E-3":0.01}	{"G-8"}	20	0	1	5	niimbot-21.png		\N
20251022_124658	2025/10/22 12:46	繁體中文	16-30歲	男	美食	E-3龍記牛肉麵	景點	slippers	{"P-14":1.69,"P-11":1.67,"P-7":1.61,"P-2":1.52,"P-12":1.46}	{"P-14","P-2"}	40	0	2	4	niimbot-25.png		\N
20251023_140930	2025/10/23 14:09	繁體中文	16-30歲	女	景點	P-4頭城老街	美食	boots	{"G-8":0.45,"P-11":0.01,"G-9":0.01,"E-9":0.01,"E-4":0.01}	{"P-11"}	20	0	1	5	niimbot-15.png		\N
20251023_145931	2025/10/23 14:59	zh	31-45歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-2":0.01,"P-4":0.01,"E-5":0.01,"E-9":0.01}	{"E-2"}	20	0	\N	\N			\N
20251023_150226	2025/10/23 15:02	繁體中文	46-60歲	男	伴手禮	G-1【奕順軒】奶凍捲	美食	sport_shoe	{"G-8":0.45,"E-6":0.01,"G-9":0.01,"P-3":0.01,"E-9":0.01}		0	0	1	4	welcome-01.png		\N
20251023_173849	2025/10/23 17:38	繁體中文	16-30歲	女	伴手禮	G-1【奕順軒】奶凍捲	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-7":0.01,"E-2":0.01,"P-7":0.01}	{"P-3"}	20	0	1	5	niimbot-21.png		\N
20251024_102609	2025/10/24 10:26	繁體中文	31-45歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"E-6":0.01,"P-11":0.01,"E-5":0.01}	{"E-6"}	20	0	1	5	niimbot-12.png		\N
20251024_162604	2025/10/24 16:26	zh	31-45歲	男	美食	E-5阿宗芋冰城	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-5"}	40	0	\N	\N			\N
20251025_091756	2025/10/25 9:17	zh	16-30歲	女	美食	E-5阿宗芋冰城	景點	boots	{"P-9":1.40,"P-12":1.26,"P-10":1.13,"P-6":1.10,"P-14":1.09}	{"P-10"}	20	0	\N	\N			\N
20251025_093309	2025/10/25 9:33	繁體中文	31-45歲	女	美食	E-11 春捲伯	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-4"}	20	0	1	4	niimbot-11.png		\N
20251025_094859	2025/10/25 9:48	繁體中文	16-30歲	女	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-4"}	20	0	1	5	niimbot-24.png		\N
20251025_102117	2025/10/25 10:21	繁體中文	31-45歲	女	景點	P-4頭城老街	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}		0	0	2	4	niimbot-15.png		\N
20251025_104511	2025/10/25 10:45	zh	16-30歲	男	美食	E-5阿宗芋冰城	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-4"}	20	0	\N	\N			\N
20251025_111610	2025/10/25 11:16	繁體中文	15歲（含）以下	女	美食	E-5阿宗芋冰城	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6"}	20	0	1	4	niimbot-21.png		\N
20251025_111926	2025/10/25 11:19	繁體中文	15歲（含）以下	男	美食	E-1老街小吃（例：現烤香腸）	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-11"}	20	0	1	3	niimbot-15.png		\N
20251025_121610	2025/10/25 12:16	繁體中文	31-45歲	女	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"E-1":0.01,"E-2":0.01,"P-7":0.01,"E-7":0.01}		0	0	1	4	niimbot-22.png		\N
20251025_134026	2025/10/25 13:40	繁體中文	15歲（含）以下	男	美食	E-7Hito石花凍	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9"}	20	0	1	5	niimbot-15.png		\N
20251025_141353	2025/10/25 14:13	繁體中文	60歲（含）以上	男	伴手禮	G-4【新協珍餅店】西點烘焙、麵包	美食	boots	{"G-8":0.45,"P-11":0.01,"E-7":0.01,"E-2":0.01,"P-3":0.01}		0	0	1	2	niimbot-21.png		\N
20251025_141529	2025/10/25 14:15	zh	60歲（含）以上	女	伴手禮	G-4【新協珍餅店】西點烘焙、麵包	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-11":0.01,"E-9":0.01,"E-5":0.01}		0	0	\N	\N			\N
20251025_141621	2025/10/25 14:16	zh	46-60歲	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-5":0.01,"E-8":0.01,"E-9":0.01,"E-4":0.01}		0	0	\N	\N			\N
20251025_144038	2025/10/25 14:40	繁體中文	16-30歲	女	美食	E-8頭城車站阿伯炸彈蔥油餅	伴手禮	sandals	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5	niimbot-22.png		\N
20251025_144310	2025/10/25 14:43	繁體中文	16-30歲	女	美食	E-11 春捲伯	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-2","P-11"}	40	0	1	5	niimbot-24.png		\N
20251025_145425	2025/10/25 14:54	繁體中文	15歲（含）以下	女	伴手禮	G-5【大溪漁港】新鮮漁貨	景點	sandals	{"P-2":1.72,"P-11":1.67,"P-6":1.50,"P-14":1.49,"P-12":1.46}	{"P-14"}	20	0	1	5	niimbot-15.png		\N
20251025_162536	2025/10/25 16:25	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-7":0.01,"G-9":0.01,"E-10":0.01,"E-6":0.01}	{"E-7"}	20	0	1	5	niimbot-15.png		\N
20251101_092527	2025/11/1 9:25	繁體中文	16-30歲	女	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-10":0.01,"E-3":0.01,"E-6":0.01}	{"G-8","E-10","E-3","E-6"}	80	0	1	5	niimbot-22.png		\N
20251101_100842	2025/11/1 10:08	繁體中文	16-30歲	女	伴手禮	G-1【奕順軒】奶凍捲	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-10"}	40	0	2	5	niimbot-13.png		\N
20251101_101335	2025/11/1 10:13	繁體中文	16-30歲	男	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"P-11":0.01,"E-6":0.01,"E-7":0.01}	{"G-8","P-3"}	40	0	2	5	niimbot-15.png		\N
20251101_101823	2025/11/1 10:18	繁體中文	31-45歲	男	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"P-3":0.01,"E-7":0.01,"E-10":0.01,"E-8":0.01}	{"G-8","P-3","E-7"}	60	0	1	4	niimbot-22.png		\N
20251101_102149	2025/11/1 10:21	繁體中文	16-30歲	男	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-14":0.01,"E-1":0.01,"E-11":0.01}	{"G-8","E-8","P-14","E-1","E-11"}	100	0	2	5	niimbot-13.png		\N
20251101_104626	2025/11/1 10:46	zh	31-45歲	男	美食	E-8頭城車站阿伯炸彈蔥油餅	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-12","P-10","P-14","P-4"}	100	0	\N	\N			\N
20251101_104930	2025/11/1 10:49	繁體中文	16-30歲	男	景點	P-4頭城老街	美食	boots	{"G-8":0.45,"E-6":0.01,"E-1":0.01,"E-7":0.01,"E-8":0.01}	{"G-8","E-6","E-1","E-8"}	80	0	1	4	welcome-01.png		\N
20251101_105502	2025/11/1 10:55	繁體中文	16-30歲	男	景點	P-2外澳海灘	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8","G-4","G-1"}	60	0	2	3	niimbot-25.png		\N
20251101_105704	2025/11/1 10:57	繁體中文	16-30歲	男	景點	P-3烏石漁港	美食	sport_shoe	{"G-8":0.45,"P-4":0.01,"E-2":0.01,"P-14":0.01,"E-11":0.01}	{"G-8","P-14","E-11"}	60	0	2	4	niimbot-23.png		\N
20251101_124313	2025/11/1 12:43	zh	16-30歲	男	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"E-4":0.01,"P-14":0.01,"E-7":0.01,"E-1":0.01}		0	0	\N	\N			\N
20251101_124401	2025/11/1 12:44	繁體中文	16-30歲	男	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"P-7":0.01,"E-10":0.01,"P-11":0.01}	{"P-14"}	20	0	1	5	niimbot-25.png		\N
20251101_130428	2025/11/1 13:04	繁體中文	31-45歲	男	景點	P-5龜山島賞鯨	美食	boots	{"G-8":0.45,"E-5":0.01,"G-9":0.01,"E-7":0.01,"E-11":0.01}	{"G-8","E-5","G-9","E-7","E-11"}	100	0	1	4	niimbot-21.png		\N
20251101_131754	2025/11/1 13:17	繁體中文	16-30歲	女	伴手禮	G-1【奕順軒】奶凍捲	美食	sport_shoe	{"G-8":0.45,"E-8":0.01,"P-7":0.01,"E-3":0.01,"E-6":0.01}	{"G-8","E-8","P-7","E-3"}	80	0	2	5	niimbot-24.png		\N
20251101_132045	2025/11/1 13:20	繁體中文	16-30歲	女	伴手禮	G-7【諾貝爾】奶凍捲	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-10","P-4"}	40	0	2	5	niimbot-25.png		\N
20251101_152925	2025/11/1 15:29	繁體中文	60歲（含）以上	男	景點	P-10草嶺古道	美食	boots	{"G-8":0.45,"E-4":0.01,"E-11":0.01,"P-11":0.01,"P-14":0.01}	{"E-4","E-11"}	40	0	2	3	niimbot-21.png		\N
20251101_160339	2025/11/1 16:03	繁體中文	16-30歲	女	美食	E-1老街小吃（例：現烤香腸）	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-5"}	60	0	1	5	niimbot-14.png		\N
20251105_152742	2025/11/5 15:27	繁體中文	31-45歲	男	景點	P-4頭城老街	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-8":0.01,"E-1":0.01,"E-11":0.01}	{"E-8"}	20	0	1	5	niimbot-13.png		\N
20251107_150057	2025/11/7 15:00	繁體中文	31-45歲	女	伴手禮	G-1【奕順軒】奶凍捲	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}		0	0	1	5	niimbot-22.png		\N
20251107_150553	2025/11/7 15:05	繁體中文	31-45歲	女	美食	E-2品誼古早味小吃	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-1"}	20	0	1	5	niimbot-15.png		\N
20251108_163326	2025/11/8 16:33	繁體中文	60歲（含）以上	男	景點	P-5龜山島賞鯨	美食	sport_shoe	{"G-8":0.45,"G-9":0.01,"P-14":0.01,"E-10":0.01,"E-2":0.01}	{"P-14"}	20	0	1	4	niimbot-22.png		\N
20251108_180152	2025/11/8 18:01	zh	46-60歲	女	美食	E-2品誼古早味小吃	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}		0	0	\N	\N			\N
20251120_193937	2025/11/20 19:39	繁體中文	46-60歲	男	景點	P-1蘭陽博物館	美食	sport_shoe	{"G-8":0.45,"P-14":0.01,"E-2":0.01,"E-1":0.01,"E-3":0.01}	{"G-8","E-2","E-1"}	60	0	2	5	niimbot-11.png		\N
20251120_194305	2025/11/20 19:43	繁體中文	60歲（含）以上	女	景點	P-2外澳海灘	美食	sport_shoe	{"G-8":0.45,"P-11":0.01,"E-6":0.01,"E-2":0.01,"E-10":0.01}	{"P-11","E-10"}	40	0	1	5	niimbot-23.png		\N
20251120_194807	2025/11/20 19:48	繁體中文	60歲（含）以上	男	景點	P-1蘭陽博物館	伴手禮	boots	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-8","G-1"}	40	0	2	5	niimbot-22.png		\N
20251120_195014	2025/11/20 19:50	繁體中文	60歲（含）以上	男	景點	P-4頭城老街	美食	slippers	{"G-8":0.45,"E-11":0.01,"E-2":0.01,"P-3":0.01,"E-8":0.01}	{"E-11","P-3","E-8"}	60	0	1	5	niimbot-22.png		\N
20251120_195200	2025/11/20 19:52	繁體中文	46-60歲	女	伴手禮	G-1【奕順軒】奶凍捲	美食	sport_shoe	{"G-8":0.45,"E-9":0.01,"P-14":0.01,"P-3":0.01,"P-7":0.01}		0	0	1	5	niimbot-14.png		\N
20251121_192144	2025/11/21 19:21	繁體中文	60歲（含）以上	男	景點	P-1蘭陽博物館	美食	boots	{"G-8":0.45,"E-5":0.01,"E-1":0.01,"E-7":0.01,"E-11":0.01}	{"E-5"}	20	0	1	5	welcome-01.png		\N
20251121_193557	2025/11/21 19:35	繁體中文	60歲（含）以上	男	景點	P-1蘭陽博物館	美食	boots	{"G-8":0.45,"P-11":0.01,"E-3":0.01,"E-11":0.01,"G-9":0.01}	{"G-8","E-11"}	40	0	1	5	niimbot-15.png		\N
20251121_201217	2025/11/21 20:12	繁體中文	46-60歲	女	美食	E-5阿宗芋冰城	景點	boots	{"P-9":1.40,"P-12":1.26,"P-10":1.13,"P-6":1.10,"P-14":1.09}	{"P-10"}	20	0	1	4	niimbot-25.png		\N
20251121_201436	2025/11/21 20:14	繁體中文	16-30歲	女	美食	E-8頭城車站阿伯炸彈蔥油餅	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-4","G-1"}	40	0	1	4	niimbot-12.png		\N
20251121_201920	2025/11/21 20:19	繁體中文	46-60歲	女	伴手禮	G-3【三合餅舖】特色宜蘭蔥燒餅	景點	sport_shoe	{"P-9":1.60,"P-12":1.46,"P-10":1.33,"P-14":1.09,"P-4":1.08}	{"P-9","P-14","P-4"}	60	0	1	5	niimbot-21.png		\N
20251121_211435	2025/11/21 21:14	繁體中文	46-60歲	男	美食	E-1老街小吃（例：現烤香腸）	伴手禮	sport_shoe	{"G-6":0.98,"G-8":0.79,"G-4":0.76,"G-5":0.45,"G-1":0.13}	{"G-6","G-8","G-5"}	60	0	1	5	niimbot-13.png		\N
20251121_220533	2025/11/21 22:05	繁體中文	31-45歲	女	景點	P-1蘭陽博物館	美食	boots	{"G-8":0.45,"P-3":0.01,"P-7":0.01,"E-5":0.01,"E-6":0.01}	{"P-7","E-5"}	40	0	1	5	niimbot-23.png		\N
20250921_114049	2025/9/21 11:40	zh	16-30歲	女	景點	P-6北關海潮一線天	伴手禮	boots	{"G-7":0.98,"G-10":0.70,"G-1":0.09}	{"G-10"}	33.333332	0	\N	\N			\N
20260128_194820	2026-01-28 19:49:04	zh	15歲（含）以下	男	\N	\N	\N	\N	{"E-11": 1.07, "E-12": 1.06, "E-17": 1.03, "E-9": 1.0, "E-10": 0.93}	["E-10", "E-11"]	40	0	\N	\N	\N	\N	\N
20260128_195003	2026-01-28 19:50:48	zh	15歲（含）以下	男	\N	\N	\N	\N	{"E-12": 1.06, "E-15": 1.04, "E-17": 1.03, "E-1": 1.02, "E-9": 1.0}	["E-17", "E-15"]	40	0	\N	\N	\N	\N	\N
20260202_190613	2026-02-02 19:08:46	zh	16-30歲	女	\N	\N	\N	\N	{"E-4": 1.08, "E-13": 1.01, "E-9": 1.0, "E-8": 0.97, "E-10": 0.93}	["E-9", "E-13", "E-8"]	60	0	\N	\N	\N	\N	\N
20260202_192010	2026-02-02 19:20:42	繁體中文	15歲（含）以下	男	\N	\N	\N	\N	{"E-11": 1.07, "E-12": 1.06, "E-17": 1.03, "E-9": 1.0, "E-2": 0.92}	["E-9", "E-17", "E-2"]	60	0	1	5	niimbot-11.png	\N	\N
20260203_112715	2026-02-03 11:28:24	繁體中文	16-30歲	女	美食	E-6 老張早餐吧	伴手禮	high_heels	{"G-4": 1.08, "G-3": 1.06, "G-7": 1.01, "G-8": 0.97, "G-10": 0.93}	["G-3", "G-7", "G-4"]	60	0	2	4	niimbot-12.png	\N	\N
20260202_192857	2026-02-02 19:31:50	繁體中文	15歲（含）以下	男	景點	\N	美食	high_heels	{"E-4": 1.08, "E-11": 1.07, "E-15": 1.04, "E-1": 1.02, "E-16": 0.93}	["E-11", "E-15"]	40	0	1	5	niimbot-11.png	\N	\N
20260205_144227	2026-02-05 14:44:28	繁體中文	15 years old or below	Male	place	P-8 慶元宮	eat	sandals	{"E-3": 1.0600360956645165, "E-7": 1.0102272322533827, "E-8": 0.9747005926125134, "E-16": 0.931256602969341, "E-2": 0.9168012715007603}	["E-3"]	20	0	1	1	welcome-01.png	\N	\N
20260202_195121	2026-02-02 19:55:00	繁體中文	15歲（含）以下	男	景點	P-4 頭城老街	美食	sandals	{"E-12": 1.06, "E-15": 1.04, "E-1": 1.02, "E-13": 1.01, "E-10": 0.93}	["E-1", "E-13"]	40	0	1	5	niimbot-11.png	\N	\N
20260203_112848	2026-02-03 11:35:33	繁體中文	15歲（含）以下	男	伴手禮	G-4 【新協珍餅店】西點烘焙、麵包	景點	sandals	{"P-3": 1.06, "P-9": 1.0, "P-8": 0.97, "P-2": 0.92, "P-6": 0.9}	["P-6", "P-9", "P-2"]	60	0	2	5	niimbot-12.png	\N	\N
20260203_120425	2026-02-03 12:04:55	繁體中文	15歲（含）以下	男	景點	P-8 慶元宮	美食	sandals	{}	[]	0	1	\N	\N	\N	\N	\N
20260203_121205	2026-02-03 12:12:37	繁體中文	15歲（含）以下	男	景點	P-5 龜山島賞鯨	伴手禮	high_heels	{}	[]	0	1	\N	\N	\N	\N	\N
20260203_121840	2026-02-03 12:19:13	繁體中文	15歲（含）以下	男	美食	E-7 Hito石花凍	景點	slippers	{}	[]	0	1	\N	\N	\N	\N	\N
20260203_125615	2026-02-03 13:33:34	繁體中文	15歲（含）以下	男	景點	P-10 草嶺古道	美食	high_heels	{"E-14": 1.09, "E-3": 1.06, "E-13": 1.01, "E-8": 0.97, "E-2": 0.92}	["E-3", "E-13"]	40	0	\N	\N	\N	\N	\N
20260205_142736	2026-02-05 14:28:42	繁體中文	15 years old or below	Male	place	P-4 頭城老街	eat	sandals	{"E-12": 1.0622233548343158, "E-1": 1.0243773663803546, "E-13": 1.0052824558048974, "E-8": 0.9747005926125134, "E-16": 0.931256602969341}	["E-1", "E-13"]	40	0	\N	\N	\N	\N	\N
20260205_145156	2026-02-05 14:52:22	繁體中文	15 years old or below	Male	place	P-4 頭城老街	eat	sandals	{"E-3": 1.0600360956645165, "E-15": 1.0374007473801636, "E-13": 1.0052824558048974, "E-9": 0.9986559073996569, "E-2": 0.9168012715007603}	["E-3", "E-15", "E-9", "E-2"]	80	0	\N	\N	\N	\N	\N
20260205_145332	2026-02-05 14:55:35	繁體中文	15 years old or below	Male	place	P-7 金車伯朗咖啡城堡	eat	sandals	{"E-4": 1.0752451773112972, "E-17": 1.0295000627266, "E-13": 1.0052824558048974, "E-10": 0.9317564857941136, "E-16": 0.931256602969341}	["E-13"]	20	0	\N	\N	\N	\N	\N
20260205_150345	2026-02-05 15:04:13	繁體中文	15 years old or below	Male	place	P-8 慶元宮	eat	sandals	{"E-14": 1.0901792965574426, "E-3": 1.0600360956645165, "E-9": 0.9986559073996569, "E-10": 0.9317564857941136, "E-16": 0.931256602969341}	["E-14", "E-3"]	40	0	1	1	niimbot-24.png	\N	\N
20260205_153636	2026-02-05 15:37:18	繁體中文	15 years old or below	Male	place	P-2 外澳海灘	eat	sandals	{"E-4": 1.0752451773112972, "E-12": 1.0622233548343158, "E-17": 1.0295000627266, "E-13": 1.0052824558048974, "E-8": 0.9747005926125134}	["E-8"]	20	0	\N	\N	\N	\N	\N
20260205_153857	2026-02-05 15:39:31	繁體中文	15 years old or below	Male	place	P-1 蘭陽博物館	eat	high_heels	{"E-11": 1.0703518379890262, "E-15": 1.0374007473801636, "E-1": 1.0243773663803546, "E-8": 0.9747005926125134, "E-16": 0.931256602969341}	["E-1"]	20	0	\N	\N	\N	\N	\N
20260206_011512	2026-02-06 01:16:24	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	sport_shoe	{"E-1": 0.01, "E-7": 0.01, "E-14": 0.01, "E-11": 0.01, "E-4": 0.01}	["E-1", "E-7", "E-14"]	60	0	\N	\N	\N	\N	\N
20260205_155758	2026-02-05 15:58:29	繁體中文	15 years old or below	Male	place	P-1 蘭陽博物館	eat	sandals	{"E-14": 1.0901792965574426, "E-4": 1.0752451773112972, "E-17": 1.0295000627266, "E-1": 1.0243773663803546, "E-13": 1.0052824558048974}	["E-14", "E-17"]	40	0	1	5	welcome-01.png	\N	\N
20260205_160522	2026-02-05 16:05:55	繁體中文	15 years old or below	Male	place	P-1 蘭陽博物館	eat	slippers	{"E-14": 1.0901792965574426, "E-11": 1.0703518379890262, "E-3": 1.0600360956645165, "E-17": 1.0295000627266, "E-9": 0.9986559073996569}	["E-14", "E-11"]	40	0	1	5	welcome-01.png	\N	\N
20260206_011745	2026-02-06 01:19:35	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	sport_shoe	{"E-8": 0.01, "E-1": 0.01, "E-9": 0.01, "E-17": 0.01, "E-10": 0.01}	["E-8", "E-1", "E-9"]	60	0	\N	\N	\N	\N	\N
20260206_012113	2026-02-06 01:22:22	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sandals	{"E-2": 0.01, "E-17": 0.01, "E-11": 0.01, "E-4": 0.01, "E-12": 0.01}	["E-2", "E-17", "E-11"]	60	0	\N	\N	\N	\N	\N
20260206_012509	2026-02-06 01:25:49	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	sandals	{"E-12": 0.01, "E-17": 0.01, "E-13": 0.01, "E-11": 0.01, "E-9": 0.01}	["E-12", "E-17", "E-13"]	60	0	\N	\N	\N	\N	\N
20260206_012829	2026-02-06 01:31:11	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sandals	{"E-9": 0.01, "E-13": 0.01, "E-4": 0.01, "E-6": 0.01, "E-16": 0.01}	["E-9", "E-13", "E-4"]	60	0	\N	\N	\N	\N	\N
20260205_203758	2026-02-05 20:40:30	English	15 years old or below	Male	place	P-8 Qingyuan Temple	eat	sandals	{"E-10": 0.01, "E-2": 0.01, "E-4": 0.01, "E-17": 0.01, "E-9": 0.01}	["E-2", "E-4"]	40	0	1	5	niimbot-25.png	\N	\N
20260205_222843	2026-02-05 22:31:34	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	high_heels	{"E-16": 0.01, "E-10": 0.01, "E-6": 0.01, "E-14": 0.01, "E-17": 0.01}	["E-16", "E-10"]	40	0	\N	\N	\N	\N	\N
20260205_224119	2026-02-05 22:41:45	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	slippers	{"E-7": 0.01, "E-4": 0.01, "E-3": 0.01, "E-17": 0.01, "E-5": 0.01}	["E-4"]	20	0	\N	\N	\N	\N	\N
20260205_225842	2026-02-05 22:59:11	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	high_heels	{"E-2": 0.01, "E-15": 0.01, "E-4": 0.01, "E-7": 0.01, "E-13": 0.01}	["E-2", "E-15"]	40	0	\N	\N	\N	\N	\N
20260205_230939	2026-02-05 23:10:11	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	high_heels	{"E-6": 0.01, "E-1": 0.01, "E-5": 0.01, "E-12": 0.01, "E-14": 0.01}	["E-6", "E-1"]	40	0	\N	\N	\N	\N	\N
20260205_231511	2026-02-05 23:15:36	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	high_heels	{"E-12": 0.01, "E-15": 0.01, "E-11": 0.01, "E-17": 0.01, "E-14": 0.01}	["E-12", "E-15"]	40	0	\N	\N	\N	\N	\N
20260205_232819	2026-02-05 23:28:48	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	sandals	{"E-13": 0.01, "E-14": 0.01, "E-9": 0.01, "E-4": 0.01, "E-6": 0.01}	["E-14", "E-4"]	40	0	\N	\N	\N	\N	\N
20260205_235112	2026-02-05 23:51:50	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	slippers	{"E-1": 0.01, "E-16": 0.01, "E-14": 0.01, "E-10": 0.01, "E-17": 0.01}	["E-16", "E-14"]	40	0	\N	\N	\N	\N	\N
20260205_235851	2026-02-05 23:59:15	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	high_heels	{"E-3": 0.01, "E-6": 0.01, "E-1": 0.01, "E-12": 0.01, "E-4": 0.01}	["E-1"]	20	0	\N	\N	\N	\N	\N
20260206_000039	2026-02-06 00:01:25	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	slippers	{"E-15": 0.01, "E-2": 0.01, "E-14": 0.01, "E-4": 0.01, "E-6": 0.01}	["E-15", "E-2", "E-14"]	60	0	\N	\N	\N	\N	\N
20260206_004537	2026-02-06 00:51:29	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	high_heels	{"E-14": 0.01, "E-9": 0.01, "E-3": 0.01, "E-17": 0.01, "E-10": 0.01}	["E-14", "E-9", "E-3", "E-17"]	80	0	\N	\N	\N	\N	\N
20260206_005532	2026-02-06 00:56:35	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	high_heels	{"E-11": 0.01, "E-8": 0.01, "E-16": 0.01, "E-5": 0.01, "E-1": 0.01}	["E-11", "E-8", "E-16"]	60	0	\N	\N	\N	\N	\N
20260206_005945	2026-02-06 01:01:03	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sandals	{"E-12": 0.01, "E-16": 0.01, "E-13": 0.01, "E-7": 0.01, "E-14": 0.01}	["E-12", "E-16", "E-13"]	60	0	\N	\N	\N	\N	\N
20260206_010243	2026-02-06 01:03:38	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	sandals	{"E-14": 0.01, "E-7": 0.01, "E-1": 0.01, "E-3": 0.01, "E-11": 0.01}	["E-14", "E-7", "E-1"]	60	0	\N	\N	\N	\N	\N
20260206_010836	2026-02-06 01:09:37	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sport_shoe	{"E-2": 0.01, "E-15": 0.01, "E-12": 0.01, "E-11": 0.01, "E-4": 0.01}	["E-2", "E-15", "E-12"]	60	0	\N	\N	\N	\N	\N
20260206_011103	2026-02-06 01:11:56	English	15 years old or below	Male	place	P-5 Guishan Island Whale Watching	eat	sport_shoe	{"E-8": 0.01, "E-2": 0.01, "E-15": 0.01, "E-11": 0.01, "E-1": 0.01}	["E-8", "E-2", "E-15"]	60	0	\N	\N	\N	\N	\N
20260206_013241	2026-02-06 01:33:37	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	sandals	{"E-4": 0.01, "E-13": 0.01, "E-9": 0.01, "E-5": 0.01, "E-8": 0.01}	["E-4", "E-13", "E-9"]	60	0	\N	\N	\N	\N	\N
20260206_013552	2026-02-06 01:36:35	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	sandals	{"E-10": 0.01, "E-14": 0.01, "E-9": 0.01, "E-16": 0.01, "E-8": 0.01}	["E-10", "E-14", "E-9"]	60	0	\N	\N	\N	\N	\N
20260206_013958	2026-02-06 01:40:40	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	sandals	{"E-7": 0.01, "E-5": 0.01, "E-12": 0.01, "E-9": 0.01, "E-16": 0.01}	["E-7", "E-5", "E-12"]	60	0	\N	\N	\N	\N	\N
20260206_015658	2026-02-06 01:57:39	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sandals	{"E-14": 0.01, "E-12": 0.01, "E-13": 0.01, "E-3": 0.01, "E-15": 0.01}	["E-14", "E-12", "E-13"]	60	0	\N	\N	\N	\N	\N
20260206_020923	2026-02-06 02:10:07	English	15 years old or below	Male	place	P-7 Mr. Brown Café Castle	eat	sandals	{"E-16": 0.01, "E-4": 0.01, "E-11": 0.01, "E-5": 0.01, "E-15": 0.01}	["E-16", "E-4", "E-11"]	60	0	\N	\N	\N	\N	\N
20260206_021500	2026-02-06 02:15:42	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sport_shoe	{"E-6": 0.01, "E-3": 0.01, "E-9": 0.01, "E-2": 0.01, "E-15": 0.01}	["E-6", "E-3", "E-9"]	60	0	\N	\N	\N	\N	\N
20260206_021721	2026-02-06 02:18:01	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	slippers	{"E-15": 0.01, "E-13": 0.01, "E-3": 0.01, "E-10": 0.01, "E-6": 0.01}	["E-15", "E-13", "E-3"]	60	0	\N	\N	\N	\N	\N
20260206_023240	2026-02-06 02:33:47	English	15 years old or below	Male	place	P-1 Lanyang Museum	eat	high_heels	{"E-5": 0.01, "E-4": 0.01, "E-7": 0.01, "E-3": 0.01, "E-11": 0.01}	["E-5", "E-4", "E-7"]	60	0	\N	\N	\N	\N	\N
20260206_113214	2026-02-06 11:34:01	English	15 years old or below	Male	place	P-4 Toucheng Old Street	eat	sandals	{"E-11": 0.01, "E-7": 0.01, "E-9": 0.01, "E-8": 0.01, "E-5": 0.01}	["E-11", "E-7", "E-9"]	60	0	\N	\N	\N	\N	\N
20260206_113948	2026-02-06 11:40:23	English	15 years old or below	Male	place	P-4 Toucheng Old Street	gift	sandals	{"G-9": 0.01, "G-6": 0.01, "G-7": 0.01, "G-2": 0.01, "G-5": 0.01}	["G-9", "G-6", "G-2"]	60	0	\N	\N	\N	\N	\N
20260206_115435	2026-02-06 11:55:18	English	15歲（含）以下	男	景點	P-2外澳海灘	美食	高跟鞋	{"E-17": 0.01, "E-2": 0.01, "E-15": 0.01, "E-1": 0.01, "E-13": 0.01}	["E-17", "E-2", "E-15"]	60	0	\N	\N	\N	\N	\N
20260206_120630	2026-02-06 12:07:07	English	15歲（含）以下	男	景點	P-4頭城老街	美食	slippers	{"E-11": 0.01, "E-12": 0.01, "E-10": 0.01, "E-9": 0.01, "E-15": 0.01}	["E-11", "E-12", "E-10"]	60	0	\N	\N	\N	\N	\N
20260206_125205	2026-02-06 12:53:42	日本語	15歲（含）以下	男	景點	P-1蘭陽博物館	美食	slippers	{"E-9": 0.01, "E-3": 0.01, "E-8": 0.01, "E-6": 0.01, "E-14": 0.01}	["E-9", "E-3", "E-8"]	60	0	1	5	niimbot-12.png	\N	\N
20260207_171453	2026-02-07 17:20:06	日本語	15歲（含）以下	男	景點	P-4頭城老街	美食	サンダル	{"E-8": 0.01, "E-1": 0.01, "E-12": 0.01, "E-9": 0.01, "E-5": 0.01}	["E-1", "E-12"]	40	0	1	5	welcome-01.png	\N	\N
20260207_172059	2026-02-07 17:22:03	English	15歲（含）以下	男	景點	P-7金車伯朗咖啡城堡	美食	not_listed	{"E-12": 0.01, "E-7": 0.01, "E-8": 0.01, "E-1": 0.01, "E-11": 0.01}	["E-8"]	20	0	1	2	welcome-01.png	\N	\N
20260330_125317	2026-03-30 12:54:03	日本語	15歲（含）以下	男	景點	P-5龜山島賞鯨	伴手禮	sport_shoe	{"G-3": 0.01, "G-8": 0.01, "G-5": 0.01, "G-4": 0.01, "G-7": 0.01}	["G-3", "G-8", "G-4"]	60	0	1	5	welcome-01.png	\N	\N
20260330_125425	2026-03-30 12:55:11	繁體中文	15歲（含）以下	男	景點	P-4頭城老街	美食	sandals	{"E-11": 1.0703518379890262, "E-12": 1.0622233548343158, "E-3": 1.0600360956645165, "E-15": 1.0374007473801636, "E-13": 1.0052824558048974}	["E-11", "E-15"]	40	0	1	5	welcome-01.png	\N	\N
20260330_125524	2026-03-30 12:57:19	English	15歲（含）以下	男	景點	P-5龜山島賞鯨	美食	high_heels	{"E-4": 0.01, "E-7": 0.01, "E-11": 0.01, "E-6": 0.01, "E-3": 0.01}	["E-4", "E-7"]	40	0	1	5	welcome-01.png	\N	\N
20260330_125730	2026-03-30 12:58:37	日本語	15歲（含）以下	男	景點	P-5龜山島賞鯨	美食	sandals	{"E-12": 0.01, "E-6": 0.01, "E-4": 0.01, "E-11": 0.01, "E-1": 0.01}	["E-6", "E-4"]	40	0	1	5	welcome-01.png	\N	\N
\.


--
-- Data for Name: user_rec; Type: TABLE DATA; Schema: public; Owner: trip
--

COPY public.user_rec (user_id, place_code, score, is_checked) FROM stdin;
20250921_113821	P-9	1.6	t
20250921_113821	P-12	1.46	f
20250921_113821	P-10	1.33	t
20250921_114049	G-7	0.98	f
20250921_114049	G-10	0.7	t
20250921_114049	G-1	0.09	f
20250921_115147	P-9	1.6	f
20250921_115147	P-12	1.46	f
20250921_115147	P-10	1.33	t
20250921_120010	P-9	1.6	f
20250921_120010	P-12	1.46	f
20250921_120010	P-10	1.33	f
20250921_120158	G-8	0.45	f
20250921_120158	P-11	0.01	f
20250921_120158	G-9	0.01	t
20250921_120347	G-8	0.45	t
20250921_120347	P-11	0.01	t
20250921_120347	E-6	0.01	t
20250921_120604	G-7	0.98	t
20250921_120604	G-10	0.7	t
20250921_120604	G-1	0.09	t
20250921_120931	P-9	1.6	t
20250921_120931	P-12	1.46	f
20250921_120931	P-10	1.33	t
20250922_110517	G-7	0.98	f
20250922_110517	G-10	0.7	t
20250922_110517	G-1	0.09	f
20250922_110827	P-9	1.6	f
20250922_110827	P-12	1.46	f
20250922_110827	P-10	1.33	t
20250922_111032	G-8	0.45	f
20250922_111032	P-14	0.01	f
20250922_111032	E-10	0.01	t
20250922_111325	G-8	0.45	f
20250922_111325	E-1	0.01	t
20250922_111325	P-7	0.01	f
20250922_111425	P-14	1.69	t
20250922_111425	P-11	1.67	f
20250922_111425	P-7	1.61	f
20250922_111538	G-8	0.45	f
20250922_111538	E-7	0.01	t
20250922_111538	E-4	0.01	f
20250922_111648	G-8	0.45	f
20250922_111648	E-11	0.01	t
20250922_111648	E-4	0.01	f
20250922_111840	P-9	1.6	f
20250922_111840	P-12	1.46	t
20250922_111840	P-10	1.33	f
20250925_161529	G-8	0.45	f
20250925_161529	E-11	0.01	f
20250925_161529	E-7	0.01	f
20250927_134114	G-8	0.45	f
20250927_134114	E-7	0.01	f
20250927_134114	E-8	0.01	t
20250927_134413	G-7	0.98	t
20250927_134413	G-10	0.7	f
20250927_134413	G-1	0.09	f
20250927_134627	G-8	0.45	f
20250927_134627	E-4	0.01	t
20250927_134627	E-11	0.01	f
20250927_134902	G-8	0.45	f
20250927_134902	G-9	0.01	f
20250927_134902	E-1	0.01	t
20250927_135229	G-7	0.98	f
20250927_135229	G-10	0.7	f
20250927_135229	G-1	0.09	t
20250927_135736	G-7	0.98	f
20250927_135736	G-10	0.7	f
20250927_135736	G-1	0.09	t
20250927_135902	G-7	0.98	t
20250927_135902	G-10	0.7	f
20250927_135902	G-1	0.09	f
20250927_140014	P-9	1.6	f
20250927_140014	P-12	1.46	t
20250927_140014	P-10	1.33	f
20250927_140200	G-7	0.98	f
20250927_140200	G-10	0.7	t
20250927_140200	G-1	0.09	f
20250927_140339	G-8	0.45	f
20250927_140339	E-11	0.01	f
20250927_140339	P-3	0.01	t
20250927_140523	G-7	0.98	f
20250927_140523	G-10	0.7	f
20250927_140523	G-1	0.09	t
20250927_145608	G-8	0.45	f
20250927_145608	E-5	0.01	t
20250927_145608	E-4	0.01	t
20250927_151114	G-7	0.98	f
20250927_151114	G-10	0.7	f
20250927_151114	G-1	0.09	t
20251002_130225	G-8	0.45	f
20251002_130225	E-10	0.01	t
20251002_130225	P-7	0.01	t
20251008_091742	G-8	0.45	f
20251008_091742	E-5	0.01	f
20251008_091742	E-10	0.01	t
20251008_100021	P-9	1.6	t
20251008_100021	P-12	1.46	f
20251008_100021	P-10	1.33	f
20251008_103941	P-9	1.6	f
20251008_103941	P-12	1.46	f
20251008_103941	P-10	1.33	t
20251008_172507	G-8	0.45	t
20251008_172507	P-7	0.01	t
20251008_172507	P-14	0.01	f
20251013_093306	G-7	0.98	f
20251013_093306	G-10	0.7	t
20251013_093306	G-1	0.09	f
20251013_093429	G-8	0.45	t
20251013_093429	P-14	0.01	f
20251013_093429	E-11	0.01	f
20251013_093519	G-8	0.45	t
20251013_093519	E-8	0.01	t
20251013_093519	E-3	0.01	f
20251013_124439	G-8	0.45	f
20251013_124439	P-11	0.01	t
20251013_124439	E-2	0.01	t
20251013_124439	E-11	0.01	t
20251013_124439	P-14	0.01	f
20251017_141846	P-9	1.6	t
20251017_141846	P-12	1.46	f
20251017_141846	P-10	1.33	f
20251017_141846	P-14	1.09	f
20251017_141846	P-4	1.08	f
20251017_160206	G-8	0.45	f
20251017_160206	G-9	0.01	f
20251017_160206	E-3	0.01	t
20251017_160206	E-5	0.01	f
20251017_160206	E-1	0.01	f
20251018_100045	G-8	0.45	t
20251018_100045	E-4	0.01	f
20251018_100045	E-9	0.01	f
20251018_100045	P-11	0.01	f
20251018_100045	E-1	0.01	f
20251018_100309	G-8	0.45	t
20251018_100309	P-11	0.01	f
20251018_100309	E-7	0.01	f
20251018_100309	E-3	0.01	f
20251018_100309	E-5	0.01	f
20251018_101338	G-8	0.45	t
20251018_101338	P-3	0.01	t
20251018_101338	E-6	0.01	f
20251018_101338	P-4	0.01	f
20251018_101338	E-10	0.01	f
20251018_103429	G-6	0.98	t
20251018_103429	G-8	0.79	t
20251018_103429	G-4	0.76	f
20251018_103429	G-5	0.45	f
20251018_103429	G-1	0.13	t
20251018_110014	P-9	1.6	f
20251018_110014	P-12	1.46	f
20251018_110014	P-10	1.33	f
20251018_110014	P-14	1.09	f
20251018_110014	P-4	1.08	t
20251018_110218	G-6	0.98	t
20251018_110218	G-8	0.79	f
20251018_110218	G-4	0.76	f
20251018_110218	G-5	0.45	t
20251018_110218	G-1	0.13	f
20251018_110440	P-9	1.6	f
20251018_110440	P-12	1.46	f
20251018_110440	P-10	1.33	f
20251018_110440	P-14	1.09	t
20251018_110440	P-4	1.08	f
20251018_110633	G-8	0.45	t
20251018_110633	E-1	0.01	t
20251018_110633	P-3	0.01	t
20251018_110633	P-14	0.01	t
20251018_110633	P-11	0.01	t
20251018_110859	G-8	0.45	t
20251018_110859	E-6	0.01	f
20251018_110859	E-10	0.01	f
20251018_110859	E-4	0.01	t
20251018_110859	E-8	0.01	t
20251018_111226	G-6	0.98	t
20251018_111226	G-8	0.79	f
20251018_111226	G-4	0.76	t
20251018_111226	G-5	0.45	f
20251018_111226	G-1	0.13	f
20251018_111344	G-6	0.98	f
20251018_111344	G-8	0.79	t
20251018_111344	G-4	0.76	f
20251018_111344	G-5	0.45	f
20251018_111344	G-1	0.13	f
20251018_111848	G-6	0.98	f
20251018_111848	G-8	0.79	f
20251018_111848	G-4	0.76	t
20251018_111848	G-5	0.45	f
20251018_111848	G-1	0.13	t
20251018_112443	G-8	0.45	t
20251018_112443	E-8	0.01	t
20251018_112443	P-4	0.01	t
20251018_112443	P-7	0.01	f
20251018_112443	P-14	0.01	f
20251018_112913	G-6	0.98	f
20251018_112913	G-8	0.79	f
20251018_112913	G-4	0.76	t
20251018_112913	G-5	0.45	f
20251018_112913	G-1	0.13	t
20251018_113101	G-8	0.45	f
20251018_113101	P-7	0.01	f
20251018_113101	E-8	0.01	t
20251018_113101	P-3	0.01	f
20251018_113101	E-1	0.01	t
20251018_113736	P-9	1.6	f
20251018_113736	P-12	1.46	f
20251018_113736	P-10	1.33	f
20251018_113736	P-14	1.09	t
20251018_113736	P-4	1.08	f
20251018_114828	P-9	1.6	f
20251018_114828	P-12	1.46	f
20251018_114828	P-10	1.33	f
20251018_114828	P-14	1.09	t
20251018_114828	P-4	1.08	t
20251018_115033	G-8	0.45	f
20251018_115033	E-6	0.01	f
20251018_115033	E-3	0.01	f
20251018_115033	E-5	0.01	f
20251018_115033	P-4	0.01	t
20251018_115545	G-8	0.45	f
20251018_115545	E-8	0.01	f
20251018_115545	P-3	0.01	f
20251018_115545	P-7	0.01	f
20251018_115545	E-5	0.01	t
20251018_120611	P-9	1.6	f
20251018_120611	P-12	1.46	t
20251018_120611	P-10	1.33	f
20251018_120611	P-14	1.09	f
20251018_120611	P-4	1.08	f
20251018_121539	G-6	0.98	f
20251018_121539	G-8	0.79	f
20251018_121539	G-4	0.76	f
20251018_121539	G-5	0.45	t
20251018_121539	G-1	0.13	f
20251018_122012	G-8	0.45	f
20251018_122012	E-5	0.01	f
20251018_122012	P-3	0.01	t
20251018_122012	G-9	0.01	f
20251018_122012	E-8	0.01	f
20251018_122241	G-8	0.45	f
20251018_122241	E-9	0.01	t
20251018_122241	E-11	0.01	f
20251018_122241	E-4	0.01	f
20251018_122241	P-3	0.01	f
20251018_122756	G-8	0.45	f
20251018_122756	P-4	0.01	t
20251018_122756	E-6	0.01	f
20251018_122756	G-9	0.01	f
20251018_122756	E-1	0.01	f
20251018_124600	G-8	0.45	t
20251018_124600	E-8	0.01	t
20251018_124600	P-4	0.01	f
20251018_124600	P-7	0.01	f
20251018_124600	P-14	0.01	f
20251018_125722	P-9	1.6	t
20251018_125722	P-12	1.46	f
20251018_125722	P-10	1.33	f
20251018_125722	P-14	1.09	t
20251018_125722	P-4	1.08	t
20251018_125945	G-6	0.98	t
20251018_125945	G-8	0.79	f
20251018_125945	G-4	0.76	f
20251018_125945	G-5	0.45	f
20251018_125945	G-1	0.13	f
20251018_130435	G-8	0.45	f
20251018_130435	E-1	0.01	t
20251018_130435	E-3	0.01	f
20251018_130435	G-9	0.01	f
20251018_130435	E-9	0.01	f
20251018_130605	G-8	0.45	t
20251018_130605	P-14	0.01	f
20251018_130605	E-7	0.01	t
20251018_130605	P-3	0.01	f
20251018_130605	G-9	0.01	f
20251018_131223	G-6	0.98	t
20251018_131223	G-8	0.79	t
20251018_131223	G-4	0.76	f
20251018_131223	G-5	0.45	t
20251018_131223	G-1	0.13	f
20251018_131428	G-8	0.45	f
20251018_131428	E-9	0.01	f
20251018_131428	E-7	0.01	t
20251018_131428	P-3	0.01	t
20251018_131428	E-10	0.01	f
20251018_131816	G-6	0.98	t
20251018_131816	G-8	0.79	t
20251018_131816	G-4	0.76	t
20251018_131816	G-5	0.45	t
20251018_131816	G-1	0.13	f
20251018_133240	G-6	0.98	t
20251018_133240	G-8	0.79	t
20251018_133240	G-4	0.76	t
20251018_133240	G-5	0.45	t
20251018_133240	G-1	0.13	t
20251018_133729	G-6	0.98	f
20251018_133729	G-8	0.79	t
20251018_133729	G-4	0.76	f
20251018_133729	G-5	0.45	f
20251018_133729	G-1	0.13	f
20251018_135053	G-6	0.98	t
20251018_135053	G-8	0.79	t
20251018_135053	G-4	0.76	t
20251018_135053	G-5	0.45	t
20251018_135053	G-1	0.13	t
20251018_140301	G-8	0.45	t
20251018_140301	E-2	0.01	f
20251018_140301	E-4	0.01	t
20251018_140301	E-3	0.01	f
20251018_140301	E-1	0.01	f
20251018_140641	G-8	0.45	t
20251018_140641	P-11	0.01	f
20251018_140641	P-3	0.01	f
20251018_140641	P-14	0.01	t
20251018_140641	E-4	0.01	t
20251018_140919	G-8	0.45	f
20251018_140919	P-14	0.01	t
20251018_140919	P-3	0.01	t
20251018_140919	E-4	0.01	f
20251018_140919	E-5	0.01	t
20251018_141208	G-8	0.45	f
20251018_141208	E-3	0.01	f
20251018_141208	E-8	0.01	t
20251018_141208	E-6	0.01	f
20251018_141208	E-5	0.01	f
20251018_141726	G-8	0.45	f
20251018_141726	E-2	0.01	t
20251018_141726	E-8	0.01	t
20251018_141726	P-4	0.01	t
20251018_141726	E-3	0.01	f
20251018_141919	G-6	0.98	t
20251018_141919	G-8	0.79	t
20251018_141919	G-4	0.76	f
20251018_141919	G-5	0.45	f
20251018_141919	G-1	0.13	t
20251018_142104	G-8	0.45	f
20251018_142104	E-8	0.01	f
20251018_142104	P-3	0.01	t
20251018_142104	E-6	0.01	f
20251018_142104	P-11	0.01	t
20251018_143338	G-6	0.98	t
20251018_143338	G-8	0.79	f
20251018_143338	G-4	0.76	f
20251018_143338	G-5	0.45	f
20251018_143338	G-1	0.13	t
20251018_143717	G-6	0.98	t
20251018_143717	G-8	0.79	f
20251018_143717	G-4	0.76	f
20251018_143717	G-5	0.45	f
20251018_143717	G-1	0.13	f
20251018_144052	P-9	1.6	t
20251018_144052	P-12	1.46	t
20251018_144052	P-10	1.33	f
20251018_144052	P-14	1.09	f
20251018_144052	P-4	1.08	t
20251018_144513	G-6	0.98	f
20251018_144513	G-8	0.79	t
20251018_144513	G-4	0.76	t
20251018_144513	G-5	0.45	f
20251018_144513	G-1	0.13	f
20251018_144756	P-14	1.69	f
20251018_144756	P-11	1.67	f
20251018_144756	P-7	1.61	f
20251018_144756	P-2	1.52	t
20251018_144756	P-12	1.46	f
20251018_145001	P-14	1.69	f
20251018_145001	P-11	1.67	t
20251018_145001	P-7	1.61	f
20251018_145001	P-2	1.52	f
20251018_145001	P-12	1.46	f
20251018_150545	G-8	0.45	t
20251018_150545	E-6	0.01	f
20251018_150545	P-4	0.01	f
20251018_150545	P-3	0.01	f
20251018_150545	E-1	0.01	t
20251018_150849	P-14	1.69	f
20251018_150849	P-11	1.67	f
20251018_150849	P-7	1.61	t
20251018_150849	P-2	1.52	t
20251018_150849	P-12	1.46	f
20251018_151449	P-9	1.6	f
20251018_151449	P-12	1.46	f
20251018_151449	P-10	1.33	t
20251018_151449	P-14	1.09	t
20251018_151449	P-4	1.08	f
20251018_151640	G-8	0.45	t
20251018_151640	E-5	0.01	f
20251018_151640	P-3	0.01	f
20251018_151640	E-6	0.01	f
20251018_151640	E-2	0.01	f
20251018_152848	G-8	0.45	f
20251018_152848	E-5	0.01	t
20251018_152848	E-1	0.01	t
20251018_152848	P-3	0.01	f
20251018_152848	E-2	0.01	f
20251018_153214	G-8	0.45	t
20251018_153214	E-7	0.01	t
20251018_153214	E-6	0.01	f
20251018_153214	P-14	0.01	f
20251018_153214	E-4	0.01	f
20251018_153651	P-2	1.72	t
20251018_153651	P-11	1.67	f
20251018_153651	P-6	1.5	f
20251018_153651	P-14	1.49	t
20251018_153651	P-12	1.46	f
20251018_153947	G-6	0.98	f
20251018_153947	G-8	0.79	f
20251018_153947	G-4	0.76	f
20251018_153947	G-5	0.45	f
20251018_153947	G-1	0.13	t
20251018_154340	G-6	0.98	t
20251018_154340	G-8	0.79	f
20251018_154340	G-4	0.76	t
20251018_154340	G-5	0.45	f
20251018_154340	G-1	0.13	t
20251018_154705	G-6	0.98	f
20251018_154705	G-8	0.79	f
20251018_154705	G-4	0.76	f
20251018_154705	G-5	0.45	f
20251018_154705	G-1	0.13	t
20251018_154851	G-8	0.45	f
20251018_154851	E-10	0.01	f
20251018_154851	E-8	0.01	t
20251018_154851	E-7	0.01	f
20251018_154851	E-2	0.01	f
20251018_155310	G-6	0.98	t
20251018_155310	G-8	0.79	f
20251018_155310	G-4	0.76	f
20251018_155310	G-5	0.45	f
20251018_155310	G-1	0.13	f
20251018_155845	G-8	0.45	f
20251018_155845	P-11	0.01	f
20251018_155845	P-7	0.01	f
20251018_155845	P-14	0.01	f
20251018_155845	E-3	0.01	t
20251018_160116	G-6	0.98	f
20251018_160116	G-8	0.79	t
20251018_160116	G-4	0.76	f
20251018_160116	G-5	0.45	f
20251018_160116	G-1	0.13	f
20251018_161056	G-8	0.45	f
20251018_161056	P-11	0.01	f
20251018_161056	E-1	0.01	t
20251018_161056	E-8	0.01	t
20251018_161056	E-7	0.01	f
20251018_161314	G-8	0.45	f
20251018_161314	P-7	0.01	f
20251018_161314	E-11	0.01	f
20251018_161314	P-11	0.01	t
20251018_161314	E-4	0.01	f
20251018_161550	G-8	0.45	t
20251018_161550	P-3	0.01	t
20251018_161550	E-4	0.01	f
20251018_161550	E-10	0.01	f
20251018_161550	P-4	0.01	f
20251018_162057	G-6	0.98	f
20251018_162057	G-8	0.79	f
20251018_162057	G-4	0.76	f
20251018_162057	G-5	0.45	t
20251018_162057	G-1	0.13	f
20251018_162318	G-8	0.45	f
20251018_162318	E-10	0.01	f
20251018_162318	E-8	0.01	f
20251018_162318	P-7	0.01	t
20251018_162318	E-2	0.01	f
20251018_162636	G-8	0.45	f
20251018_162636	E-11	0.01	t
20251018_162636	P-14	0.01	f
20251018_162636	E-6	0.01	f
20251018_162636	E-9	0.01	t
20251018_163106	G-6	0.98	f
20251018_163106	G-8	0.79	t
20251018_163106	G-4	0.76	f
20251018_163106	G-5	0.45	f
20251018_163106	G-1	0.13	f
20251018_163827	G-8	0.45	t
20251018_163827	E-1	0.01	f
20251018_163827	E-3	0.01	f
20251018_163827	E-11	0.01	t
20251018_163827	P-3	0.01	f
20251018_164041	G-6	0.98	f
20251018_164041	G-8	0.79	f
20251018_164041	G-4	0.76	t
20251018_164041	G-5	0.45	f
20251018_164041	G-1	0.13	t
20251018_164434	G-8	0.45	f
20251018_164434	E-7	0.01	t
20251018_164434	E-9	0.01	f
20251018_164434	E-3	0.01	f
20251018_164434	P-4	0.01	t
20251018_164728	G-8	0.45	f
20251018_164728	E-5	0.01	t
20251018_164728	E-6	0.01	f
20251018_164728	E-8	0.01	t
20251018_164728	P-11	0.01	f
20251018_164918	G-8	0.45	f
20251018_164918	E-8	0.01	t
20251018_164918	E-10	0.01	f
20251018_164918	E-1	0.01	f
20251018_164918	P-3	0.01	f
20251018_165433	G-8	0.45	f
20251018_165433	E-1	0.01	f
20251018_165433	G-9	0.01	f
20251018_165433	E-2	0.01	t
20251018_165433	E-11	0.01	f
20251018_170555	G-8	0.45	t
20251018_170555	E-9	0.01	t
20251018_170555	E-7	0.01	t
20251018_170555	E-8	0.01	t
20251018_170555	E-10	0.01	t
20251018_170856	G-8	0.45	f
20251018_170856	P-7	0.01	f
20251018_170856	E-6	0.01	f
20251018_170856	P-4	0.01	t
20251018_170856	E-7	0.01	f
20251018_171450	P-2	1.72	t
20251018_171450	P-11	1.67	f
20251018_171450	P-6	1.5	t
20251018_171450	P-14	1.49	f
20251018_171450	P-12	1.46	f
20251018_171649	P-14	1.69	f
20251018_171649	P-11	1.67	t
20251018_171649	P-7	1.61	f
20251018_171649	P-2	1.52	t
20251018_171649	P-12	1.46	f
20251018_171811	G-8	0.45	f
20251018_171811	E-9	0.01	t
20251018_171811	P-7	0.01	f
20251018_171811	P-3	0.01	t
20251018_171811	E-2	0.01	t
20251018_172100	P-14	1.69	f
20251018_172100	P-11	1.67	t
20251018_172100	P-7	1.61	f
20251018_172100	P-2	1.52	t
20251018_172100	P-12	1.46	f
20251018_172457	P-9	1.6	f
20251018_172457	P-12	1.46	t
20251018_172457	P-10	1.33	t
20251018_172457	P-14	1.09	f
20251018_172457	P-4	1.08	f
20251018_175606	G-6	0.98	f
20251018_175606	G-8	0.79	f
20251018_175606	G-4	0.76	f
20251018_175606	G-5	0.45	t
20251018_175606	G-1	0.13	f
20251019_093629	P-9	1.6	f
20251019_093629	P-12	1.46	f
20251019_093629	P-10	1.33	f
20251019_093629	P-14	1.09	f
20251019_093629	P-4	1.08	t
20251019_104057	G-8	0.45	f
20251019_104057	E-1	0.01	f
20251019_104057	E-3	0.01	t
20251019_104057	E-11	0.01	f
20251019_104057	E-5	0.01	f
20251019_104706	G-6	0.98	t
20251019_104706	G-8	0.79	f
20251019_104706	G-4	0.76	f
20251019_104706	G-5	0.45	f
20251019_104706	G-1	0.13	f
20251019_105114	P-14	1.69	t
20251019_105114	P-11	1.67	t
20251019_105114	P-7	1.61	f
20251019_105114	P-2	1.52	f
20251019_105114	P-12	1.46	f
20251019_105359	P-9	1.4	t
20251019_105359	P-12	1.26	f
20251019_105359	P-10	1.13	f
20251019_105359	P-6	1.1	f
20251019_105359	P-14	1.09	t
20251019_111937	G-8	0.45	f
20251019_111937	E-10	0.01	t
20251019_111937	P-3	0.01	t
20251019_111937	E-6	0.01	f
20251019_111937	E-9	0.01	f
20251019_115154	G-6	0.98	t
20251019_115154	G-8	0.79	f
20251019_115154	G-4	0.76	f
20251019_115154	G-5	0.45	t
20251019_115154	G-1	0.13	f
20251019_120120	G-8	0.45	t
20251019_120120	E-6	0.01	f
20251019_120120	P-4	0.01	t
20251019_120120	P-3	0.01	t
20251019_120120	P-7	0.01	f
20251019_120429	G-6	0.98	f
20251019_120429	G-8	0.79	f
20251019_120429	G-4	0.76	t
20251019_120429	G-5	0.45	t
20251019_120429	G-1	0.13	f
20251019_120921	G-8	0.45	f
20251019_120921	P-14	0.01	t
20251019_120921	P-4	0.01	t
20251019_120921	E-8	0.01	t
20251019_120921	E-4	0.01	f
20251019_125454	G-8	0.45	f
20251019_125454	P-11	0.01	f
20251019_125454	G-9	0.01	f
20251019_125454	P-14	0.01	f
20251019_125454	E-8	0.01	t
20251019_130316	G-6	0.98	f
20251019_130316	G-8	0.79	t
20251019_130316	G-4	0.76	t
20251019_130316	G-5	0.45	f
20251019_130316	G-1	0.13	f
20251019_131931	G-8	0.45	f
20251019_131931	E-4	0.01	f
20251019_131931	E-5	0.01	t
20251019_131931	P-3	0.01	f
20251019_131931	P-11	0.01	f
20251019_134317	G-8	0.45	f
20251019_134317	E-2	0.01	f
20251019_134317	E-9	0.01	f
20251019_134317	E-7	0.01	f
20251019_134317	P-7	0.01	f
20251019_134533	G-8	0.45	f
20251019_134533	G-9	0.01	f
20251019_134533	E-7	0.01	f
20251019_134533	E-4	0.01	f
20251019_134533	E-10	0.01	f
20251019_141857	G-6	0.98	t
20251019_141857	G-8	0.79	t
20251019_141857	G-4	0.76	f
20251019_141857	G-5	0.45	t
20251019_141857	G-1	0.13	f
20251019_143259	G-8	0.45	f
20251019_143259	P-14	0.01	f
20251019_143259	E-4	0.01	f
20251019_143259	E-9	0.01	f
20251019_143259	E-2	0.01	f
20251019_143636	G-6	0.98	f
20251019_143636	G-8	0.79	f
20251019_143636	G-4	0.76	f
20251019_143636	G-5	0.45	f
20251019_143636	G-1	0.13	t
20251019_144147	G-8	0.45	f
20251019_144147	P-7	0.01	f
20251019_144147	P-4	0.01	t
20251019_144147	E-2	0.01	f
20251019_144147	E-8	0.01	t
20251019_144425	G-8	0.45	f
20251019_144425	E-6	0.01	f
20251019_144425	E-5	0.01	f
20251019_144425	E-4	0.01	t
20251019_144425	G-9	0.01	f
20251019_145102	G-8	0.45	f
20251019_145102	E-11	0.01	t
20251019_145102	E-3	0.01	t
20251019_145102	E-7	0.01	f
20251019_145102	G-9	0.01	f
20251019_145322	P-2	1.72	f
20251019_145322	P-11	1.67	f
20251019_145322	P-6	1.5	t
20251019_145322	P-14	1.49	f
20251019_145322	P-12	1.46	f
20251019_151634	G-6	0.98	t
20251019_151634	G-8	0.79	f
20251019_151634	G-4	0.76	f
20251019_151634	G-5	0.45	f
20251019_151634	G-1	0.13	f
20251019_155425	G-6	0.98	f
20251019_155425	G-8	0.79	f
20251019_155425	G-4	0.76	f
20251019_155425	G-5	0.45	t
20251019_155425	G-1	0.13	f
20251019_160013	G-6	0.98	f
20251019_160013	G-8	0.79	t
20251019_160013	G-4	0.76	t
20251019_160013	G-5	0.45	t
20251019_160013	G-1	0.13	f
20251019_160215	G-8	0.45	f
20251019_160215	E-2	0.01	t
20251019_160215	E-1	0.01	t
20251019_160215	E-7	0.01	f
20251019_160215	E-4	0.01	t
20251019_160419	P-9	1.6	t
20251019_160419	P-12	1.46	f
20251019_160419	P-10	1.33	t
20251019_160419	P-14	1.09	t
20251019_160419	P-4	1.08	f
20251019_164020	G-8	0.45	f
20251019_164020	E-8	0.01	t
20251019_164020	E-7	0.01	t
20251019_164020	P-3	0.01	f
20251019_164020	E-9	0.01	f
20251019_164300	G-8	0.45	f
20251019_164300	E-2	0.01	t
20251019_164300	P-11	0.01	f
20251019_164300	P-4	0.01	t
20251019_164300	E-10	0.01	t
20251022_101746	G-6	0.98	f
20251022_101746	G-8	0.79	f
20251022_101746	G-4	0.76	t
20251022_101746	G-5	0.45	f
20251022_101746	G-1	0.13	f
20251022_101913	G-6	0.98	f
20251022_101913	G-8	0.79	f
20251022_101913	G-4	0.76	f
20251022_101913	G-5	0.45	f
20251022_101913	G-1	0.13	t
20251022_104204	G-8	0.45	f
20251022_104204	P-14	0.01	f
20251022_104204	E-9	0.01	f
20251022_104204	E-7	0.01	f
20251022_104204	P-11	0.01	f
20251022_104531	G-8	0.45	f
20251022_104531	E-1	0.01	f
20251022_104531	E-3	0.01	f
20251022_104531	E-7	0.01	f
20251022_104531	E-8	0.01	f
20251022_112455	G-8	0.45	t
20251022_112455	E-9	0.01	f
20251022_112455	P-14	0.01	f
20251022_112455	E-10	0.01	f
20251022_112455	E-3	0.01	f
20251022_124658	P-14	1.69	t
20251022_124658	P-11	1.67	f
20251022_124658	P-7	1.61	f
20251022_124658	P-2	1.52	t
20251022_124658	P-12	1.46	f
20251023_140930	G-8	0.45	f
20251023_140930	P-11	0.01	t
20251023_140930	G-9	0.01	f
20251023_140930	E-9	0.01	f
20251023_140930	E-4	0.01	f
20251023_145931	G-8	0.45	f
20251023_145931	E-2	0.01	t
20251023_145931	P-4	0.01	f
20251023_145931	E-5	0.01	f
20251023_145931	E-9	0.01	f
20251023_150226	G-8	0.45	f
20251023_150226	E-6	0.01	f
20251023_150226	G-9	0.01	f
20251023_150226	P-3	0.01	f
20251023_150226	E-9	0.01	f
20251023_173849	G-8	0.45	f
20251023_173849	P-3	0.01	t
20251023_173849	E-7	0.01	f
20251023_173849	E-2	0.01	f
20251023_173849	P-7	0.01	f
20251024_102609	G-8	0.45	f
20251024_102609	E-8	0.01	f
20251024_102609	E-6	0.01	t
20251024_102609	P-11	0.01	f
20251024_102609	E-5	0.01	f
20251024_162604	G-6	0.98	t
20251024_162604	G-8	0.79	f
20251024_162604	G-4	0.76	f
20251024_162604	G-5	0.45	t
20251024_162604	G-1	0.13	f
20251025_091756	P-9	1.4	f
20251025_091756	P-12	1.26	f
20251025_091756	P-10	1.13	t
20251025_091756	P-6	1.1	f
20251025_091756	P-14	1.09	f
20251025_093309	P-9	1.6	f
20251025_093309	P-12	1.46	f
20251025_093309	P-10	1.33	f
20251025_093309	P-14	1.09	f
20251025_093309	P-4	1.08	t
20251025_094859	P-9	1.6	f
20251025_094859	P-12	1.46	f
20251025_094859	P-10	1.33	f
20251025_094859	P-14	1.09	f
20251025_094859	P-4	1.08	t
20251025_102117	G-6	0.98	f
20251025_102117	G-8	0.79	f
20251025_102117	G-4	0.76	f
20251025_102117	G-5	0.45	f
20251025_102117	G-1	0.13	f
20251025_104511	P-9	1.6	f
20251025_104511	P-12	1.46	f
20251025_104511	P-10	1.33	f
20251025_104511	P-14	1.09	f
20251025_104511	P-4	1.08	t
20251025_111610	G-6	0.98	t
20251025_111610	G-8	0.79	f
20251025_111610	G-4	0.76	f
20251025_111610	G-5	0.45	f
20251025_111610	G-1	0.13	f
20251025_111926	P-2	1.72	f
20251025_111926	P-11	1.67	t
20251025_111926	P-6	1.5	f
20251025_111926	P-14	1.49	f
20251025_111926	P-12	1.46	f
20251025_121610	G-8	0.45	f
20251025_121610	E-1	0.01	f
20251025_121610	E-2	0.01	f
20251025_121610	P-7	0.01	f
20251025_121610	E-7	0.01	f
20251025_134026	P-9	1.6	t
20251025_134026	P-12	1.46	f
20251025_134026	P-10	1.33	f
20251025_134026	P-14	1.09	f
20251025_134026	P-4	1.08	f
20251025_141353	G-8	0.45	f
20251025_141353	P-11	0.01	f
20251025_141353	E-7	0.01	f
20251025_141353	E-2	0.01	f
20251025_141353	P-3	0.01	f
20251025_141529	G-8	0.45	f
20251025_141529	P-3	0.01	f
20251025_141529	E-11	0.01	f
20251025_141529	E-9	0.01	f
20251025_141529	E-5	0.01	f
20251025_141621	G-8	0.45	f
20251025_141621	E-5	0.01	f
20251025_141621	E-8	0.01	f
20251025_141621	E-9	0.01	f
20251025_141621	E-4	0.01	f
20251025_144038	G-6	0.98	f
20251025_144038	G-8	0.79	f
20251025_144038	G-4	0.76	f
20251025_144038	G-5	0.45	f
20251025_144038	G-1	0.13	t
20251025_144310	P-2	1.72	t
20251025_144310	P-11	1.67	t
20251025_144310	P-6	1.5	f
20251025_144310	P-14	1.49	f
20251025_144310	P-12	1.46	f
20251025_145425	P-2	1.72	f
20251025_145425	P-11	1.67	f
20251025_145425	P-6	1.5	f
20251025_145425	P-14	1.49	t
20251025_145425	P-12	1.46	f
20251025_162536	G-8	0.45	f
20251025_162536	E-7	0.01	t
20251025_162536	G-9	0.01	f
20251025_162536	E-10	0.01	f
20251025_162536	E-6	0.01	f
20251101_092527	G-8	0.45	t
20251101_092527	P-3	0.01	f
20251101_092527	E-10	0.01	t
20251101_092527	E-3	0.01	t
20251101_092527	E-6	0.01	t
20251101_100842	P-9	1.6	t
20251101_100842	P-12	1.46	f
20251101_100842	P-10	1.33	t
20251101_100842	P-14	1.09	f
20251101_100842	P-4	1.08	f
20251101_101335	G-8	0.45	t
20251101_101335	P-3	0.01	t
20251101_101335	P-11	0.01	f
20251101_101335	E-6	0.01	f
20251101_101335	E-7	0.01	f
20251101_101823	G-8	0.45	t
20251101_101823	P-3	0.01	t
20251101_101823	E-7	0.01	t
20251101_101823	E-10	0.01	f
20251101_101823	E-8	0.01	f
20251101_102149	G-8	0.45	t
20251101_102149	E-8	0.01	t
20251101_102149	P-14	0.01	t
20251101_102149	E-1	0.01	t
20251101_102149	E-11	0.01	t
20251101_104626	P-9	1.6	t
20251101_104626	P-12	1.46	t
20251101_104626	P-10	1.33	t
20251101_104626	P-14	1.09	t
20251101_104626	P-4	1.08	t
20251101_104930	G-8	0.45	t
20251101_104930	E-6	0.01	t
20251101_104930	E-1	0.01	t
20251101_104930	E-7	0.01	f
20251101_104930	E-8	0.01	t
20251101_105502	G-6	0.98	f
20251101_105502	G-8	0.79	t
20251101_105502	G-4	0.76	t
20251101_105502	G-5	0.45	f
20251101_105502	G-1	0.13	t
20251101_105704	G-8	0.45	t
20251101_105704	P-4	0.01	f
20251101_105704	E-2	0.01	f
20251101_105704	P-14	0.01	t
20251101_105704	E-11	0.01	t
20251101_124313	G-8	0.45	f
20251101_124313	E-4	0.01	f
20251101_124313	P-14	0.01	f
20251101_124313	E-7	0.01	f
20251101_124313	E-1	0.01	f
20251101_124401	G-8	0.45	f
20251101_124401	P-14	0.01	t
20251101_124401	P-7	0.01	f
20251101_124401	E-10	0.01	f
20251101_124401	P-11	0.01	f
20251101_130428	G-8	0.45	t
20251101_130428	E-5	0.01	t
20251101_130428	G-9	0.01	t
20251101_130428	E-7	0.01	t
20251101_130428	E-11	0.01	t
20251101_131754	G-8	0.45	t
20251101_131754	E-8	0.01	t
20251101_131754	P-7	0.01	t
20251101_131754	E-3	0.01	t
20251101_131754	E-6	0.01	f
20251101_132045	P-9	1.6	f
20251101_132045	P-12	1.46	f
20251101_132045	P-10	1.33	t
20251101_132045	P-14	1.09	f
20251101_132045	P-4	1.08	t
20251101_152925	G-8	0.45	f
20251101_152925	E-4	0.01	t
20251101_152925	E-11	0.01	t
20251101_152925	P-11	0.01	f
20251101_152925	P-14	0.01	f
20251101_160339	G-6	0.98	t
20251101_160339	G-8	0.79	t
20251101_160339	G-4	0.76	f
20251101_160339	G-5	0.45	t
20251101_160339	G-1	0.13	f
20251105_152742	G-8	0.45	f
20251105_152742	P-14	0.01	f
20251105_152742	E-8	0.01	t
20251105_152742	E-1	0.01	f
20251105_152742	E-11	0.01	f
20251107_150057	P-9	1.6	f
20251107_150057	P-12	1.46	f
20251107_150057	P-10	1.33	f
20251107_150057	P-14	1.09	f
20251107_150057	P-4	1.08	f
20251107_150553	G-6	0.98	f
20251107_150553	G-8	0.79	f
20251107_150553	G-4	0.76	f
20251107_150553	G-5	0.45	f
20251107_150553	G-1	0.13	t
20251108_163326	G-8	0.45	f
20251108_163326	G-9	0.01	f
20251108_163326	P-14	0.01	t
20251108_163326	E-10	0.01	f
20251108_163326	E-2	0.01	f
20251120_193937	G-8	0.45	t
20251120_193937	P-14	0.01	f
20251120_193937	E-2	0.01	t
20251120_193937	E-1	0.01	t
20251120_193937	E-3	0.01	f
20251120_194305	G-8	0.45	f
20251120_194305	P-11	0.01	t
20251120_194305	E-6	0.01	f
20251120_194305	E-2	0.01	f
20251120_194305	E-10	0.01	t
20251120_194807	G-6	0.98	f
20251120_194807	G-8	0.79	t
20251120_194807	G-4	0.76	f
20251120_194807	G-5	0.45	f
20251120_194807	G-1	0.13	t
20251120_195014	G-8	0.45	f
20251120_195014	E-11	0.01	t
20251120_195014	E-2	0.01	f
20251120_195014	P-3	0.01	t
20251120_195014	E-8	0.01	t
20251120_195200	G-8	0.45	f
20251120_195200	E-9	0.01	f
20251120_195200	P-14	0.01	f
20251120_195200	P-3	0.01	f
20251120_195200	P-7	0.01	f
20251121_192144	G-8	0.45	f
20251121_192144	E-5	0.01	t
20251121_192144	E-1	0.01	f
20251121_192144	E-7	0.01	f
20251121_192144	E-11	0.01	f
20251121_193557	G-8	0.45	t
20251121_193557	P-11	0.01	f
20251121_193557	E-3	0.01	f
20251121_193557	E-11	0.01	t
20251121_193557	G-9	0.01	f
20251121_201217	P-9	1.4	f
20251121_201217	P-12	1.26	f
20251121_201217	P-10	1.13	t
20251121_201217	P-6	1.1	f
20251121_201217	P-14	1.09	f
20251121_201436	G-6	0.98	f
20251121_201436	G-8	0.79	f
20251121_201436	G-4	0.76	t
20251121_201436	G-5	0.45	f
20251121_201436	G-1	0.13	t
20251121_201920	P-9	1.6	t
20251121_201920	P-12	1.46	f
20251121_201920	P-10	1.33	f
20251121_201920	P-14	1.09	t
20251121_201920	P-4	1.08	t
20251121_211435	G-6	0.98	t
20251121_211435	G-8	0.79	t
20251121_211435	G-4	0.76	f
20251121_211435	G-5	0.45	t
20251121_211435	G-1	0.13	f
20251121_220533	G-8	0.45	f
20251121_220533	P-3	0.01	f
20251121_220533	P-7	0.01	t
20251121_220533	E-5	0.01	t
20251121_220533	E-6	0.01	f
20251018_150253	G-8	0.45	f
20251018_150253	P-3	0.01	t
20251018_150253	E-1	0.01	f
20251018_150253	E-8	0.01	t
20251018_150253	P-7	0.01	f
20260128_194820	E-11	1.07	t
20260128_194820	E-12	1.06	f
20260128_194820	E-17	1.03	f
20260128_194820	E-9	1	f
20260128_194820	E-10	0.93	t
20260128_195003	E-12	1.06	f
20260128_195003	E-15	1.04	t
20260128_195003	E-17	1.03	t
20260128_195003	E-1	1.02	f
20260128_195003	E-9	1	f
20260202_190613	E-4	1.08	f
20260202_190613	E-13	1.01	t
20260202_190613	E-9	1	t
20260202_190613	E-8	0.97	t
20260202_190613	E-10	0.93	f
20260202_192010	E-11	1.07	f
20260202_192010	E-12	1.06	f
20260202_192010	E-17	1.03	t
20260202_192010	E-9	1	t
20260202_192010	E-2	0.92	t
20260202_192857	E-4	1.08	f
20260202_192857	E-11	1.07	t
20260202_192857	E-15	1.04	t
20260202_192857	E-1	1.02	f
20260202_192857	E-16	0.93	f
20260202_195121	E-12	1.06	f
20260202_195121	E-15	1.04	f
20260202_195121	E-1	1.02	t
20260202_195121	E-13	1.01	t
20260202_195121	E-10	0.93	f
20260203_112715	G-4	1.08	t
20260203_112715	G-3	1.06	t
20260203_112715	G-7	1.01	t
20260203_112715	G-8	0.97	f
20260203_112715	G-10	0.93	f
20260203_112848	P-3	1.06	f
20260203_112848	P-9	1	t
20260203_112848	P-8	0.97	f
20260203_112848	P-2	0.92	t
20260203_112848	P-6	0.9	t
20260203_125615	E-14	1.09	f
20260203_125615	E-3	1.06	t
20260203_125615	E-13	1.01	t
20260203_125615	E-8	0.97	f
20260203_125615	E-2	0.92	f
20260205_142736	E-12	1.0622233	f
20260205_142736	E-1	1.0243773	t
20260205_142736	E-13	1.0052824	t
20260205_142736	E-8	0.97470057	f
20260205_142736	E-16	0.9312566	f
20260205_144227	E-3	1.0600361	t
20260205_144227	E-7	1.0102272	f
20260205_144227	E-8	0.97470057	f
20260205_144227	E-16	0.9312566	f
20260205_144227	E-2	0.9168013	f
20260205_145156	E-3	1.0600361	t
20260205_145156	E-15	1.0374007	t
20260205_145156	E-13	1.0052824	f
20260205_145156	E-9	0.9986559	t
20260205_145156	E-2	0.9168013	t
20260205_145332	E-4	1.0752451	f
20260205_145332	E-17	1.0295	f
20260205_145332	E-13	1.0052824	t
20260205_145332	E-10	0.9317565	f
20260205_145332	E-16	0.9312566	f
20260205_150345	E-14	1.0901793	t
20260205_150345	E-3	1.0600361	t
20260205_150345	E-9	0.9986559	f
20260205_150345	E-10	0.9317565	f
20260205_150345	E-16	0.9312566	f
20260205_153636	E-4	1.0752451	f
20260205_153636	E-12	1.0622233	f
20260205_153636	E-17	1.0295	f
20260205_153636	E-13	1.0052824	f
20260205_153636	E-8	0.97470057	t
20260205_153857	E-11	1.0703518	f
20260205_153857	E-15	1.0374007	f
20260205_153857	E-1	1.0243773	t
20260205_153857	E-8	0.97470057	f
20260205_153857	E-16	0.9312566	f
20260205_155758	E-14	1.0901793	t
20260205_155758	E-4	1.0752451	f
20260205_155758	E-17	1.0295	t
20260205_155758	E-1	1.0243773	f
20260205_155758	E-13	1.0052824	f
20260205_160522	E-14	1.0901793	t
20260205_160522	E-11	1.0703518	t
20260205_160522	E-3	1.0600361	f
20260205_160522	E-17	1.0295	f
20260205_160522	E-9	0.9986559	f
20260205_203758	E-10	0.01	f
20260205_203758	E-2	0.01	t
20260205_203758	E-4	0.01	t
20260205_203758	E-17	0.01	f
20260205_203758	E-9	0.01	f
20260205_222843	E-16	0.01	t
20260205_222843	E-10	0.01	t
20260205_222843	E-6	0.01	f
20260205_222843	E-14	0.01	f
20260205_222843	E-17	0.01	f
20260205_224119	E-7	0.01	f
20260205_224119	E-4	0.01	t
20260205_224119	E-3	0.01	f
20260205_224119	E-17	0.01	f
20260205_224119	E-5	0.01	f
20260205_225842	E-2	0.01	t
20260205_225842	E-15	0.01	t
20260205_225842	E-4	0.01	f
20260205_225842	E-7	0.01	f
20260205_225842	E-13	0.01	f
20260205_230939	E-6	0.01	t
20260205_230939	E-1	0.01	t
20260205_230939	E-5	0.01	f
20260205_230939	E-12	0.01	f
20260205_230939	E-14	0.01	f
20260205_231511	E-12	0.01	t
20260205_231511	E-15	0.01	t
20260205_231511	E-11	0.01	f
20260205_231511	E-17	0.01	f
20260205_231511	E-14	0.01	f
20260205_232819	E-13	0.01	f
20260205_232819	E-14	0.01	t
20260205_232819	E-9	0.01	f
20260205_232819	E-4	0.01	t
20260205_232819	E-6	0.01	f
20260205_235112	E-1	0.01	f
20260205_235112	E-16	0.01	t
20260205_235112	E-14	0.01	t
20260205_235112	E-10	0.01	f
20260205_235112	E-17	0.01	f
20260205_235851	E-3	0.01	f
20260205_235851	E-6	0.01	f
20260205_235851	E-1	0.01	t
20260205_235851	E-12	0.01	f
20260205_235851	E-4	0.01	f
20260206_000039	E-15	0.01	t
20260206_000039	E-2	0.01	t
20260206_000039	E-14	0.01	t
20260206_000039	E-4	0.01	f
20260206_000039	E-6	0.01	f
20260206_004537	E-14	0.01	t
20260206_004537	E-9	0.01	t
20260206_004537	E-3	0.01	t
20260206_004537	E-17	0.01	t
20260206_004537	E-10	0.01	f
20260206_005532	E-11	0.01	t
20260206_005532	E-8	0.01	t
20260206_005532	E-16	0.01	t
20260206_005532	E-5	0.01	f
20260206_005532	E-1	0.01	f
20260206_005945	E-12	0.01	t
20260206_005945	E-16	0.01	t
20260206_005945	E-13	0.01	t
20260206_005945	E-7	0.01	f
20260206_005945	E-14	0.01	f
20260206_010243	E-14	0.01	t
20260206_010243	E-7	0.01	t
20260206_010243	E-1	0.01	t
20260206_010243	E-3	0.01	f
20260206_010243	E-11	0.01	f
20260206_010836	E-2	0.01	t
20260206_010836	E-15	0.01	t
20260206_010836	E-12	0.01	t
20260206_010836	E-11	0.01	f
20260206_010836	E-4	0.01	f
20260206_011103	E-8	0.01	t
20260206_011103	E-2	0.01	t
20260206_011103	E-15	0.01	t
20260206_011103	E-11	0.01	f
20260206_011103	E-1	0.01	f
20260206_011512	E-1	0.01	t
20260206_011512	E-7	0.01	t
20260206_011512	E-14	0.01	t
20260206_011512	E-11	0.01	f
20260206_011512	E-4	0.01	f
20260206_011745	E-8	0.01	t
20260206_011745	E-1	0.01	t
20260206_011745	E-9	0.01	t
20260206_011745	E-17	0.01	f
20260206_011745	E-10	0.01	f
20260206_012113	E-2	0.01	t
20260206_012113	E-17	0.01	t
20260206_012113	E-11	0.01	t
20260206_012113	E-4	0.01	f
20260206_012113	E-12	0.01	f
20260206_012509	E-12	0.01	t
20260206_012509	E-17	0.01	t
20260206_012509	E-13	0.01	t
20260206_012509	E-11	0.01	f
20260206_012509	E-9	0.01	f
20260206_012829	E-9	0.01	t
20260206_012829	E-13	0.01	t
20260206_012829	E-4	0.01	t
20260206_012829	E-6	0.01	f
20260206_012829	E-16	0.01	f
20260206_013241	E-4	0.01	t
20260206_013241	E-13	0.01	t
20260206_013241	E-9	0.01	t
20260206_013241	E-5	0.01	f
20260206_013241	E-8	0.01	f
20260206_013552	E-10	0.01	t
20260206_013552	E-14	0.01	t
20260206_013552	E-9	0.01	t
20260206_013552	E-16	0.01	f
20260206_013552	E-8	0.01	f
20260206_013958	E-7	0.01	t
20260206_013958	E-5	0.01	t
20260206_013958	E-12	0.01	t
20260206_013958	E-9	0.01	f
20260206_013958	E-16	0.01	f
20260206_015658	E-14	0.01	t
20260206_015658	E-12	0.01	t
20260206_015658	E-13	0.01	t
20260206_015658	E-3	0.01	f
20260206_015658	E-15	0.01	f
20260206_020923	E-16	0.01	t
20260206_020923	E-4	0.01	t
20260206_020923	E-11	0.01	t
20260206_020923	E-5	0.01	f
20260206_020923	E-15	0.01	f
20260206_021500	E-6	0.01	t
20260206_021500	E-3	0.01	t
20260206_021500	E-9	0.01	t
20260206_021500	E-2	0.01	f
20260206_021500	E-15	0.01	f
20260206_021721	E-15	0.01	t
20260206_021721	E-13	0.01	t
20260206_021721	E-3	0.01	t
20260206_021721	E-10	0.01	f
20260206_021721	E-6	0.01	f
20260206_023240	E-5	0.01	t
20260206_023240	E-4	0.01	t
20260206_023240	E-7	0.01	t
20260206_023240	E-3	0.01	f
20260206_023240	E-11	0.01	f
20260206_113214	E-11	0.01	t
20260206_113214	E-7	0.01	t
20260206_113214	E-9	0.01	t
20260206_113214	E-8	0.01	f
20260206_113214	E-5	0.01	f
20260206_113948	G-9	0.01	t
20260206_113948	G-6	0.01	t
20260206_113948	G-7	0.01	f
20260206_113948	G-2	0.01	t
20260206_113948	G-5	0.01	f
20260206_115435	E-17	0.01	t
20260206_115435	E-2	0.01	t
20260206_115435	E-15	0.01	t
20260206_115435	E-1	0.01	f
20260206_115435	E-13	0.01	f
20260206_120630	E-11	0.01	t
20260206_120630	E-12	0.01	t
20260206_120630	E-10	0.01	t
20260206_120630	E-9	0.01	f
20260206_120630	E-15	0.01	f
20260206_125205	E-9	0.01	t
20260206_125205	E-3	0.01	t
20260206_125205	E-8	0.01	t
20260206_125205	E-6	0.01	f
20260206_125205	E-14	0.01	f
20260207_171453	E-8	0.01	f
20260207_171453	E-1	0.01	t
20260207_171453	E-12	0.01	t
20260207_171453	E-9	0.01	f
20260207_171453	E-5	0.01	f
20260207_172059	E-12	0.01	f
20260207_172059	E-7	0.01	f
20260207_172059	E-8	0.01	t
20260207_172059	E-1	0.01	f
20260207_172059	E-11	0.01	f
20260330_125317	G-3	0.01	t
20260330_125317	G-8	0.01	t
20260330_125317	G-5	0.01	f
20260330_125317	G-4	0.01	t
20260330_125317	G-7	0.01	f
20260330_125425	E-11	1.0703518	t
20260330_125425	E-12	1.0622233	f
20260330_125425	E-3	1.0600361	f
20260330_125425	E-15	1.0374007	t
20260330_125425	E-13	1.0052824	f
20260330_125524	E-4	0.01	t
20260330_125524	E-7	0.01	t
20260330_125524	E-11	0.01	f
20260330_125524	E-6	0.01	f
20260330_125524	E-3	0.01	f
20260330_125730	E-12	0.01	f
20260330_125730	E-6	0.01	t
20260330_125730	E-4	0.01	t
20260330_125730	E-11	0.01	f
20260330_125730	E-1	0.01	f
\.


--
-- PostgreSQL database dump complete
--

\unrestrict xOhBz0chFoasf5scDC7ArmmfQ699drdQePaHgJeltENpNmbD3dxgynlRgDaTyEW


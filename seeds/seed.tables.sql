BEGIN;

TRUNCATE
  "word",
  "language";

INSERT INTO "language" ("id", "name", "user_id")
VALUES
  (2, 'French', 2);

INSERT INTO "word" ("id", "language_id", "original", "translation", "next")
VALUES
  (1, 2, 'le', 'him', 2),
  (2, 2, 'de', 'some', 3),
  (3, 2, 'un', 'a', 4),
  (4, 2, 'a', 'to', 5),
  (5, 2, 'etre', 'to be', 6),
  (6, 2, 'et', 'and', 7),
  (7, 2, 'en', 'in', 8),
  (8, 2, 'avoir', 'to have', 9),
  (9, 2, 'que', 'then', 10),
  (10, 2, 'pour', 'for', 11),
  (11, 2, 'dans', 'in', 12),
  (12, 2, 'ce', 'this', 13),
  (13, 2, 'il', 'he', 14),
  (14, 2, 'qui', 'who', 15),
  (15, 2, 'ne', 'not', 16),
  (16, 2, 'sur', 'on', 17),
  (17, 2, 'se', 'oneself', 18),
  (18, 2, 'pas', 'not', 19),
  (19, 2, 'plus', 'more', 20),
  (20, 2, 'pouvoir', 'to be able to', 21),
  (21, 2, 'par', 'by', 22),
  (22, 2, 'je', 'I', 23),
  (23, 2, 'avec', 'with', 24),
  (24, 2, 'tout', 'all', 25),
  (25, 2, 'faire', 'to do', 26),
  (26, 2, 'son', 'his', 27),
  (27, 2, 'mettre', 'to put', 28),
  (28, 2, 'autre', 'other', 29),
  (29, 2, 'on', 'we', 30),
  (30, 2, 'mais', 'but', 31),
  (31, 2, 'nous', 'we', 32),
  (32, 2, 'comme', 'like', 33),
  (33, 2, 'ou', 'or', 34),
  (34, 2, 'si', 'if', 35),
  (35, 2, 'leur', 'their', 36),
  (36, 2, 'y', 'there', 37),
  (37, 2, 'dire', 'to say', 38),
  (38, 2, 'elle', 'her', 39),
  (39, 2, 'devoir', 'to have to', 40),
  (40, 2, 'avant', 'before', 41),
  (41, 2, 'femme (fem.)', 'woman', 42),
  (42, 2, 'homme (masc.)', 'man', 43),
  (43, 2, 'ami/amie (masc./fem.)', 'friend', 44),
  (44, 2, 'maison (fem.)', 'house', 45),
  (45, 2, 'monde (masc.)', 'world', 46),
  (46, 2, 'travail (masc.)', 'work', 47),
  (47, 2, 'ecole (fem.)', 'school', 48),
  (48, 2, 'voyage (masc.)', 'trip', 49),
  (49, 2, 'livre (masc.)', 'book', 50),
  (50, 2, 'lumiere (fem.)', 'light', 51),
  (51, 2, 'phrase (fem.)', 'sentence', 52),
  (52, 2, 'tu', 'you', 53),
  (53, 2, 'vous', 'you all', 54),
  (54, 2, 'ils', 'they', 55),
  (55, 2, 'elles', 'they', 56),
  (56, 2, 'mon/ma/mes', 'my', 57),
  (57, 2, 'ton/ta/tes', 'your', 58),
  (58, 2, 'son/sa/ses', 'his, her', 59),
  (59, 2, 'notre/nos', 'our', 60),
  (60, 2, 'votre/vos', 'your', 61),
  (61, 2, 'leur/leurs', 'their', 62),
  (62, 2, 'rouge', 'red', 63),
  (63, 2, 'bleu', 'blue', 64),
  (64, 2, 'vert', 'green', 65),
  (65, 2, 'jaune', 'yellow', 66),
  (66, 2, 'rose', 'pink', 67),
  (67, 2, 'blanc', 'white', 68),
  (68, 2, 'noir', 'black', 69),
  (69, 2, 'simple', 'simple', 70),
  (70, 2, 'dur', 'hard', 71),
  (71, 2, 'petit', 'small', 72),
  (72, 2, 'grand', 'big', 73),
  (73, 2, 'mince', 'thin', 74),
  (74, 2, 'chaud', 'hot', 75),
  (75, 2, 'froid', 'cold', 76),
  (76, 2, 'bon', 'good', 77),
  (77, 2, 'mauvais', 'bad', 78),
  (78, 2, 'vieux', 'old', 79),
  (79, 2, 'jeune', 'young', 80),
  (80, 2, 'heureux', 'happy', 81),
  (81, 2, 'triste', 'sad', 82),
  (82, 2, 'apres', 'after', 83),
  (83, 2, 'contre', 'against', 84),
  (84, 2, 'depuis', 'since', 85),
  (85, 2, 'derriere', 'behind', 86),
  (86, 2, 'devant', 'in front of', 87),
  (87, 2, 'pendant', 'during', 88),
  (88, 2, 'entre', 'between', 89),
  (89, 2, 'sous', 'under', 90),
  (90, 2, 'pres', 'close', 91),
  (91, 2, 'sans', 'without', 92),
  (92, 2, 'ici', 'here', 93),
  (93, 2, 'loin', 'far', 94),
  (94, 2, 'assez', 'enough', 95),
  (95, 2, 'beaucoup', 'a lot', 96),
  (96, 2, 'peu', 'few', 97),
  (97, 2, 'tres', 'very', 98),
  (98, 2, 'jamais', 'never', 99),
  (99, 2, 'longtemps', 'long time', 100),
  (100, 2, 'ensemble', 'together', 101),
  (101, 2, 'aimer', 'love', 102),
  (102, 2, 'aller', 'go', 103),
  (103, 2, 'vouloir', 'want', 104),
  (104, 2, 'jouer', 'play', 105),
  (105, 2, 'lire', 'read', 106),
  (106, 2, 'ajouter', 'add', 107),
  (107, 2, 'epeler', 'spell', 108),
  (108, 2, 'essayer', 'try', 109),
  (109, 2, 'voyager', 'travel', 110),
  (110, 2, 'ecouter', 'listen', 111),
  (111, 2, 'parler', 'talk', 112),
  (112, 2, 'construire', 'build', 113),
  (113, 2, 'prendre', 'take', 114),
  (114, 2, 'obtenir', 'get', 115),
  (115, 2, 'donner', 'give', 116),
  (116, 2, 'penser', 'think', 117),
  (117, 2, 'signifier', 'mean', 118),
  (118, 2, 'utiliser', 'use', 119),
  (119, 2, 'ecrire', 'write', 120),
  (120, 2, 'voir', 'see', 121),
  (121, 2, 'regarder', 'look', null);

 
--   41. deux (det., noun [m.]) two
-- 42. même (adj., pron.) same; (adv.) even
-- 44. aussi (adv.) to, also; (conj.) as
-- 45. celui (pron.) that, the one, he, him
-- 47. bien (adv.) well; (noun [m.]) good
-- 48. où (adv., pron.) where
-- 49. fois (noun [f.]) time(s)
-- 51. encore (adv.) again, yet
-- 52. nouveau (adj.) new; (noun [m.]) new (thing)
-- 54. cela (pron.) that, it
-- 56. premier (det., adj.) first
-- 57. vouloir (verb) to want; (noun [m.]) will, desire
-- 58. déjà (adv.) already
-- 61. me (pron.) me, to me, myself
-- 62. moins (adv.) less; (prep., noun [m.]) minus
-- 63. aucun (det., adj., pron.) none, either, neither, not any
-- 64. lui (pron.) him, her
-- 65. temps (noun [m.]) time
-- 67. savoir (verb) to know; (noun [m.]) learning, knowledge
-- 68. falloir (verb) to take, require, need
-- 70. quelque (det., adj., adv.) some
-- 72. raison (noun [f.]) reason
-- 74. dont (pron.) whose, of which
-- 75. non (adv.) no, not
-- 76. an (noun [m.]) year
-- 78. jour (noun [m.]) day
-- 79. monsieur (noun [m.]) mister, sir, gentleman
-- 80. demander (verb) to ask for
-- 81. alors (adv.) then, so
-- 83. trouver (verb) to find
-- 84. personne (noun [f.]) person; (pron.) anyone, nobody
-- 85. rendre (verb) to render, return, yield, give up
-- 86. part (noun [f.]) share
-- 87. dernier (adj). last
-- 88. venir (verb) to come
-- 90. passer (verb) to pass
-- 92. lequel (pron.) who, whom, which
-- 93. suite (noun [f.]) result, follow-up, rest
-- 95. comprendre (verb) to understand
-- 97. point (adv.) at all; (noun [m.]) point
-- 98. ainsi (adv.) thus
-- 99. heure (noun [f.]) hour
-- 100. rester (verb) to stay

UPDATE "language" SET head = 1 WHERE id = 1;

-- because we explicitly set the id fields
-- update the sequencer for future automatic id setting
SELECT setval('word_id_seq', (SELECT MAX(id) from "word"));
SELECT setval('language_id_seq', (SELECT MAX(id) from "language"));
SELECT setval('user_id_seq', (SELECT MAX(id) from "user"));

COMMIT;

BEGIN;

TRUNCATE
  "word",
  "language";

INSERT INTO "language" ("id", "name", "user_id")
VALUES
  (1, 'French', 2);

INSERT INTO "word" ("id", "language_id", "original", "translation", "next")
VALUES
  (1, 1, 'le', 'him', 2),
  (2, 1, 'de', 'some', 3),
  (3, 1, 'un', 'a', 4),
  (4, 1, 'a', 'to', 5),
  (5, 1, 'etre', 'to be', 6),
  (6, 1, 'et', 'and', 7),
  (7, 1, 'en', 'in', 8),
  (8, 1, 'avoir', 'to have', 9),
  (9, 1, 'que', 'then', 10),
  (10, 1, 'pour', 'for', 11),
  (11, 1, 'dans', 'in', 12),
  (12, 1, 'ce', 'this', 13),
  (13, 1, 'il', 'he', 14),
  (14, 1, 'qui', 'who', 15),
  (15, 1, 'ne', 'not', 16),
  (16, 1, 'sur', 'on', 17),
  (17, 1, 'se', 'oneself', 18),
  (18, 1, 'pas', 'not', 19),
  (19, 1, 'plus', 'more', 20),
  (20, 1, 'pouvoir', 'to be able to', 21),
  (21, 1, 'par', 'by', 22),
  (22, 1, 'je', 'I', 23),
  (23, 1, 'avec', 'with', 24),
  (24, 1, 'tout', 'all', 25),
  (25, 1, 'faire', 'to do', 26),
  (26, 1, 'son', 'his', 27),
  (27, 1, 'mettre', 'to put', 28),
  (28, 1, 'autre', 'other', 29),
  (29, 1, 'on', 'we', 30),
  (30, 1, 'mais', 'but', 31),
  (31, 1, 'nous', 'we', 32),
  (32, 1, 'comme', 'like', 33),
  (33, 1, 'ou', 'or', 34),
  (34, 1, 'si', 'if', 35),
  (35, 1, 'leur', 'their', 36),
  (36, 1, 'y', 'there', 37),
  (37, 1, 'dire', 'to say', 38),
  (38, 1, 'elle', 'her', 39),
  (39, 1, 'devoir', 'to have to', 40),
  (40, 1, 'avant', 'before', 41),
  (41, 1, 'femme (fem.)', 'woman', 42),
  (42, 1, 'homme (masc.)', 'man', 43),
  (43, 1, 'ami/amie (masc./fem.)', 'friend', 44),
  (44, 1, 'maison (fem.)', 'house', 45),
  (45, 1, 'monde (masc.)', 'world', 46),
  (46, 1, 'travail (masc.)', 'work', 47),
  (47, 1, 'ecole (fem.)', 'school', 48),
  (48, 1, 'voyage (masc.)', 'trip', 49),
  (49, 1, 'livre (masc.)', 'book', 50),
  (50, 1, 'lumiere (fem.)', 'light', 51),
  (51, 1, 'phrase (fem.)', 'sentence', 52),
  (52, 1, 'tu', 'you', 53),
  (53, 1, 'vous', 'you all', 54),
  (54, 1, 'ils', 'they', 55),
  (55, 1, 'elles', 'they', 56),
  (56, 1, 'mon/ma/mes', 'my', 57),
  (57, 1, 'ton/ta/tes', 'your', 58),
  (58, 1, 'son/sa/ses', 'his, her', 59),
  (59, 1, 'notre/nos', 'our', 60),
  (60, 1, 'votre/vos', 'your', 61),
  (61, 1, 'leur/leurs', 'their', 62),
  (62, 1, 'rouge', 'red', 63),
  (63, 1, 'bleu', 'blue', 64),
  (64, 1, 'vert', 'green', 65),
  (65, 1, 'jaune', 'yellow', 66),
  (66, 1, 'rose', 'pink', 67),
  (67, 1, 'blanc', 'white', 68),
  (68, 1, 'noir', 'black', 69),
  (69, 1, 'simple', 'simple', 70),
  (70, 1, 'dur', 'hard', 71),
  (71, 1, 'petit', 'small', 72),
  (72, 1, 'grand', 'big', 73),
  (73, 1, 'mince', 'thin', 74),
  (74, 1, 'chaud', 'hot', 75),
  (75, 1, 'froid', 'cold', 76),
  (76, 1, 'bon', 'good', 77),
  (77, 1, 'mauvais', 'bad', 78),
  (78, 1, 'vieux', 'old', 79),
  (79, 1, 'jeune', 'young', 80),
  (80, 1, 'heureux', 'happy', 81),
  (81, 1, 'triste', 'sad', 82),
  (82, 1, 'apres', 'after', 83),
  (83, 1, 'contre', 'against', 84),
  (84, 1, 'depuis', 'since', 85),
  (85, 1, 'derriere', 'behind', 86),
  (86, 1, 'devant', 'in front of', 87),
  (87, 1, 'pendant', 'during', 88),
  (88, 1, 'entre', 'between', 89),
  (89, 1, 'sous', 'under', 90),
  (90, 1, 'pres', 'close', 91),
  (91, 1, 'sans', 'without', 92),
  (92, 1, 'ici', 'here', 93),
  (93, 1, 'loin', 'far', 94),
  (94, 1, 'assez', 'enough', 95),
  (95, 1, 'beaucoup', 'a lot', 96),
  (96, 1, 'peu', 'few', 97),
  (97, 1, 'tres', 'very', 98),
  (98, 1, 'jamais', 'never', 99),
  (99, 1, 'longtemps', 'long time', 100),
  (100, 1, 'ensemble', 'together', 101),
  (101, 1, 'aimer', 'love', 102),
  (102, 1, 'aller', 'go', 103),
  (103, 1, 'vouloir', 'want', 104),
  (104, 1, 'jouer', 'play', 105),
  (105, 1, 'lire', 'read', 106),
  (106, 1, 'ajouter', 'add', 107),
  (107, 1, 'epeler', 'spell', 108),
  (108, 1, 'essayer', 'try', 109),
  (109, 1, 'voyager', 'travel', 110),
  (110, 1, 'ecouter', 'listen', 111),
  (111, 1, 'parler', 'talk', 112),
  (112, 1, 'construire', 'build', 113),
  (113, 1, 'prendre', 'take', 114),
  (114, 1, 'obtenir', 'get', 115),
  (115, 1, 'donner', 'give', 116),
  (116, 1, 'penser', 'think', 117),
  (117, 1, 'signifier', 'mean', 118),
  (118, 1, 'utiliser', 'use', 119),
  (119, 1, 'ecrire', 'write', 120),
  (120, 1, 'voir', 'see', 121),
  (121, 1, 'regarder', 'look', null);

 
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

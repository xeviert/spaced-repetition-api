BEGIN;

TRUNCATE
  "word",
  "language",
  "user";

INSERT INTO "user" ("id", "username", "name", "password")
VALUES
  (
    1,
    'admin',
    'admin',
    -- password = "pass"
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
  );

INSERT INTO "language" ("id", "name", "user_id")
VALUES
  -- (1, 'Italian ', 1);
  (2, 'French', 1);

INSERT INTO "word" ("id", "language_id", "original", "translation", "next")
VALUES
  -- (1, 1, 'mangiamo', 'lets eat', 2),
  -- (2, 1, 'insalata', 'salad', 3),
  -- (3, 1, 'vino', 'wine', 4),
  -- (4, 1, 'pesce', 'fish', 5),
  -- (5, 1, 'pane', 'bread', 6),
  -- (6, 1, 'caffe', 'espresso', 7),
  -- (7, 1, 'delizioso', 'delicious', 8),
  -- (8, 1, 'grazie', 'thank you', null);
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
  (40, 2, 'avant', 'before', null);

--   41. deux (det., noun [m.]) two
-- 42. même (adj., pron.) same; (adv.) even
-- 43. prendre (verb) to take
-- 44. aussi (adv.) to, also; (conj.) as
-- 45. celui (pron.) that, the one, he, him
-- 46. donner (verb) to give
-- 47. bien (adv.) well; (noun [m.]) good
-- 48. où (adv., pron.) where
-- 49. fois (noun [f.]) time(s)
-- 50. vous (pron.) you
-- 51. encore (adv.) again, yet
-- 52. nouveau (adj.) new; (noun [m.]) new (thing)
-- 53. aller (verb) to go
-- 54. cela (pron.) that, it
-- 55. entre (prep.) between
-- 56. premier (det., adj.) first
-- 57. vouloir (verb) to want; (noun [m.]) will, desire
-- 58. déjà (adv.) already
-- 59. grand (adj., adv.) great, big, tall
-- 60. mon (det.) my
-- 61. me (pron.) me, to me, myself
-- 62. moins (adv.) less; (prep., noun [m.]) minus
-- 63. aucun (det., adj., pron.) none, either, neither, not any
-- 64. lui (pron.) him, her
-- 65. temps (noun [m.]) time
-- 66. très (adv.) very
-- 67. savoir (verb) to know; (noun [m.]) learning, knowledge
-- 68. falloir (verb) to take, require, need
-- 69. voir (verb) to see
-- 70. quelque (det., adj., adv.) some
-- 71. sans (prep.) without
-- 72. raison (noun [f.]) reason
-- 73. notre (det.) our
-- 74. dont (pron.) whose, of which
-- 75. non (adv.) no, not
-- 76. an (noun [m.]) year
-- 77. monde (noun [m.]) world, people
-- 78. jour (noun [m.]) day
-- 79. monsieur (noun [m.]) mister, sir, gentleman
-- 80. demander (verb) to ask for
-- 81. alors (adv.) then, so
-- 82. après (adv., prep.) after
-- 83. trouver (verb) to find
-- 84. personne (noun [f.]) person; (pron.) anyone, nobody
-- 85. rendre (verb) to render, return, yield, give up
-- 86. part (noun [f.]) share
-- 87. dernier (adj). last
-- 88. venir (verb) to come
-- 89. pendant (adj.) during; (prep.) for; (noun [m.]) pendant
-- 90. passer (verb) to pass
-- 91. peu (adv.) little
-- 92. lequel (pron.) who, whom, which
-- 93. suite (noun [f.]) result, follow-up, rest
-- 94. bon (adj., adv.) good; (noun [m.]) coupon, voucher
-- 95. comprendre (verb) to understand
-- 96. depuis (prep., adv.) since
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

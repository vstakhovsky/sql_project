--
-- File generated with SQLiteStudio v3.1.1 
--
-- 
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: gameplays
CREATE TABLE gameplays (
    id INTEGER,
    user_id INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    platform CHAR(20)
    );
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (0, 225, '2016-12-19 22:47:32', 'iOS');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (1, 175, '2016-12-19 22:49:40', 'Android');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (2, 453, '2016-12-20 22:49:40', 'Web');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (3, 438, '2016-12-20 22:49:40', 'Web');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (4, 291, '2016-12-21 22:49:40', 'iOS');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (5, 904, '2016-12-21 22:49:40', 'iOS');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (6, 431, '2016-12-22 22:49:40', 'Android');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (7, 576, '2016-12-22 22:49:40', 'Web');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (8, 975, '2016-12-23 22:49:40', 'Web');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (9, 864, '2016-12-23 22:49:40', 'iOS');
INSERT INTO gameplays (id, user_id, created_at, platform) VALUES (10, 193, '2016-12-24 22:49:40', 'Android');

-- Table: purchases
CREATE TABLE purchases (
    id INTEGER,
    user_id INTEGER,
    price REAL, 
    refunded_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (0, 255, 1.5, NULL, '2016-12-19 22:40:08');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (1, 448, 0.5, NULL, '2016-12-19 22:41:08');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (2, 238, 4.5, NULL, '2016-12-20 22:41:08');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (3, 448, 0.5, NULL, '2016-12-21 22:41:08');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (4, 448, 0.5, NULL, '2016-12-21 22:41:10');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (5, 428, 1.5, NULL, '2016-12-21 22:46:14');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (6, 148, 3.5, NULL, '2016-12-22 22:46:14');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (7, 235, 4.5, NULL, '2016-12-22 22:46:14');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (8, 184, 1.5, NULL, '2016-12-23 22:46:14');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (9, 395, 0.5, NULL, '2016-12-24 22:46:14');
INSERT INTO purchases (id, user_id, price, refunded_at, created_at) VALUES (10, 233, 0.5, NULL, '2016-12-24 22:46:14');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

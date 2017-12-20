INSERT INTO gender(id, description) values (1, 'female');
INSERT INTO gender(id, description) values (2, 'male');
INSERT INTO gender(id, description) values (3, 'unknown');

INSERT INTO kind(id, details) VALUES (1, 'Ventrue');
INSERT INTO kind(id, details) VALUES (2, 'Brujah');
INSERT INTO kind(id, details) VALUES (3, 'Malkavian');
INSERT INTO kind(id, details) VALUES (4, 'Tremere');
INSERT INTO kind(id, details) VALUES (5, 'Toreador');
INSERT INTO kind(id, details) VALUES (6, 'Nosferatu');
INSERT INTO kind(id, details) VALUES (7, 'Lasombra');
INSERT INTO kind(id, details) VALUES (8, 'Tzimisce');
INSERT INTO kind(id, details) VALUES (9, 'Assamite');
INSERT INTO kind(id, details) VALUES (10, 'Giovanni');
INSERT INTO kind(id, details) VALUES (11, 'Gangrel');
INSERT INTO kind(id, details) VALUES (12, 'Setite');
INSERT INTO kind(id, details) VALUES (13, 'Ventrue antitribu');
INSERT INTO kind(id, details) VALUES (14, 'Brujah antitribu');
INSERT INTO kind(id, details) VALUES (15, 'Malkavian antitribu');
INSERT INTO kind(id, details) VALUES (16, 'Tremere antitribu');
INSERT INTO kind(id, details) VALUES (17, 'Toreador antitribu');
INSERT INTO kind(id, details) VALUES (18, 'Nosferatu antitribu');
INSERT INTO kind(id, details) VALUES (19, 'Lasombra antitribu');
INSERT INTO kind(id, details) VALUES (20, 'Tzimisce antitribu');
INSERT INTO kind(id, details) VALUES (21, 'Assamite antitribu');
INSERT INTO kind(id, details) VALUES (22, 'Giovanni antitribu');
INSERT INTO kind(id, details) VALUES (23, 'Gangrel antitribu');
INSERT INTO kind(id, details) VALUES (24, 'Setite antitribu');
INSERT INTO kind(id, details) VALUES (25, 'Caitiff');
INSERT INTO kind(id, details) VALUES (26, 'Panders');
INSERT INTO kind(id, details) VALUES (27, 'Daughters of Cacophony');
INSERT INTO kind(id, details) VALUES (28, 'Samedi');
INSERT INTO kind(id, details) VALUES (29, 'Salubri antitribu');

INSERT INTO place(id, name, details) VALUES (1, 'New York', 'Place_1_Details');
INSERT INTO place(id, name, details) VALUES (2, 'London', 'Place_2_Details');
INSERT INTO place(id, name, details) VALUES (3, 'Paris', 'Place_3_Details');
INSERT INTO place(id, name, details) VALUES (4, 'Moscow', 'Place_4_Details');
INSERT INTO place(id, name, details) VALUES (5, 'Budapest', 'Place_5_Details');

INSERT INTO person(id, name, birth_date, death_date, details, kind_id, gender_id) VALUES (1, 'Test Person', TO_DATE('06/06/2006', 'mm/dd/yyyy'), TO_DATE('07/07/2020', 'mm/dd/yyyy'), 'some details', 1, 2);
INSERT INTO person(id, name, birth_date, death_date, details, kind_id, gender_id) VALUES (2, 'Test Persona', TO_DATE('02/14/1923', 'mm/dd/yyyy'), TO_DATE('07/07/2020', 'mm/dd/yyyy'), 'a few words', 2, 1);
INSERT INTO person(id, name, birth_date, death_date, details, kind_id, gender_id) VALUES (3, 'The third guy', TO_DATE('01/01/1992', 'mm/dd/yyyy'), TO_DATE('07/07/2020', 'mm/dd/yyyy'), 'a few words', 12, 3);

INSERT INTO event(id, date, description, details, place_id) VALUES (1, TO_DATE('11/18/2017', 'mm/dd/yyyy'), 'Some great event', 'This is really a great event', 1);
INSERT INTO event(id, date, description, details, place_id) VALUES (2, TO_DATE('02/16/2017', 'mm/dd/yyyy'), 'Another remarkable event', 'This is a truely reamarkable event', 1);

INSERT INTO event_participants(event_id, participants_id) VALUES (1, 1);
INSERT INTO event_participants(event_id, participants_id) VALUES (1, 2);
INSERT INTO event_participants(event_id, participants_id) VALUES (2, 1);
INSERT INTO event_participants(event_id, participants_id) VALUES (2, 2);
INSERT INTO event_participants(event_id, participants_id) VALUES (2, 3);
-- Вставка типов мероприятий
INSERT INTO ActivityType (ActivityTypeId, Name)
VALUES (1, 'Concert'),
       (2, 'Masterclass'),
       (3, 'Exhibition');

-- Вставка мероприятий
INSERT INTO Activity (ActivityId, ParentId, ActivityTypeId, Name, AreaId)
VALUES (1, NULL, 1, 'Linkin Park Concert', 1),
       (2, 1, 2, 'Street Art Workshop', 2),
       (3, 1, 2, 'Sculpture Workshop', 3),
       (4, 2, 1, 'Neffex Concert', 1),
       (5, 2, 3, 'Van Gogh Exhibition', 3),
       (6, NULL, 3, 'Modern Art Exhibition', 2);

-- Вставка программ мероприятий
INSERT INTO Program (ActivityId)
VALUES (1),
       (2),
       (3),
       (6);

-- Вставка подпрограмм мероприятий
INSERT INTO SubProgram (ActivityId)
VALUES (4),
       (5);

-- Вставка проектов
INSERT INTO Project (ActivityId)
VALUES (2),
       (3),
       (4),
       (5);

-- Вставка контрактов
INSERT INTO Contract (ActivityId, AreaId)
VALUES (3, 1),
       (4, 2),
       (6, 3);

-- Вставка точек мероприятий
INSERT INTO Point (ActivityId)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (6);

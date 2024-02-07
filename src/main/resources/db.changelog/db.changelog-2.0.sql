--liquibase formatted sql

--changeset jjasinovski:1
INSERT INTO  author  VALUES (9,'Пауло Коэльо','1947-02-11'),(10,'Дарья Донцова','1952-06-07'),(11,'Джоан Роулинг','1965-07-31'),(12,'Чайлд Ли','1954-10-29'),(13,'Татьяна Устинова','1968-04-21'),(14,'Эрих Мария Ремарк','1898-06-22'),(15,'Владимир Набоков','1899-04-22'),(16,'Памела Трэверс','1899-08-09'),(17,'Тестовый автор','1786-02-03'),(18,'Михаил Юрьевич Лермонтов','1814-10-16'),(19,'Пушкин Александр Сергеевич','1799-06-06'),(20,'Борис Акунин','1863-06-25'),(21,'Теофиль Готье','1865-03-20'),(22,'Дэвид Вайз','1956-03-01'),(23,'Джефри Янг','1962-04-02'),(24,'Чарльз Диккенс','1867-03-06'),(25,'Николай Лесков','1895-04-04'),(28,'Новый автор','1111-11-11'),(29,'Еще автор','1111-11-11');

--changeset jjasinovski:2
INSERT INTO  genre  VALUES (10,'Детектив'),(11,'Мистика'),(12,'Юмор'),(13,'Исторический'),(14,'Роман'),(15,'Сказка'),(16,'Приключения'),(17,'Бизнес'),(18,'Боевик'),(19,'Религия'),(20,'Компьютеры'),(21,'Семья'),(22,'Психология'),(24,'Биография'),(25,'Вестерн'),(26,'Драма'),(27,'Фэнтези'),(28,'Мемуары'),(29,'Рассказ'),(30,'Пьеса'),(31,'Новый жанр');

--changeset jjasinovski:3
INSERT INTO  publisher  VALUES (8,'Весь'),(9,'Эксмо22'),(10,'Литер'),(15,'Издатель1');

--changeset jjasinovski:4
INSERT INTO  users  VALUES (1,'admin','$2a$08$UOKI6/WF0M2vEVSCkbk8eugxGUoscOqvM.WUcWDcOENpMRuzS4NZq',1,'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),(2,'user','$2a$06$3lcBEDa9dKbDIY/9tf7e/u/U61LKdKYNWM/USNUmYN8CXfwi.ZrWG',1,'04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb');

--changeset jjasinovski:5
INSERT INTO  user_roles  VALUES (1,'admin','ROLE_ADMIN'),(4,'user','ROLE_USER');

--changeset jjasinovski:6
-- INSERT INTO  vote  VALUES (380,5,13,'admin'),(381,5,13,'admin'),(382,5,13,'admin'),(383,5,13,'admin'),(384,3,12,'admin'),(385,1,13,'admin'),(386,3,21,'admin'),(387,3,20,'admin'),(388,5,13,'admin'),(389,4,5,'admin'),(390,5,5,'admin');

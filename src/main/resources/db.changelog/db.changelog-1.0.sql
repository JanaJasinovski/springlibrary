--liquibase formatted sql


--changeset jjasinovski:1
CREATE TABLE author (
                           id  BIGSERIAL NOT NULL ,
                           fio  varchar(300) NOT NULL,
                           birthday  date NOT NULL,
                          PRIMARY KEY ( id )
);


--changeset jjasinovski:2
CREATE TABLE genre (
                          id  BIGSERIAL NOT NULL ,
                          name  varchar(100) NOT NULL,
                         PRIMARY KEY ( id )
);

--changeset jjasinovski:3
CREATE TABLE publisher (
                              id  BIGSERIAL NOT NULL ,
                              name  varchar(100) NOT NULL,
                             PRIMARY KEY ( id )
);

--changeset jjasinovski:4
CREATE TABLE users (
                         id  BIGSERIAL NOT NULL ,
                         username  varchar(50) DEFAULT NULL UNIQUE,
                         password  varchar(200) DEFAULT NULL,
                         enabled  smallint DEFAULT NULL,
                         password_sha256  varchar(100) DEFAULT NULL,
                        PRIMARY KEY ( id )
);

--changeset jjasinovski:5
CREATE TABLE user_roles (
                               id  BIGSERIAL NOT NULL ,
                               username  varchar(50) DEFAULT NULL UNIQUE,
                               role  varchar(50) DEFAULT NULL UNIQUE,
                              PRIMARY KEY ( id ),
                              CONSTRAINT  fk_username  FOREIGN KEY ( username ) REFERENCES  users  ( username ) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--changeset jjasinovski:6
CREATE TABLE book (
                      id BIGSERIAL PRIMARY KEY,
                      name VARCHAR(45) NOT NULL,
                      content BYTEA,
                      page_count INT NOT NULL,
                      isbn VARCHAR(100) NOT NULL,
                      genre_id BIGINT NOT NULL,
                      author_id BIGINT NOT NULL,
                      publish_year INT NOT NULL,
                      publisher_id BIGINT NOT NULL,
                      image BYTEA,
                      avg_rating INT DEFAULT 0,
                      total_vote_count BIGINT DEFAULT 0,
                      total_rating BIGINT DEFAULT 0,
                      view_count BIGINT DEFAULT 0,
                      descr VARCHAR(500),
                      UNIQUE (id),
                      UNIQUE (isbn),
                      FOREIGN KEY (author_id) REFERENCES author (id) ON UPDATE CASCADE,
                      FOREIGN KEY (genre_id) REFERENCES genre (id) ON UPDATE CASCADE,
                      FOREIGN KEY (publisher_id) REFERENCES publisher (id) ON UPDATE CASCADE
);

-- Добавляем индексы
CREATE INDEX fk_author_idx ON book (author_id);
CREATE INDEX fk_genre_idx ON book (genre_id);
CREATE INDEX fk_publisher_idx ON book (publisher_id);

--changeset jjasinovski:7
CREATE TABLE vote (
                      id BIGSERIAL PRIMARY KEY,
                      value INT DEFAULT 0,
                      book_id BIGINT NOT NULL,
                      username VARCHAR(100) NOT NULL,
                      UNIQUE (id),
                      FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE INDEX fk_book_id_idx ON vote (book_id);
CREATE INDEX fk_user_id_idx ON vote (username);


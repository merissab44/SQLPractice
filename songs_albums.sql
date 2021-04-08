CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

CREATE TABLE Songs(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('Wonder', 'Shawn Mendes', 2020),
    ('Clouds', 'NF', 2021),
    ('Hotel California', 'Eagles', 1976),
    ('Paranoid', 'Black Sabbath', 1970),
    ('I love California', 'Random Artist', 1974),
    ('Shine', 'P-LO', 2020),
    ('The Beautiful and Damned', 'G-Eazy', 2020),
    ('Toys in the Attic', 'Aerosmith', 1975)
;

INSERT INTO Songs 
    (title, album_id)
VALUES
    ('Look up at the Stars',1),
    ('Layers',2),
    ('Rotation',3),
    ('War Pigs',4),
    ('Random Song',5),
    ('Shine',6),
    ('Boss Tycoon',7),
    ('Sweet Emotion', 8)
;

/* Required to get result in column format */
.headers on
.mode column


/* Queries */
SELECT * FROM Songs;
SELECT"";

SELECT * FROM Albums;
SELECT "";
/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */
.print ''
.print 'Task 1: '
SELECT Albums.id, Albums.name, Songs.title FROM Albums
JOIN Songs 
ON Albums.id = 
Songs.album_id;
/*
 * TODO: Find all albums published between 1970 and 1980.
 */
.print ''
.print 'Task 2: '
 SELECT * FROM Albums
 WHERE year_published > 1970 and year_published < 1980;

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
.print ''
.print 'Task 3: '
 SELECT Albums.year_published, Songs.title FROM Albums
 JOIN Songs
 ON Albums.id = 
 Songs.album_id
 WHERE year_published > 1970 and year_published < 1980;
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */
.print ''
.print 'Task 4: '
 SELECT Albums.name,Songs.title FROM Albums
 JOIN Songs
 ON Albums.id = 
 Songs.album_id
 WHERE name LIKE "%California%"
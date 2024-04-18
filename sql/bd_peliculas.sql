DROP DATABASE IF EXISTS bd_peliculas;
CREATE DATABASE bd_peliculas;

USE bd_peliculas;

CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE movies (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(100) NOT NULL UNIQUE,
    year INT UNSIGNED NOT NULL,
    duration INT UNSIGNED NOT NULL,
    poster VARCHAR(250) NOT NULL
);

CREATE TABLE people (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    yearOfBirth INT UNSIGNED NOT NULL,
    country VARCHAR(50) NOT NULL,
    picture VARCHAR(250) NOT NULL
);

CREATE TABLE act (
	idMovie INT UNSIGNED NOT NULL,
    idPerson INT UNSIGNED NOT NULL,
    
    PRIMARY KEY (idMovie,idPerson),
    
    FOREIGN KEY (idMovie) REFERENCES movies (id),
    FOREIGN KEY (idPerson) REFERENCES people (id)
);

CREATE TABLE direct (
	idMovie INT UNSIGNED NOT NULL,
    idPerson INT UNSIGNED NOT NULL,
    
    PRIMARY KEY (idMovie,idPerson),
    
    FOREIGN KEY (idMovie) REFERENCES movies (id),
    FOREIGN KEY (idPerson) REFERENCES people (id)
);


INSERT INTO users (name, password) VALUES
('Sophia_Miller', 'Sm2024!'),
('James.Johnson', 'Jjpassword123'),
('Emma.Wilson', 'EmmaW2024'),
('Michael.Brown', 'MikeB4321'),
('Olivia.Smith', 'LivSmith22'),
('Ethan.Roberts', 'EthanR2024'),
('Isabella.Davis', 'BellaD2024!'),
('Matthew.Thomas', 'MattyT123'),
('Ava.Moore', 'AvaM2023'),
('Daniel.Taylor', 'DanT4321'),
('Mia.White', 'MiaW1234'),
('Alexander.Jones', 'AlexJ2024'),
('Charlotte.Green', 'Char2023G'),
('Lucas.Clark', 'LucasC2024'),
('Amelia.Harris', 'AmeliaH21'),
('Benjamin.Martin', 'BenjM2024'),
('Mason.Thompson', 'MasonT22'),
('Harper.Garcia', 'HarpG2024'),
('Elijah.Lopez', 'EliLopez123'),
('Lily.Anderson', 'LilyA2023'),
('Noah.Lee', 'NoahL4321'),
('Grace.Hall', 'GraceH21'),
('Logan.Young', 'LoganY2024'),
('Zoe.King', 'ZoeK1234'),
('Aiden.Wright', 'AidenW2024'),
('Chloe.Scott', 'ChloeS23'),
('Liam.Evans', 'LiamE2024'),
('Emily.Hill', 'EmHill2024'),
('Jacob.Turner', 'JakeT123'),
('Madison.Phillips', 'MaddieP2023'),
('Oliver.Campbell', 'OliverC21'),
('Ava.Parker', 'AvaP2023!'),
('William.Mitchell', 'WillM2024'),
('Sophia.Jackson', 'SophieJ2022'),
('James.Morris', 'JamesM123'),
('Isabella.Lewis', 'BellaL2024'),
('Michael.Robinson', 'MikeRob2023'),
('Gabriel.Edwards', 'GabeE2024'),
('Mia.Richardson', 'MiaRich21'),
('Benjamin.Walker', 'BenW2023'),
('Elijah.Allen', 'EliA2024'),
('Harper.Young', 'HarperY22'),
('Charlotte.Russell', 'CharR2024'),
('Jack.Martinez', 'JackM4321'),
('Olivia.Cox', 'LivC2023'),
('Henry.Ward', 'HenryW24'),
('Ava.Murphy', 'AvaM2024'),
('Matthew.Morris', 'MattM2023'),
('Zoe.Nelson', 'ZoeN123'),
('Alexander.Carter', 'AlexC2024'),
('Chloe.Morgan', 'ChloeM2024'),
('Liam.Foster', 'LiamF2023'),
('Grace.Reed', 'GraceR2024'),
('Lucas.Bell', 'LucasB21'),
('Mason.Baker', 'MasonB23'),
('Amelia.Rivera', 'AmyR2024'),
('Ethan.Cook', 'EthanC22'),
('Elijah.Bailey', 'EliB2024'),
('Aiden.Clark', 'AidenC123'),
('Lily.Adams', 'LilyA2024'),
('James.Diaz', 'JamesD21'),
('Charlotte.Turner', 'LottieT22'),
('Noah.Hughes', 'NoahH2023'),
('Sophia.Price', 'SophP2024'),
('Jacob.Bennett', 'JakeB2024'),
('Madison.Wood', 'MaddieW21'),
('Oliver.Perry', 'OliverP2023'),
('William.Barnes', 'WillyB2024'),
('Mia.Ross', 'MiaR4321'),
('Alexander.Henderson', 'AlexH2023'),
('Isabella.Palmer', 'BellaP22'),
('Daniel.Jenkins', 'DanJ2024'),
('Grace.Brooks', 'GraceB2023'),
('Michael.Stewart', 'MikeS2024'),
('Emily.Bell', 'EmilyB21'),
('Gabriel.Coleman', 'GabeC2024'),
('Chloe.Gray', 'ChloeG123'),
('Liam.James', 'LiamJ2024'),
('Jack.Peterson', 'JackP2023'),
('Amelia.Sanders', 'AmeliaS22'),
('Logan.Meyer', 'LoganM2024'),
('Ava.Bishop', 'AvaB21'),
('Lucas.Kennedy', 'LukeK2023'),
('Mason.Grant', 'MasonG24'),
('Zoe.Ward', 'ZoeW2024'),
('Aiden.Fox', 'AidenF2023'),
('Lily.Chapman', 'LilyC22'),
('Ethan.Daniels', 'EthanD2024'),
('Elijah.Marshall', 'EliM2023'),
('Henry.ortiz', 'HenryO2024'),
('Sophia.Gibson', 'SophieG21'),
('James.Watson', 'JamesW2023'),
('Charlotte.Ferguson', 'LottieF22'),
('Noah.Rose', 'NoahR2024');

INSERT INTO movies (title, year, duration, poster) VALUES
('The Great Escape', 1963, 172, 'https://example.com/posters/thegreatescape.jpg'),
('A Beautiful Mind', 2001, 135, 'https://example.com/posters/abeautifulmind.jpg'),
('The Matrix', 1999, 136, 'https://example.com/posters/thematrix.jpg'),
('Inception', 2010, 148, 'https://example.com/posters/inception.jpg'),
('Forrest Gump', 1994, 142, 'https://example.com/posters/forrestgump.jpg'),
('Gladiator', 2000, 155, 'https://example.com/posters/gladiator.jpg'),
('Titanic', 1997, 195, 'https://example.com/posters/titanic.jpg'),
('Avatar', 2009, 162, 'https://example.com/posters/avatar.jpg'),
('The Dark Knight', 2008, 152, 'https://example.com/posters/thedarkknight.jpg'),
('Pulp Fiction', 1994, 154, 'https://example.com/posters/pulpfiction.jpg'),
('Schindler\'s List', 1993, 195, 'https://example.com/posters/schindlerslist.jpg'),
('The Shawshank Redemption', 1994, 142, 'https://example.com/posters/shawshankredemption.jpg'),
('Braveheart', 1995, 178, 'https://example.com/posters/braveheart.jpg'),
('The Godfather', 1972, 175, 'https://example.com/posters/thegodfather.jpg'),
('Jurassic Park', 1993, 127, 'https://example.com/posters/jurassicpark.jpg'),
('The Lion King', 1994, 88, 'https://example.com/posters/thelionking.jpg'),
('Star Wars: Episode IV - A New Hope', 1977, 121, 'https://example.com/posters/starwarsanh.jpg'),
('Back to the Future', 1985, 116, 'https://example.com/posters/backtothefuture.jpg'),
('The Silence of the Lambs', 1991, 118, 'https://example.com/posters/thesilenceofthelambs.jpg'),
('Saving Private Ryan', 1998, 169, 'https://example.com/posters/savingprivateryan.jpg'),
('Coco', 2017, 105, 'https://example.com/posters/coco.jpg'),
('Interstellar', 2014, 169, 'https://example.com/posters/interstellar.jpg'),
('The Prestige', 2006, 130, 'https://example.com/posters/theprestige.jpg'),
('The Green Mile', 1999, 189, 'https://example.com/posters/thegreenmile.jpg'),
('The Departed', 2006, 151, 'https://example.com/posters/thedeparted.jpg'),
('Django Unchained', 2012, 165, 'https://example.com/posters/djangounchained.jpg'),
('The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'https://example.com/posters/lotrfellowship.jpg'),
('The Lord of the Rings: The Two Towers', 2002, 179, 'https://example.com/posters/lotrtwotowers.jpg'),
('The Lord of the Rings: The Return of the King', 2003, 201, 'https://example.com/posters/lotrreturnking.jpg'),
('The Terminator', 1984, 107, 'https://example.com/posters/theterminator.jpg'),
('Terminator 2: Judgment Day', 1991, 137, 'https://example.com/posters/terminator2.jpg'),
('Blade Runner', 1982, 117, 'https://example.com/posters/bladerunner.jpg'),
('Alien', 1979, 117, 'https://example.com/posters/alien.jpg'),
('Aliens', 1986, 137, 'https://example.com/posters/aliens.jpg'),
('Mad Max: Fury Road', 2015, 120, 'https://example.com/posters/madmaxfuryroad.jpg'),
('Casino Royale', 2006, 144, 'https://example.com/posters/casinoroyale.jpg'),
('Skyfall', 2012, 143, 'https://example.com/posters/skyfall.jpg'),
('The Hunger Games', 2012, 142, 'https://example.com/posters/thehungergames.jpg'),
('La La Land', 2016, 128, 'https://example.com/posters/lalaland.jpg'),
('Gone Girl', 2014, 149, 'https://example.com/posters/gonegirl.jpg'),
('Fight Club', 1999, 139, 'https://example.com/posters/fightclub.jpg'),
('The Curious Case of Benjamin Button', 2008, 166, 'https://example.com/posters/benjaminbutton.jpg'),
('The Social Network', 2010, 120, 'https://example.com/posters/thesocialnetwork.jpg'),
('Birdman', 2014, 119, 'https://example.com/posters/birdman.jpg'),
('Argo', 2012, 120, 'https://example.com/posters/argo.jpg'),
('Boyhood', 2014, 165, 'https://example.com/posters/boyhood.jpg'),
('Whiplash', 2014, 107, 'https://example.com/posters/whiplash.jpg'),
('Black Swan', 2010, 108, 'https://example.com/posters/blackswan.jpg'),
('Gravity', 2013, 91, 'https://example.com/posters/gravity.jpg'),
('Moonlight', 2016, 111, 'https://example.com/posters/moonlight.jpg'),
('The Imitation Game', 2014, 113, 'https://example.com/posters/theimitationgame.jpg'),
('The King\'s Speech', 2010, 118, 'https://example.com/posters/thekingsspeech.jpg'),
('Slumdog Millionaire', 2008, 120, 'https://example.com/posters/slumdogmillionaire.jpg'),
('The Theory of Everything', 2014, 123, 'https://example.com/posters/thetheoryofeverything.jpg'),
('Spotlight', 2015, 129, 'https://example.com/posters/spotlight.jpg'),
('The Revenant', 2015, 156, 'https://example.com/posters/therevenant.jpg'),
('Madagascar', 2005, 86, 'https://example.com/posters/madagascar.jpg'),
('Shrek', 2001, 90, 'https://example.com/posters/shrek.jpg'),
('Finding Nemo', 2003, 100, 'https://example.com/posters/findingnemo.jpg'),
('Toy Story', 1995, 81, 'https://example.com/posters/toystory.jpg'),
('Toy Story 3', 2010, 103, 'https://example.com/posters/toystory3.jpg'),
('Frozen', 2013, 102, 'https://example.com/posters/frozen.jpg'),
('Inside Out', 2015, 95, 'https://example.com/posters/insideout.jpg'),
('Up', 2009, 96, 'https://example.com/posters/up.jpg'),
('Monsters, Inc.', 2001, 92, 'https://example.com/posters/monstersinc.jpg'),
('The Incredibles', 2004, 115, 'https://example.com/posters/theincredibles.jpg'),
('Ratatouille', 2007, 111, 'https://example.com/posters/ratatouille.jpg'),
('WALL-E', 2008, 98, 'https://example.com/posters/walle.jpg'),
('Brave', 2012, 93, 'https://example.com/posters/brave.jpg'),
('Cars', 2006, 117, 'https://example.com/posters/cars.jpg'),
('Despicable Me', 2010, 95, 'https://example.com/posters/despicableme.jpg'),
('The Lego Movie', 2014, 100, 'https://example.com/posters/thelegomovie.jpg'),
('Kung Fu Panda', 2008, 92, 'https://example.com/posters/kungfupanda.jpg'),
('Zootopia', 2016, 108, 'https://example.com/posters/zootopia.jpg'),
('Big Hero 6', 2014, 102, 'https://example.com/posters/bighero6.jpg'),
('How to Train Your Dragon', 2010, 98, 'https://example.com/posters/howtotrainyourdragon.jpg'),
('Tangled', 2010, 100, 'https://example.com/posters/tangled.jpg'),
('Moana', 2016, 107, 'https://example.com/posters/moana.jpg'),
('The Little Mermaid', 1989, 83, 'https://example.com/posters/thelittlemermaid.jpg'),
('Beauty and the Beast', 1991, 84, 'https://example.com/posters/beautyandthebeast.jpg'),
('Aladdin', 1992, 90, 'https://example.com/posters/aladdin.jpg'),
('The Jungle Book', 1967, 78, 'https://example.com/posters/thejunglebook.jpg'),
('Pocahontas', 1995, 81, 'https://example.com/posters/pocahontas.jpg'),
('Mulan', 1998, 88, 'https://example.com/posters/mulan.jpg'),
('Dumbo', 1941, 64, 'https://example.com/posters/dumbo.jpg'),
('Bambi', 1942, 70, 'https://example.com/posters/bambi.jpg'),
('Cinderella', 1950, 74, 'https://example.com/posters/cinderella.jpg'),
('Peter Pan', 1953, 77, 'https://example.com/posters/peterpan.jpg'),
('Sleeping Beauty', 1959, 75, 'https://example.com/posters/sleepingbeauty.jpg'),
('101 Dalmatians', 1961, 79, 'https://example.com/posters/101dalmatians.jpg'),
('The Sword in the Stone', 1963, 79, 'https://example.com/posters/theswordinthestone.jpg'),
('The Aristocats', 1970, 78, 'https://example.com/posters/thearistocats.jpg'),
('Robin Hood', 1973, 83, 'https://example.com/posters/robinhood.jpg'),
('The Rescuers', 1977, 77, 'https://example.com/posters/therescuers.jpg'),
('The Fox and the Hound', 1981, 83, 'https://example.com/posters/thefoxandthehound.jpg'),
('The Black Cauldron', 1985, 80, 'https://example.com/posters/theblackcauldron.jpg'),
('The Great Mouse Detective', 1986, 74, 'https://example.com/posters/thegreatmousedetective.jpg'),
('Oliver & Company', 1988, 74, 'https://example.com/posters/oliverandcompany.jpg'),
('The Rescuers Down Under', 1990, 77, 'https://example.com/posters/therescuersdownunder.jpg'),
('The Hunchback of Notre Dame', 1996, 91, 'https://example.com/posters/thehunchbackofnotredame.jpg'),
('Hercules', 1997, 93, 'https://example.com/posters/hercules.jpg'),
('Tarzan', 1999, 88, 'https://example.com/posters/tarzan.jpg'),
('Atlantis: The Lost Empire', 2001, 95, 'https://example.com/posters/atlantisthelostempire.jpg'),
('Lilo & Stitch', 2002, 85, 'https://example.com/posters/liloandstitch.jpg'),
('Treasure Planet', 2002, 95, 'https://example.com/posters/treasureplanet.jpg'),
('Brother Bear', 2003, 85, 'https://example.com/posters/brotherbear.jpg'),
('Home on the Range', 2004, 76, 'https://example.com/posters/homeontherange.jpg'),
('Chicken Little', 2005, 81, 'https://example.com/posters/chickenlittle.jpg'),
('Meet the Robinsons', 2007, 95, 'https://example.com/posters/meettherobinsons.jpg'),
('Bolt', 2008, 96, 'https://example.com/posters/bolt.jpg'),
('The Princess and the Frog', 2009, 97, 'https://example.com/posters/theprincessandthefrog.jpg'),
('Winnie the Pooh', 2011, 63, 'https://example.com/posters/winniethepooh.jpg'),
('Wreck-It Ralph', 2012, 101, 'https://example.com/posters/wreckitralph.jpg'),
('Ralph Breaks the Internet', 2018, 112, 'https://example.com/posters/ralphbreakstheinternet.jpg'),
('Frozen II', 2019, 103, 'https://example.com/posters/frozen2.jpg'),
('Raya and the Last Dragon', 2021, 107, 'https://example.com/posters/rayaandthelastdragon.jpg'),
('Encanto', 2021, 99, 'https://example.com/posters/encanto.jpg'),
('Turning Red', 2022, 100, 'https://example.com/posters/turningred.jpg'),
('Strange World', 2022, 102, 'https://example.com/posters/strangeworld.jpg'),
('Elemental', 2023, 90, 'https://example.com/posters/elemental.jpg');

-- Insertar directores y actores para "The Matrix"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Lana', 'Wachowski', 1965, 'USA', 'url_to_lana_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Lilly', 'Wachowski', 1967, 'USA', 'url_to_lilly_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Keanu', 'Reeves', 1964, 'Lebanon', 'url_to_keanu_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Laurence', 'Fishburne', 1961, 'USA', 'url_to_laurence_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Carrie-Anne', 'Moss', 1967, 'Canada', 'url_to_car');

-- Insertar directores y actores para "Inception"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Christopher', 'Nolan', 1970, 'UK', 'url_to_christopher_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Leonardo', 'DiCaprio', 1974, 'USA', 'url_to_leonardo_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Joseph', 'Gordon-Levitt', 1981, 'USA', 'url_to_joseph_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Ellen', 'Page', 1987, 'Canada', 'url_to_ellen_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Tom', 'Hardy', 1977, 'UK', 'url_to_tom_picture');

-- Insertar directores y actores para "Forrest Gump"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Robert', 'Zemeckis', 1952, 'USA', 'url_to_robert_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Tom', 'Hanks', 1956, 'USA', 'url_to_tom_h_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Robin', 'Wright', 1966, 'USA', 'url_to_robin_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Gary', 'Sinise', 1955, 'USA', 'url_to_gary_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Sally', 'Field', 1946, 'USA', 'url_to_sally_picture');

-- Insertar directores y actores para "Titanic"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('James', 'Cameron', 1954, 'Canada', 'url_to_james_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Kate', 'Winslet', 1975, 'UK', 'url_to_kate_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Billy', 'Zane', 1966, 'USA', 'url_to_billy_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Kathy', 'Bates', 1948, 'USA', 'url_to_kathy_picture');

-- Insertar directores y actores para "Pulp Fiction"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Quentin', 'Tarantino', 1963, 'USA', 'url_to_quentin_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('John', 'Travolta', 1954, 'USA', 'url_to_john_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Uma', 'Thurman', 1970, 'USA', 'url_to_uma_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Samuel L.', 'Jackson', 1948, 'USA', 'url_to_samuel_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Bruce', 'Willis', 1955, 'USA', 'url_to_bruce_picture');

-- Insertar directores y actores para "The Dark Knight"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Christian', 'Bale', 1974, 'UK', 'url_to_christian_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Heath', 'Ledger', 1979, 'Australia', 'url_to_heath_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Aaron', 'Eckhart', 1968, 'USA', 'url_to_aaron_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Michael', 'Caine', 1933, 'UK', 'url_to_michael_picture');

-- Insertar directores y actores para "Schindler's List"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Steven', 'Spielberg', 1946, 'USA', 'url_to_steven_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Liam', 'Neeson', 1952, 'Ireland', 'url_to_liam_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Ben', 'Kingsley', 1943, 'UK', 'url_to_ben_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Ralph', 'Fiennes', 1962, 'UK', 'url_to_ralph_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Caroline', 'Goodall', 1959, 'UK', 'url_to_caroline_picture');

-- Insertar directores y actores para "The Godfather"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Francis Ford', 'Coppola', 1939, 'USA', 'url_to_francis_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Marlon', 'Brando', 1924, 'USA', 'url_to_marlon_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Al', 'Pacino', 1940, 'USA', 'url_to_al_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('James', 'Caan', 1940, 'USA', 'url_to_james_c_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Robert', 'Duvall', 1931, 'USA', 'url_to_robert_d_picture');

-- Insertar directores y actores para "Jurassic Park"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Sam', 'Neill', 1947, 'Ireland', 'url_to_sam_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Laura', 'Dern', 1967, 'USA', 'url_to_laura_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Jeff', 'Goldblum', 1952, 'USA', 'url_to_jeff_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Richard', 'Attenborough', 1923, 'UK', 'url_to_richard_picture');

-- Insertar directores y actores para "Toy Story"
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('John', 'Lasseter', 1957, 'USA', 'url_to_john_l_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Tom', 'Hanks', 1956, 'USA', 'url_to_tom_h_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Tim', 'Allen', 1953, 'USA', 'url_to_tim_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Don', 'Rickles', 1926, 'USA', 'url_to_don_picture');
INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES ('Jim', 'Varney', 1949, 'USA', 'url_to_jim_picture');


INSERT INTO direct (idMovie, idPerson) VALUES
(1, 1),  -- Inception, Christopher Nolan
(2, 1),  -- The Dark Knight, Christopher Nolan
(3, 2),  -- Saving Private Ryan, Steven Spielberg
(4, 3),  -- The Revenant, Alejandro González Iñárritu
(5, 4);  -- The Iron Lady, Meryl Streep (asumimos que Meryl Streep está representando a Margaret Thatcher en nuestra base de datos de personas)

INSERT INTO act (idMovie, idPerson) VALUES
(1, 6),  -- Inception, Leonardo DiCaprio
(2, 8),  -- The Dark Knight, Christian Bale
(3, 5),  -- Saving Private Ryan, Tom Hanks
(4, 6),  -- The Revenant, Leonardo DiCaprio
(5, 4),  -- The Iron Lady, Meryl Streep
(6, 5),  -- Forrest Gump, Tom Hanks
(7, 5),  -- Toy Story, Tom Hanks
(7, 7);  -- Toy Story, Tim Allen

SELECT * FROM users;

SELECT * FROM movies;

SELECT * FROM people;

SELECT movies.title, people.firstname, people.lastname
FROM act
JOIN movies ON act.idMovie = movies.id
JOIN people ON act.idPerson = people.id;

SELECT movies.title, people.firstname, people.lastname
FROM direct
JOIN movies ON direct.idMovie = movies.id
JOIN people ON direct.idPerson = people.id;

SELECT movies.id, movies.title
FROM movies
LEFT JOIN act ON movies.id = act.idMovie
WHERE act.idMovie IS NULL;

SELECT movies.id, movies.title
FROM movies
LEFT JOIN direct ON movies.id = direct.idMovie
WHERE direct.idMovie IS NULL;

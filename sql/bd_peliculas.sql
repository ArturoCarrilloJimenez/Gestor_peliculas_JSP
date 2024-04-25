DROP DATABASE IF EXISTS bd_peliculas;
CREATE DATABASE bd_peliculas;

USE bd_peliculas;

CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
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
    picture VARCHAR(250) NOT NULL,
    
    UNIQUE (firstname,lastname,yearOfBirth)
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

INSERT INTO users (username, password, first_name, lastname, email) VALUES
('johndoe01', 'password123', 'John', 'Doe', 'johndoe01@example.com'),
('janedoe02', 'password123', 'Jane', 'Doe', 'janedoe02@example.com'),
('michaellee03', 'password123', 'Michael', 'Lee', 'michaellee03@example.com'),
('sarahconnor04', 'password123', 'Sarah', 'Connor', 'sarahconnor04@example.com'),
('jamesbond05', 'password123', 'James', 'Bond', 'jamesbond05@example.com'),
('lisasmith06', 'password123', 'Lisa', 'Smith', 'lisasmith06@example.com'),
('robertbrown07', 'password123', 'Robert', 'Brown', 'robertbrown07@example.com'),
('laurawilson08', 'password123', 'Laura', 'Wilson', 'laurawilson08@example.com'),
('kevinwhite09', 'password123', 'Kevin', 'White', 'kevinwhite09@example.com'),
('mariagarcia10', 'password123', 'Maria', 'Garcia', 'mariagarcia10@example.com'),
('davidmartin11', 'password123', 'David', 'Martin', 'davidmartin11@example.com'),
('emmathompson12', 'password123', 'Emma', 'Thompson', 'emmathompson12@example.com'),
('chrisevans13', 'password123', 'Chris', 'Evans', 'chrisevans13@example.com'),
('jessicataylor14', 'password123', 'Jessica', 'Taylor', 'jessicataylor14@example.com'),
('mikeross15', 'password123', 'Mike', 'Ross', 'mikeross15@example.com'),
('sophiawilliams16', 'password123', 'Sophia', 'Williams', 'sophiawilliams16@example.com'),
('brianmoore17', 'password123', 'Brian', 'Moore', 'brianmoore17@example.com'),
('amandalopez18', 'password123', 'Amanda', 'Lopez', 'amandalopez18@example.com'),
('steveclark19', 'password123', 'Steve', 'Clark', 'steveclark19@example.com'),
('danielanderson20', 'password123', 'Daniel', 'Anderson', 'danielanderson20@example.com'),
('elizabethmason21', 'password123', 'Elizabeth', 'Mason', 'elizabethmason21@example.com'),
('johnrambo22', 'password123', 'John', 'Rambo', 'johnrambo22@example.com'),
('sandycheeks23', 'password123', 'Sandy', 'Cheeks', 'sandycheeks23@example.com'),
('tonystark24', 'password123', 'Tony', 'Stark', 'tonystark24@example.com'),
('brucewayne25', 'password123', 'Bruce', 'Wayne', 'brucewayne25@example.com'),
('clarkkent26', 'password123', 'Clark', 'Kent', 'clarkkent26@example.com'),
('dianaprince27', 'password123', 'Diana', 'Prince', 'dianaprince27@example.com'),
('peterparker28', 'password123', 'Peter', 'Parker', 'peterparker28@example.com'),
('stevejobs29', 'password123', 'Steve', 'Jobs', 'stevejobs29@example.com'),
('billgates30', 'password123', 'Bill', 'Gates', 'billgates30@example.com'),
('elonmusk31', 'password123', 'Elon', 'Musk', 'elonmusk31@example.com'),
('jeffbezos32', 'password123', 'Jeff', 'Bezos', 'jeffbezos32@example.com'),
('markzuckerberg33', 'password123', 'Mark', 'Zuckerberg', 'markzuckerberg33@example.com'),
('timcook34', 'password123', 'Tim', 'Cook', 'timcook34@example.com'),
('sundarpichai35', 'password123', 'Sundar', 'Pichai', 'sundarpichai35@example.com'),
('larrypage36', 'password123', 'Larry', 'Page', 'larrypage36@example.com'),
('sergeybrin37', 'password123', 'Sergey', 'Brin', 'sergeybrin37@example.com'),
('satyanadella38', 'password123', 'Satya', 'Nadella', 'satyanadella38@example.com'),
('susanwojcicki39', 'password123', 'Susan', 'Wojcicki', 'susanwojcicki39@example.com'),
('jackdorsey40', 'password123', 'Jack', 'Dorsey', 'jackdorsey40@example.com'),
('evanwilliams41', 'password123', 'Evan', 'Williams', 'evanwilliams41@example.com'),
('bizstone42', 'password123', 'Biz', 'Stone', 'bizstone42@example.com'),
('traviskalanick43', 'password123', 'Travis', 'Kalanick', 'traviskalanick43@example.com'),
('garrettcamp44', 'password123', 'Garrett', 'Camp', 'garrettcamp44@example.com'),
('danielzhang45', 'password123', 'Daniel', 'Zhang', 'danielzhang45@example.com'),
('maclark46', 'password123', 'Ma', 'Clark', 'maclark46@example.com'),
('jerrychen47', 'password123', 'Jerry', 'Chen', 'jerrychen47@example.com'),
('davidkarp48', 'password123', 'David', 'Karp', 'davidkarp48@example.com'),
('marissamayer49', 'password123', 'Marissa', 'Mayer', 'marissamayer49@example.com'),
('megwhitman50', 'password123', 'Meg', 'Whitman', 'megwhitman50@example.com'),
('annewilliams51', 'password123', 'Anne', 'Williams', 'annewilliams51@example.com'),
('joeblack52', 'password123', 'Joe', 'Black', 'joeblack52@example.com'),
('sarahparker53', 'password123', 'Sarah', 'Parker', 'sarahparker53@example.com'),
('roberthughes54', 'password123', 'Robert', 'Hughes', 'roberthughes54@example.com'),
('monicagreen55', 'password123', 'Monica', 'Green', 'monicagreen55@example.com'),
('larrysanders56', 'password123', 'Larry', 'Sanders', 'larrysanders56@example.com'),
('dianeking57', 'password123', 'Diana', 'King', 'dianeking57@example.com'),
('stevebrown58', 'password123', 'Steve', 'Brown', 'stevebrown58@example.com'),
('juliaroberts59', 'password123', 'Julia', 'Roberts', 'juliaroberts59@example.com'),
('davemorris60', 'password123', 'Dave', 'Morris', 'davemorris60@example.com'),
('emilywhite61', 'password123', 'Emily', 'White', 'emilywhite61@example.com'),
('michaelhall62', 'password123', 'Michael', 'Hall', 'michaelhall62@example.com'),
('laracooper63', 'password123', 'Lara', 'Cooper', 'laracooper63@example.com'),
('justinlong64', 'password123', 'Justin', 'Long', 'justinlong64@example.com'),
('vanessaking65', 'password123', 'Vanessa', 'King', 'vanessaking65@example.com'),
('ethanwright66', 'password123', 'Ethan', 'Wright', 'ethanwright66@example.com'),
('isabellayoung67', 'password123', 'Isabella', 'Young', 'isabellayoung67@example.com'),
('oliverlewis68', 'password123', 'Oliver', 'Lewis', 'oliverlewis68@example.com'),
('ameliahall69', 'password123', 'Amelia', 'Hall', 'ameliahall69@example.com'),
('jackriver70', 'password123', 'Jack', 'River', 'jackriver70@example.com'),
('charlottemartin71', 'password123', 'Charlotte', 'Martin', 'charlottemartin71@example.com'),
('nathanhill72', 'password123', 'Nathan', 'Hill', 'nathanhill72@example.com'),
('gracewhite73', 'password123', 'Grace', 'White', 'gracewhite73@example.com'),
('ryanknight74', 'password123', 'Ryan', 'Knight', 'ryanknight74@example.com'),
('chloewalker75', 'password123', 'Chloe', 'Walker', 'chloewalker75@example.com'),
('benclark76', 'password123', 'Ben', 'Clark', 'benclark76@example.com'),
('miascott77', 'password123', 'Mia', 'Scott', 'miascott77@example.com'),
('lucaswright78', 'password123', 'Lucas', 'Wright', 'lucaswright78@example.com'),
('sofiacarter79', 'password123', 'Sofia', 'Carter', 'sofiacarter79@example.com'),
('masonmiller80', 'password123', 'Mason', 'Miller', 'masonmiller80@example.com'),
('user', 'user', 'user', 'user', 'user@user.com'),
-- Continúa con más entradas...
('aaronlee250', 'password123', 'Aaron', 'Lee', 'aaronlee250@example.com');

INSERT INTO movies (title, year, duration, poster) VALUES
('The Great Escape', 1963, 172, 'https://s3.amazonaws.com/criterion-production/films/5a8da68d2d614bc2841f3133a9d1e16d/bPuyXlWNoUAC4cbWbL1Z08Q48keUKn_large.jpg'),
('A Beautiful Mind', 2001, 135, 'https://m.media-amazon.com/images/M/MV5BMzcwYWFkYzktZjAzNC00OGY1LWI4YTgtNzc5MzVjMDVmNjY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
('The Matrix', 1999, 136, 'https://es.web.img3.acsta.net/medias/nmedia/18/72/16/76/20065616.jpg'),
('Inception', 2010, 148, 'https://m.media-amazon.com/images/I/912AErFSBHL._AC_UF894,1000_QL80_DpWeblab_.jpg'),
('Forrest Gump', 1994, 142, 'https://pics.filmaffinity.com/Forrest_Gump-212765827-large.jpg'),
('Gladiator', 2000, 155, 'https://pics.filmaffinity.com/Gladiator-331143379-mmed.jpg'),
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

INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES
('Tom', 'Hanks', 1956, 'USA', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Tom_Hanks_at_the_Elvis_Premiere_2022.jpg'),
('Leonardo', 'DiCaprio', 1974, 'USA', 'https://pics.filmaffinity.com/107096988846060-nm_200.jpg'),
('Kate', 'Winslet', 1975, 'UK', 'https://es.web.img2.acsta.net/pictures/15/09/15/10/01/065591.jpg'),
('Christian', 'Bale', 1974, 'UK', 'https://m.media-amazon.com/images/M/MV5BMTkxMzk4MjQ4MF5BMl5BanBnXkFtZTcwMzExODQxOA@@._V1_.jpg'),
('Brad', 'Pitt', 1963, 'USA', 'https://example.com/pictures/brad-pitt.jpg'),
('Natalie', 'Portman', 1981, 'Israel/USA', 'https://example.com/pictures/natalie-portman.jpg'),
('Morgan', 'Freeman', 1937, 'USA', 'https://example.com/pictures/morgan-freeman.jpg'),
('Scarlett', 'Johansson', 1984, 'USA', 'https://example.com/pictures/scarlett-johansson.jpg'),
('Robert', 'Downey Jr.', 1965, 'USA', 'https://example.com/pictures/robert-downey-jr.jpg'),
('Angelina', 'Jolie', 1975, 'USA', 'https://example.com/pictures/angelina-jolie.jpg'),
('Emma', 'Watson', 1990, 'UK', 'https://example.com/pictures/emma-watson.jpg'),
('Michael', 'Bay', 1965, 'USA', 'https://example.com/pictures/michael-bay.jpg'),
('Keira', 'Knightley', 1985, 'UK', 'https://example.com/pictures/keira-knightley.jpg'),
('Johnny', 'Depp', 1963, 'USA', 'https://example.com/pictures/johnny-depp.jpg'),
('Tim', 'Burton', 1958, 'USA', 'https://example.com/pictures/tim-burton.jpg'),
('Meryl', 'Streep', 1949, 'USA', 'https://example.com/pictures/meryl-streep.jpg'),
('Jennifer', 'Lawrence', 1990, 'USA', 'https://example.com/pictures/jennifer-lawrence.jpg'),
('Chris', 'Hemsworth', 1983, 'Australia', 'https://example.com/pictures/chris-hemsworth.jpg'),
('Mark', 'Ruffalo', 1967, 'USA', 'https://example.com/pictures/mark-ruffalo.jpg'),
('Cate', 'Blanchett', 1969, 'Australia', 'https://example.com/pictures/cate-blanchett.jpg'),
('Christopher', 'Nolan', 1970, 'UK', 'https://example.com/pictures/christopher-nolan.jpg'),
('Quentin', 'Tarantino', 1963, 'USA', 'https://example.com/pictures/quentin-tarantino.jpg'),
('Sofia', 'Coppola', 1971, 'USA', 'https://example.com/pictures/sofia-coppola.jpg'),
('Martin', 'Scorsese', 1942, 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Martin_Scorsese-68754.jpg/1200px-Martin_Scorsese-68754.jpg'),
('Wes', 'Anderson', 1969, 'USA', 'https://example.com/pictures/wes-anderson.jpg'),
('Steven', 'Spielberg', 1946, 'USA', 'https://example.com/pictures/steven-spielberg.jpg'),
('Kathryn', 'Bigelow', 1951, 'USA', 'https://example.com/pictures/kathryn-bigelow.jpg'),
('James', 'Cameron', 1954, 'Canada', 'https://cdn.britannica.com/84/160284-050-695B1DE3/James-Cameron-2012.jpg'),
('Guillermo', 'del Toro', 1964, 'Mexico', 'https://example.com/pictures/guillermo-del-toro.jpg'),
('Ang', 'Lee', 1954, 'Taiwan', 'https://example.com/pictures/ang-lee.jpg'),
('Alejandro', 'González Iñárritu', 1963, 'Mexico', 'https://example.com/pictures/alejandro-gonzalez-inarritu.jpg'),
('David', 'Fincher', 1962, 'USA', 'https://example.com/pictures/david-fincher.jpg'),
('Ridley', 'Scott', 1937, 'UK', 'https://example.com/pictures/ridley-scott.jpg'),
('J.J.', 'Abrams', 1966, 'USA', 'https://example.com/pictures/jj-abrams.jpg'),
('Peter', 'Jackson', 1961, 'New Zealand', 'https://example.com/pictures/peter-jackson.jpg'),
('Alfonso', 'Cuarón', 1961, 'Mexico', 'https://example.com/pictures/alfonso-cuaron.jpg'),
('Bong', 'Joon-ho', 1969, 'South Korea', 'https://example.com/pictures/bong-joon-ho.jpg'),
('Denis', 'Villeneuve', 1967, 'Canada', 'https://example.com/pictures/denis-villeneuve.jpg'),
('Greta', 'Gerwig', 1983, 'USA', 'https://example.com/pictures/greta-gerwig.jpg'),
('Taika', 'Waititi', 1975, 'New Zealand', 'https://example.com/pictures/taika-waititi.jpg');

INSERT INTO act (idMovie, idPerson)
SELECT m.id, p.id
FROM (
  SELECT id FROM movies
  ORDER BY id ASC
  LIMIT 61,60  -- Supongamos que queremos 150 relaciones
) m
JOIN (
  SELECT id FROM people
  ORDER BY RAND()
  LIMIT 3  -- Supongamos la misma cantidad de personas seleccionadas al azar
) p;

INSERT INTO direct (idMovie, idPerson)
SELECT m.id, p.id
FROM (
  SELECT id FROM movies
  ORDER BY id ASC
  LIMIT 1,3  -- Supongamos que queremos 150 relaciones
) m
JOIN (
  SELECT id FROM people
  ORDER BY RAND()
  LIMIT 1  -- Supongamos la misma cantidad de personas seleccionadas al azar
) p;

SELECT * FROM users;

SELECT * FROM movies;

SELECT * FROM people;

SELECT COUNT(DISTINCT movies.id)
FROM act
JOIN movies ON act.idMovie = movies.id
JOIN people ON act.idPerson = people.id;

SELECT COUNT(DISTINCT movies.id)
FROM direct
JOIN movies ON direct.idMovie = movies.id
JOIN people ON direct.idPerson = people.id;

SELECT COUNT(DISTINCT movies.id)
FROM movies
LEFT JOIN act ON movies.id = act.idMovie
WHERE act.idMovie IS NULL;

SELECT COUNT(DISTINCT movies.id)
FROM movies
LEFT JOIN direct ON movies.id = direct.idMovie
WHERE direct.idMovie IS NULL;

SELECT COUNT(*) FROM users WHERE username = "user" AND password = "user";
SELECT COUNT(*) FROM users WHERE username = "1" AND password = "user";

INSERT INTO users (first_name, lastname, username, email, password) VALUE ("pepe","apellido","pepe","email@gmail.com","1234");


DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans(
      plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      plan VARCHAR(100) NOT NULL,
      price DECIMAL(5, 2) NOT NULL,
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.profiles(
      profile_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      username VARCHAR(300) NOT NULL,
      age INT NOT NULL,
      sign_date DATE NOT NULL,
      plan_id INT NOT NULL,
      FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
  ) ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.artist_profile(
      artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      artist VARCHAR(300) NOT NULL,
  ) ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.record_album(
      ra_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      album VARCHAR(300) NOT NULL,
      debut_album YEAR NOT NULL,
      artist_id INT NOT NULL,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist_profile(artist_id)
  ) ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.songs(
      song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      song VARCHAR(250) NOT NULL,
      song_duration INT NOT NULL,
      ra_id INT NOT NULL,
      FOREIGN KEY (ra_id) REFERENCES SpotifyClone.record_album(ra_id)
  ) ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.artist_fans(
      artist_id INT NOT NULL,
      profile_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (artist_id, profile_id),
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist_profile(artist_id),
      FOREIGN KEY (profile_id) REFERENCES SpotifyClone.profiles(profile_id)
  ) ENGINE = InnoDB;

     CREATE TABLE SpotifyClone.reproduction_history(
      profile_id INT NOT NULL,
      song_id INT NOT NULL,
      history_inf TIMESTAMP NOT NULL,
      CONSTRAINT PRIMARY KEY (profile_id, song_id),
      FOREIGN KEY (profile_id) REFERENCES SpotifyClone.profiles(profile_id),
      FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.plans (plan, price)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.profiles (username, age, sign_date, plan_id)
  VALUES
    ('Barbara Liskov', 82, '2019-10-20', 1),
    ('Robert Cecil Martin', 58, '2017-01-06', 1),
    ('Ada Lovelace', 37, '2017-12-30', 2),
    ('Martin Fowler', 46, '2017-01-17', 2),
    ('Sandi Metz', 58, '2018-04-29', 2),
    ('Paulo Freire', 19, '2018-02-14', 3),
    ('Bell Hooks', 26, '2018-01-05', 3),
    ('Christopher Alexander', 85, '2019-06-05', 4),
    ('Judith Butler', 45, '2020-05-13', 4),
    ('Jorge Amado', 58, '2017-02-17', 4);

  INSERT INTO SpotifyClone.artist_profile (artist)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

    INSERT INTO SpotifyClone.record_album (album, debut_album, artist_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

    INSERT INTO SpotifyClone.songs (song, song_duration, ra_id)
  VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Bard’s Song', 244, 7),
    ('Feeling Good', 100, 8);

      INSERT INTO SpotifyClone.artist_fans (artist_id, profile_id)
  VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 2),
    (3, 9),
    (4, 4),
    (5, 5),
    (6, 5),
    (6, 7);

      INSERT INTO SpotifyClone.reproduction_history (profile_id, song_id, history_inf)
  VALUES
    (1, 8, '2022-02-28 10:45:55'),
    (1, 2, '2020-05-02 05:30:35'),
    (1, 10, '2020-03-06 11:22:33'),
    (2, 10, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 10, '2020-11-13 16:55:13'),
    (3, 2, '2020-12-05 18:38:30'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (6, 7, '2017-01-24 00:31:17'),
    (6, 1, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 3, '2015-12-13 08:30:22');





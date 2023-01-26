DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans(
      plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      plan VARCHAR(100) NOT NULL,
      price DOUBLE NOT NULL,
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

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');
SELECT
  song AS 'nome_musica',
  CASE
    WHEN song = 'The Bard’s Song' THEN REPLACE (song, 'The Bard’s Song', 'The QA’s Song')

    WHEN song = 'O Medo de Amar é o Medo de Ser Livre' THEN REPLACE (song, 'O Medo de Amar é o Medo de Ser Livre', 'O Medo de Code Review é o Medo de Ser Livre')

    WHEN song = 'Como Nossos Pais' THEN REPLACE (song, 'Como Nossos Pais', 'Como Nossos Pull Requests')

    WHEN song = 'BREAK MY SOUL' THEN REPLACE (song, 'BREAK MY SOUL', 'BREAK MY CODE')

    WHEN song = 'ALIEN SUPERSTAR' THEN REPLACE (song, 'ALIEN SUPERSTAR', 'ALIEN SUPERDEV')

    END AS 'novo_nome'

FROM SpotifyClone.songs
WHERE song IN ('The Bard’s Song', 'O Medo de Amar é o Medo de Ser Livre', 'Como Nossos Pais', 'BREAK MY SOUL', 'ALIEN SUPERSTAR')
ORDER BY nome_musica DESC;

SELECT
  a.artist AS 'artista',
  r.album AS 'album',
  COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artist_profile AS a
  INNER JOIN SpotifyClone.record_album AS r ON a.artist_id = r.artist_id
  INNER JOIN SpotifyClone.artist_fans AS f ON a.artist_id = f.artist_id
GROUP BY a.artist, r.album ORDER BY seguidores DESC, a.artist, r.album;
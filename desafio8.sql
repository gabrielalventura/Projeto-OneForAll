SELECT
  n.artist AS 'artista',
  r.album AS 'album'
FROM SpotifyClone.artist_profile AS n
  INNER JOIN SpotifyClone.record_album AS r ON n.artist_id = r.artist_id
WHERE n.artist = 'Elis Regina'
ORDER BY album;
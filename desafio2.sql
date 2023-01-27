SELECT
    COUNT(DISTINCT s.song_id) AS 'cancoes',
    COUNT(DISTINCT ar.artist_id) AS 'artistas',
    COUNT(DISTINCT rer.ra_id) AS 'albuns'

FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.artist_profile AS ar
  INNER JOIN SpotifyClone.record_album AS rer;
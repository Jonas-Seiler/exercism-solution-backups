remove_duplicates <- function(playlist) {
  return(unique(playlist))
}

has_track <- function(playlist, track) {
  return(track %in% playlist)
}

add_tracks <- function(playlist, tracks) {
  return(unique(c(playlist, tracks)))
}

delete_tracks <- function(playlist, tracks) {
  return(playlist[!playlist %in% tracks])
}

find_common_tracks <- function(playlist_1, playlist_2) {
  return(intersect(playlist_1, playlist_2))
}

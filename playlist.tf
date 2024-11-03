resource "spotify_playlist" "Hollywood" {
    name = "Hollywood"
    tracks = ["2plbrEY59IikOBgBGLjaoe", "2tHwzyyOLoWSFqYNjeVMzj", "3hB9lDLyAClYVZivMMl20N" ]
}

data "spotify_search_track" "sabrina" {
    artist = "Sabrina Carpenter"
}

resource "spotify_playlist" "sabrinaCarpenter" {
    name = "Sabrina"
    tracks = [data.spotify_search_track.sabrina.tracks[0].id,
    data.spotify_search_track.sabrina.tracks[1].id
    ]
  
}
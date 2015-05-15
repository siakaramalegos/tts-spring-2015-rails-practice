json.array!(@songs) do |song|
  json.extract! song, :id, :artist_id, :name
  json.url song_url(song, format: :json)
end

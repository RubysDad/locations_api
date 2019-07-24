json.id @locations.ids
json.name @locations.name

json.current do
  json.location @locations.last.recordings
end

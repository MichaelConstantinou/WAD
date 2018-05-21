
crags = [
  { name: 'Stanage', image: 'stanage.jpg', location_lat: 53.34, location_lon: -1.64 },
  { name: 'Kilnsey', image: 'kilnsey.jpg', location_lat: 54.11, location_lon: -2.05 },
  { name: 'Roaches', image: 'roaches.jpg', location_lat: 53.17, location_lon: -2.01 },
  { name: 'Portland', image: 'portland.jpg', location_lat: 50.54, location_lon: -2.47 },
  { name: 'Tremadog', image: 'tremadog.jpg', location_lat: 52.94, location_lon: -4.15 },
  { name: 'Pembroke', image: 'pembroke.jpg', location_lat: 51.6, location_lon: -4.94 }
]

crags.each do |location|
  Crag.create!(location)
end


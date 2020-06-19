
Garden.destroy_all if Rails.env.development?

little_garden = Garden.create!(
  name: 'My little garden',
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other_garden = Garden.create!(
  name: 'My other garden',
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.create!(
  name: "Marta",
  species: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: little_garden
)

Plant.create!(
  name: "Philip",
  species: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: little_garden
)

Plant.create!(
  name: "Jeff",
  species: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: other_garden
)


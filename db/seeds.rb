# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    puts 'destroying studios'
    Studio.destroy_all
    puts "creating studios"

studios = [
    {
        name: 'Brewery Recording',
        address: '910 Grand St, Brooklyn, NY 11211',
        contact: ' (844) 717-2739',
        description: 'Chill',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRZPTYyJXqLhf8A5yzOGuoW2EwJx3cesT57yg&usqp=CAU',
        rating: 5,
        price: 40
    },
    {
        name: 'Melerose Recording',
        address: 'Brooklyn, NY',
        contact: 'melerose@gmail.com',
        description: 'vibrant',
        image: 'https://i.ytimg.com/vi/Nqlu6842YK0/maxresdefault.jpg',
        rating: 3,
        price: 24
    },
    {
        name: 'Cool Space',
        address: 'Harlem, NY',
        contact: 'cool_space@gmail.com',
        description: 'Chill',
        image: 'https://www.audio-issues.com/wp-content/uploads/2012/07/home-recording-studio.jpg',
        rating: 4,
        price: 35
    },
    {
        name: 'Area 51',
        address: 'Bronx, NY',
        contact: 'area@gmail.com',
        description: 'Chill',
        image: 'https://www.psneurope.com/wp-content/uploads/2020/02/Andy-Huckvale-home-studio-PSNEurope.jpg',
        rating: 3,
        price: 20
    },
    {
        name: 'Golden Studios',
        address: 'Queens, NY',
        contact: 'golden@gmail.com',
        description: 'Fun',
        image: 'https://pinnacle-digital.co.uk/wp-content/uploads/2018/05/Studio-monitors.jpg',
        rating: 5,
        price: 50
    },
]

studios.each do |studio|
    Studio.create!(studio)
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    puts 'destroying studios'
    Studio.destroy_all
    User.destroy_all
    Favorite.destroy_all
    Booking.destroy_all
    puts "creating studios"

    user = User.create(
    name: 'Taevon Jordan',
    email:"taevon@gmail.com",
    image: "https://cdn1.iconfinder.com/data/icons/avatars-vol-1/140/_african_american_man-512.png",
    password: "123")

studios = [
    {
        name: 'Brewery Recording',
        address: '910 Grand St, Brooklyn, NY 11211',
        contact: ' (844) 717-2739',
        description: 'Chill',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRZPTYyJXqLhf8A5yzOGuoW2EwJx3cesT57yg&usqp=CAU',
        rating: 5,
        price: 40,
        hours: 0,
        user_id: User.all.sample.id
    },
    {
        name: 'Melerose Recording',
        address: 'Brooklyn, NY',
        contact: 'melerose@gmail.com',
        description: 'vibrant',
        image: 'https://i.ytimg.com/vi/Nqlu6842YK0/maxresdefault.jpg',
        rating: 3,
        price: 24,
        hours: 0
    },
    {
        name: 'Cool Space',
        address: 'Harlem, NY',
        contact: 'cool_space@gmail.com',
        description: 'Chill',
        image: 'https://www.audio-issues.com/wp-content/uploads/2012/07/home-recording-studio.jpg',
        rating: 4,
        price: 35,
        hours: 0
    },
    {
        name: 'Area 51',
        address: 'Bronx, NY',
        contact: 'area@gmail.com',
        description: 'Chill',
        image: 'https://www.psneurope.com/wp-content/uploads/2020/02/Andy-Huckvale-home-studio-PSNEurope.jpg',
        rating: 3,
        price: 20,
        hours: 0
    },
    {
        name: 'Golden Studios',
        address: 'Queens, NY',
        contact: 'golden@gmail.com',
        description: 'Fun',
        image: 'https://pinnacle-digital.co.uk/wp-content/uploads/2018/05/Studio-monitors.jpg',
        rating: 5,
        price: 50,
        hours: 0
    },
    {
        name: 'Funkadelic Studios',
        address: 'Manhattan, NY',
        contact: 'funk@gmail.com',
        description: 'funky',
        image: 'https://images.squarespace-cdn.com/content/v1/58fa6ab446c3c493b8941bae/1497886163232-ZHN0F9N3XWD12LJ43UQK/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Funk_Rm10-12.jpg',
        rating: 5,
        price: 40,
        hours: 0
    },
    {
        name: 'Melerose Recording',
        address: 'Brooklyn, NY',
        contact: 'melerose@gmail.com',
        description: 'vibrant',
        image: 'https://i.ytimg.com/vi/Nqlu6842YK0/maxresdefault.jpg',
        rating: 3,
        price: 24,
        hours: 0
    },
    {
        name: 'Lush Music Rehearsal',
        address: 'Bronx, NY',
        contact: 'lush_space@gmail.com',
        description: 'Rehearsal space',
        image: 'https://lushrehearsalstudios1.simplybook.me/uploads/lushrehearsalstudios1/image_files/preview/63145c00680e9b0bebd0fe963c1cbd35.jpg',
        rating: 4,
        price: 35,
        hours: 0
    },
    {
        name: 'Flux Studios NYC',
        address: 'Manhattan, NY',
        contact: 'flux@gmail.com',
        description: 'Chill',
        image: 'https://static.wixstatic.com/media/d39b5f_afda67fd3a7440f6bd2e60b596901c94~mv2.jpg/v1/fill/w_1472,h_1094,al_c,q_85/d39b5f_afda67fd3a7440f6bd2e60b596901c94~mv2.webp',
        rating: 3,
        price: 80,
        hours: 0
    },
    {
        name: 'Threshold Recording Studios NYC',
        address: 'Mahattan, NY',
        contact: 'threshhold@gmail.com',
        description: 'Fun',
        image: 'https://musicindustryhowtoimages.s3.amazonaws.com/wp-content/uploads/2018/06/18070410/best-recording-studios.jpg',
        rating: 5,
        price: 50,
        hours: 0
    },
    {
        name: 'Music Works NYC',
        address: 'Mahattan, NY',
        contact: 'music@gmail.com',
        description: 'music works',
        image: 'https://images.squarespace-cdn.com/content/v1/53d418c4e4b0d066bb93e0fe/1552003593807-X5AUB6STI6T9CYTP9RTF/ke17ZwdGBToddI8pDm48kFTEgwhRQcX9r3XtU0e50sUUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcW7uEhC96WQdj-SwE5EpM0lAopPba9ZX3O0oeNTVSRxdHAmtcci_6bmVLoSDQq_pb/Studio+A1+Smaller.jpeg?format=1000w',
        rating: 6,
        price: 85,
        hours: 0
    },
]



studios.each do |studio|
    Studio.create!(studio)
end
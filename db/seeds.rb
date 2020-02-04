# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pod.destroy_all
response = RestClient.get('https://apodapi.herokuapp.com/api/?start_date=2019-01-01&end_date=2019-3-31&thumbs=true&image_thumbnail_size=480&image_thumbnail_size=240')
parsed_response = JSON.parse(response)

parsed_response.map do |image|

    Pod.create(
    title: image["title"],
    image_url: image["url"],
    pod_url: image["apod_site"],
    date: image["date"], 
    description: image["description"])

end 



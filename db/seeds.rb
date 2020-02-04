# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Launch.destroy_all
response = RestClient.get('https://launchlibrary.net/1.3/launch/')
parsed_response = JSON.parse(response)

parsed_response["launches"].map do |launch|

    pads = launch["location"]["pads"].map do |pad| 
        pad["name"]
    end

    Launch.create(name: 
    launch["name"], 
    date: launch["windowstart"], 
    agency: pads, 
    rocket: launch["rocket"]["name"])

end 



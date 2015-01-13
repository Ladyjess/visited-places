require("sinatra")
require("sinatra/reloader")
also_reload("/lib/**/*.rb")
require("./lib/place_list")


get("/") do
  @input = Places.all()
  erb(:form)
end

post("/input") do
  location = params.fetch("location")
  places = Places.new(location)
  places.save()
  erb(:success)
end

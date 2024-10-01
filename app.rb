require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  #@num_dice = 3
  #@num_sides = 6
end

get("/process_roll?dice=:num_dice&sides=:num_sides") do
  @num_dice = params.fetch("num_dice")
  @num_sides = params.fetch("num_sides")
  outcomes = []

  @num_dice.to_i.times do
    outcomes.push(rand(1..@num_sides))
  end

  erb(:process_roll)
end

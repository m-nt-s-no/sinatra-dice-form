require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home)
end

get("/process_roll") do
  @num_dice = params.fetch("dice")
  @num_sides = params.fetch("sides")
  @outcomes = []

  @num_dice.to_i.times do
    @outcomes.push(rand(1..@num_sides.to_i))
  end

  erb(:process_roll)
end

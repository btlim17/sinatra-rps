require "sinatra"
require "sinatra/reloader"
require "http"
require "better_errors"
require "binding_of_caller"

get("/") do
  erb(:home)
end

rps = ["rock", "paper", "scissors"]
# @they = rps.sample

#Play rock!
get("/rock") do
@they = rps.sample
 if @they == "rock"
   @outcome = "We tied!"
  elsif @they == "paper"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end
  erb(:rock)
end

#Play paper!
get("/paper") do
  @they = rps.sample
 if @they == "rock"
   @outcome = "We won!"
 elsif @they == "paper"
   @outcome = "We tied!"
  else
    @outcome = "We lost!"
  end
  erb(:paper)
end

#Play scissors!
get("/scissors") do
  @they = rps.sample
  if @they == "rock"
    @outcome = "We lost!"
  elsif @they == "paper"
    @outcome = "We won!"
  else
    @outcome = "We tied!"
  end
  erb(:scissors)
end

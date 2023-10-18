require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:nav)
  erb(:home, {:layout => :layout})
end

rps = ["rock", "paper", "scissors"]
@they = rps.sample

#Play rock!
get("/rock") do
  erb(:nav, {:layout=>:layout})
  if @they == "rock"
    @outcome = "We tied!"
  elsif @they == "paper"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end
  erb(:rock, {:layout => :layout})
  erb(:rules, {:layout=>:layout})
end

#Play paper!
get("/paper") do
  erb(:nav, {:layout=>:layout})
  if @they == "rock"
    @outcome = "We won!"
  elsif @they == "paper"
    @outcome = "We tied!"
  else
    @outcome = "We lost!"
  end
  erb(:paper, {:layout => :layout})
  erb(:rules, {:layout=>:layout})
end

#Play scissors!
get("/scissors") do
  erb(:nav, {:layout=>:layout})
  if @they == "rock"
    @outcome = "We lost!"
  elsif @they == "paper"
    @outcome = "We won!"
  else
    @outcome = "We tied!"
  end
  erb(:scissors, {:layout => :layout})
  erb(:rules, {:layout=>:layout})
end

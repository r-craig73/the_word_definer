require 'sinatra'
require 'sinatra/reloader'

get('/') do
  @description = "This application will let a user list and define words."
  erb(:input)
end

post('/output') do
  binding.pry
  erb(:output)
end

require('sinatra')
require('sinatra/reloader')
require('./lib/words')
require('pry')

get('/') do
  @description = "This application will let a user list and define words, one word at a time."
  @list = Words.all()
  erb(:input)
end

post('/output') do
  word_defintion = Words.new(params)
  word_defintion.save
  @list = Words.all()
  # binding.pry
  erb(:output)
end

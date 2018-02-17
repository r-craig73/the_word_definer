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
  word_definition = Words.new(params)
  word_definition.save
  @list = Words.all()
  # binding.pry
  erb(:output)
end

get('/output/:word') do
  @word_definition = Words.find(params[:word])
  @other_definition = @word_definition.new_definition_list
  erb(:definitions)
end

post('/output/:word') do
  @word_definition = Words.find(params[:word])
  
  erb(:definitions)
end

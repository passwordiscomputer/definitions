require('sinatra')
require('sinatra/reloader')
require('./lib/words')
require('./lib/definition')
also_reload('lib/**.*.rb')
require('pry')

get('/') do
  erb(:home)
end

post('/output') do
  word = Words.new(params)
  word.save
  @dictionary = Words.all()

  erb(:output)
end

get('/output/:word') do
  @word = Words.find(params[:word])
  @definition_list = @word.definition_list
  erb(:word)
end

post('/output/:word') do
  @word = Words.find(params[:word])
  definition = Definition.new(params)
  @word.add_definition(definition)
  @definition_list = @word.definition_list
  erb(:word)
end

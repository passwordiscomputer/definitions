require('sinatra')
require('sinatra/reloader')
require('./lib/words')
also_reload('lib/**.*.rb')
require('pry')

get('/') do
  erb(:home)
end

post('/output') do
  binding.pry
  word = Words.new(params)
  word.save
  @dictionary = Words.all()
  erb(:output)
end

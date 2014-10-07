## Index - Collection GET
get '/elephants' do
  @elephants = Elephant.all

  erb :elephants_index
end

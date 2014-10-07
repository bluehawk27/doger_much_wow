## Index - Collection GET
get '/elephants' do
  @elephants = Elephant.all

  erb :elephants_index
end

## Show - Element's GET
get '/elephants/:id' do
  @elephant = Elephant.find params[:id]

  erb :elephants_show
end

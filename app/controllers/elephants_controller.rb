## Index - Collection GET
get '/elephants' do
  @elephants = Elephant.all

  erb :elephants_index
end

# new elephant - Technically not in REST
get '/elephants/new' do
  erb :elephants_new
end

# Create the elephant in the Database - Elements POST
post '/elephants' do
  Elephant.create params

  redirect '/elephants'
end

## Show - Element's GET
get '/elephants/:id' do
  @elephant = Elephant.find params[:id]

  erb :elephants_show
end

# edit an elephant - Technically not in REST
# get "/elephants/:id/edit"

# update an elephant
# put "/elephants/:id" (Or patch)

# delete an elephant
delete "/elephants/:id" do
  elephant = Elephant.find params[:id]
  elephant.destroy
  redirect "/elephants"
end

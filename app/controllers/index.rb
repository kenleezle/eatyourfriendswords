get '/' do
  # Look in app/views/index.erb
  coll = settings.mongo_db.create_collection("users")
  @users = coll.find
  erb :index
end

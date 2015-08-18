require "sinatra"
require "sinatra/reloader" if development?


get "/" do
  erb :index, layout: :application
end

post "/submit_index" do
  erb :index, layout: :application
end

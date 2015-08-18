require "sinatra"
require "sinatra/reloader" if development?



get "/" do
  erb(:index, {layout: :application})
end

post "/submit_index" do
  @name  = params[:full_name]
  erb :index, layout: :application
end


post "/submit_num" do
  @num1 = params[:full_num1].to_i ||3
  @num2 = params[:full_num2].to_i ||5
  erb :index, layout: :application
end

require "sinatra"
# Adding the Sinatra reloder will enable us to change cide and see
# the effect of it right away without having to restart the server
# http://www.sinatra.com/contrib/reloader
require "sinatra/reloader"
# when er recieve a request that has a GET HTTP request
# with a URL of "/"
# Sinatra will execute the code in here
get "/" do
  #"Hello World"
  # This will look for a template called index.erb inside the folder 'views'
  erb :index, layout: :application
end

get "/contact" do
  erb :contact, layout: :application
end

post "/submit_contact" do
  # params is a Hash object that is given to us by Sinatra
  name = params[:full_name]
  "Thanks #{name} for contacting us."
end

get "/temp" do
  erb :temp, layout: :application
end

post "/submit_temp" do
  temperature_in_c = params[:submit_temp].to_f
  temperature_in_f = temperature_in_c * 9 / 5 + 32
  temperature_in_f.to_s
  "The converted temperature of #{temperature_in_f} "
end

get "/survey" do
  erb :survey, layout: :application
end

post "/survey" do

  work_best         = params["work-best"]
  interested_in     = params["interested_in"]
  consider_yourself = params["consider_yourself"]

  if work-best == "deadline" && interested_in == "ideas" && consider_yourself == "rational"
    @type = "Rational"
  end
  "Thank you for submiting the survey: #{params.to_s}"
end

get "/hello" do
  "Hi There!"
end
